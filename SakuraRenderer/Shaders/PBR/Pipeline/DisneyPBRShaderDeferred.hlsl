// Saeru Hikari

//#define SAKURA_ENABLE_ANISO

#include "ScreenQuadVertex.hlsl"

#include "DeferredRegisters.hlsl"
#include "PassCommon.hlsl"

#include "Utils.hlsl"

//Include structures and functions for lighting
#include "DisneyBRDF.hlsl"
#include "Samplers.hlsl"
#include "ShadingUtils.hlsl"

#define PREFILTER_MIP_LEVEL 4

float3 PrefilteredColor(float3 viewDir, float3 normal, float roughness)
{
    float roughnessLevel = roughness * PREFILTER_MIP_LEVEL;
    int fl = floor(roughnessLevel) + 1;
    int cl = ceil(roughnessLevel) + 1;
    float3 R = reflect(-viewDir, normal);
    float3 flSample = gIBLCubeMap[fl].Sample(gsamLinearWrap, R).rgb;
    float3 clSample = gIBLCubeMap[cl].Sample(gsamLinearWrap, R).rgb;
    return lerp(flSample, clSample, (roughnessLevel - fl));
}


float4 PS(VertexOut pin) : SV_Target
{
    float4 Albedo = gGeometryAlbedo.Sample(gsamLinearWrap, pin.TexC);
    float4 WNormal = gGeometryNormal.Sample(gsamLinearWrap, pin.TexC);
    float3 WPos = gGeometryWPos.Sample(gsamLinearWrap, pin.TexC).rgb;
    float4 RMO = gGeometryRMO.Sample(gsamLinearWrap, pin.TexC);
    Material mat;
    mat.BaseColor = Albedo.rgb;
    mat.Opacity = Albedo.a;
    mat.Metallic = RMO.g;
    mat.Roughness = RMO.r;
    //
    mat.SpecularTint = 0;
    mat.SpecularStrength = 1;
    mat.SpecularColor = 0;
    mat.Clearcoat = 0;
    mat.ClearcoarGloss = 0;
    mat.Sheen = 0;
    mat.SheenTint = 0;
   
    float3 V = normalize(gEyePosW - WPos.rgb);
    float3 N = normalize(WNormal.rgb);
    float3 L = -gLights[0].Direction;

    
    float3 Disney = 0;
    for(int i = 0; i < 3; i++)
    {
        L = -gLights[i].Direction;
        Disney += PI * gLights[i].Strength  
         * DisneyBRDF(L, V, N, mat);
    }

    float AO = RMO.b;
    // * WNormal.a
    float3 prefilteredColor = PrefilteredColor(V, N, mat.Roughness);
    float3 ambientC;
    float4 brdfLut;
    #define BRDF_LUT_MULTICAST
#if defined(BRDF_LUT_CLASSIC)
    brdfLut = gBRDFLUT.Sample(gsamLinearWrap, float2(max(dot(N, V), 0.0f), mat.Roughness));
    ambientC = AO *
    AmbientBRDF(gIBLCubeMap[0].SampleLevel(gsamLinearWrap, N, 0).xyz,
    prefilteredColor, brdfLut.xyz,
    V, N, mat).xyz;
#elif defined(BRDF_LUT_MULTICAST)
    brdfLut = gBRDFLUT.Sample(gsamLinearWrap, float2(max(dot(N, V), 0.0f), mat.Roughness));
    ambientC = AO *
    AmbientBRDF_MultiScattering(gIBLCubeMap[0].SampleLevel(gsamLinearWrap, N, 0).xyz,
    prefilteredColor, brdfLut,
    V, N, mat).xyz;
#endif
    
    //return ambientC.xyzz;
    float3 FinalColor = Disney.xyz + ambientC.xyz;
    FinalColor = ACESToneMapping(FinalColor, 1.f);
    return float4(FinalColor, 1.f);
}


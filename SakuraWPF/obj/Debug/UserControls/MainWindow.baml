   M S B A M L   `   `   `  ����D  @SakuraWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SakuraWPF	SakuraWPF  5   	   '    !SakuraWPF.UserControls.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SakuraWPF     5   	   S OMaterialDesignThemes.Wpf, Version=1.0.1.0, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   i eXceed.Wpf.AvalonDock.Themes.VS2010, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4g cXceed.Wpf.AvalonDock.Themes.Aero, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4h	 dXceed.Wpf.AvalonDock.Themes.Metro, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4[
 WXceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4?avalon,http://schemas.xceed.com/wpf/xaml/avalondock   	 
 5   	   X TXceed.Wpf.Toolkit, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5	   	     � Title$3  -SAKURA Renderer -DX12 Version -Project 'Test'��5   	   $	��860��6?   $
��1260��6L   $y�Visible=�6Y    J� SnapsToDevicePixels .  � WindowStyle$
 None=�5   	   ��5   	   Z� .��5      � .+�5   
   � ���	#FF232323$��0,90,0,0q�6&   .+�5      ) 
 #Xceed.Wpf.AvalonDock.DockingManager  ���	#FF232323���	#FF609EE9   Theme 5      , 	 &Xceed.Wpf.AvalonDock.Themes.MetroTheme  5         Layout. 5      , 
 &Xceed.Wpf.AvalonDock.Layout.LayoutRoot     	RootPanel. 5      - 
 'Xceed.Wpf.AvalonDock.Layout.LayoutPanel     Orientation$ 
Horizontal=�6)   � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   DockMinWidth$	 280Q�6B   � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 5        $ Vertical=�6-   	   	DockWidth$		 280 �6D   $	 280Q�6T   . 5      ; 
 5Xceed.Wpf.AvalonDock.Layout.LayoutAnchorablePaneGroup  � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutAnchorablePane, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]
   Children.
 5   "   6	 
 0Xceed.Wpf.AvalonDock.Layout.LayoutAnchorablePane	  -   5        
panelLeftU���
 
 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]] 
  Children. 5   &   2 
 ,Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable  -   5        SceneViewDock��   CanAutoHide .     CanHide .  5   i   5   #   5        5      .
 5    "   	  -   5        
panelLeftD��. 5!   &     -   5        DetailsDock��5!   >   5"   #   5#      5$        5'      $ Vertical=�6-   . 5(      4 
 .Xceed.Wpf.AvalonDock.Layout.LayoutDocumentPane  -   5        panelTop��   
ShowHeader .  � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutContent, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 5)   "   0 
 *Xceed.Wpf.AvalonDock.Layout.LayoutDocument  / 
 )Xceed.Wpf.AvalonDock.Layout.LayoutContent   CanClose .     CanFloat .     Content. 5*   &   7  1System.Windows.Forms.Integration.WindowsFormsHost  -   5          Name$ viewportHost��5*   7   $��0q�6M   5+   #   5,        5/      � 
 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutAnchorablePane, Xceed.Wpf.AvalonDock, Version=3.7.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   DockMinHeight$	 200Q�6?      FloatingHeight$	 200Q�6S   .
 50   "   	  -   5        panelBottom��. 51   &     -   5        ContentDock��51   >   52   #   53      55      56      57      58      5;      � 5<   
   $��0��6   ���	#FF232323 J� RenderTransformOrigin$ 0.504,0.339&�63   $��90��6W   $	��Top=�6c    � RowDefinitions 5=      �� 5>      $	��26* �6    �� 5?      $	��21* �6    �� 5@      $	��35* �6    .+�5B      � -	   5         �Name$ TitleBar��5B   7   $��0��6   ���	#FF232323 � ColumnDefinitions 5C      �� 5D      $��1175* �6'   �� 5E      $	��77* �6'   .+�5G      �� -
   5         ��Name$ 	TitleText��5G   c   $
��Left=�6   $
��Wrap=�67   ���	#FFD1D1D1$,��&SAKURA Render -DX12 GM -Project Name: ��5H      $��Center=�6J   $��26��5I      $	��419��6(   $��25,0,0,0q�64   $��Microsoft YaHei UI Light)�6F   $��14(�6l   �� 5J      
���   �$��1q�6-   $
��Left=�6A   $��25��6\   $	��Top=�6h   $��25��6�   ���	#FF609EE9$��0,0,0,-2.222q�6�   �� 5K      $��	444,0,0,0q�6    �� TextWrapping$
 Wrap=�6-   $��	'Default'��6A   $��0q�6R   $��14(�5L   0   $
��Left=�6>   ���	#FFD1D1D1$��Microsoft YaHei UI Light)�5M      $
��Thin"�6@   $��Stretch=�6R   $��26��6w   $��Center=�6�   $��56��6�   ��5L      Z� 5M   �   �� 5N      -   5         ��Name$ 
ExitButton��5N   i    � ToolTip$
 Icon��6C   
���\\��$��Right=�5O      $	��Top=�65   $��25��6M   $��Center=�6o   $��RightToLeft=�6�   $��1��6�   $��0q�6�   $��30��6�   $��0q�6�   ��5N      0  *MaterialDesignThemes.Wpf.PackIconExtension  *clear+��5O   Y   Z� 6�   �� 5P      -   5        $ 	MaxButton��5P   e   $ Maximum��6A   
�������$��Right=�5Q      $	��Top=�61   $��25��6I   $��Center=�6k   $��RightToLeft=�6�   $ -0.972,0.673&�6�   $��0,0,30,1q�6�   $��30��6�   $��0q�6�   $��1��6�   $��Center=�6	  $��0q�6+  ��5P        *tab+��5Q   U   Z� 6+  �� 5R      -   5        $ 	MinButton��5R   e   $
 Icon��6D   
�������$��Right=�5S      $	��Top=�61   $��25��6I   $��Center=�6k   $��RightToLeft=�6�   $��0,0,60,0q�6�   $��30��6�   $��0q�6�   $��Center=�6�   $��2��6�   $��0q�6
  ��5R        *remove+��5S   U   Z� 6
  5T      � 5U      $��1��6   ���	#FF232323 5V      �� 5W      $
��323* �6'   �� 5X      $	��95* �6'   �� 5Y      $
��417* �6'   �� 5Z      $
��417* �6'   .+�5\      o� -   5         o�Name$
 File��5\   a   $
��Left=�6   $��24��62   $	��Top=�6>   $��50��6V   $��0,0,0,-2q�6p   .@�5]      m� $
��File��6   $��24��6/   $��50��6;   $��Center=�6F   $��Center=�6j   $��Center=�6�   ���	#FF969595$��
14,0,-12,0q�6�   ���	#FF232323 J� OpacityMask
 �   ����	#FF232323$��Microsoft YaHei UI Light)�6  .@�5^      m� -   5        $��OpenProject��5^   #   69   m� 5_      $��Import��6#   m� 5`      $��Export��6#   m� 5a      $
��Save��6#   5b      5c      o� 5d      -   5        $
 Edit��5d   a   $
��Left=�6   $��24��62   $	��Top=�6>   $��50��6V   $��	50,0,0,-2q�6p   .@�5e      m� $
��Edit��6   $��24��6/   $��50��6;   $��Center=�6F   $��Center=�6j   $��Center=�6�   ���	#FFAAA9A9$��
14,0,-12,0q�6�   ���	#FF232323
 �   ����	#FF232323$��Microsoft YaHei UI Light)�6  .@�5f      m� $��OpenProject��6#   m� 5g      $��Import��6#   m� 5h      $��Export��6#   m� 5i      $
��Save��6#   5j      5k      5l      � 5m      $��2��6   ���	#FF232323 5n      �� 5o      �� 5p      �� 5q      .+�5s      �� ���	#FF232323$	��5,3q�61   $
��Left=�6G   $��28��6b   $��Center=�5t      $��105.967��64   ���	#FF646464  �� CornerRadius$  5��6[   $��0,3.663,0,3.337q�6l   ._�5u      � $��Center=�6    5v      �� 5w      �� 5x      �� 5y      �� 5z      .+�5|      �� -   5        $ cursor��5|   !   $
 Icon��6[   ���	#FF609EE9$��28��5}   !   $��Center=�6-   $��Center=�6J   $��28��6e   $��0q�6p   ���	#FF646464
 �����$��0q�5~   K   $��0q�6W   ��5|   1     *mouse+��5~   5   Z� 6W   �� 5      -   5        $
 move��5   !   $
 Icon��6Y   ���	#FF609EE9$��28��5�      $��Center=�6)   $��Center=�6F   $��28��6a   $	��0,1q�6l   ���	#FF646464
 �����$��0q�5�   1   $��0q�6=   $��1��6Q   ��5   /     *games+��5�   a   Z� �� 5�      -   5        $ rotate��5�   !   $
 Icon��6\   ���	#FF609EE9$��28��5�      $��Center=�6)   $��Center=�6F   $��28��6a   $��0q�6l   ���	#FF646464
 �����$��0q�5�   G   $��0q�6S   $��2��6g   ��5�   1     *replay+��5�   1   Z� 6g   �� 5�      -   5        $ scale��5�   !   $
 Icon��6Z   ���	#FF609EE9$��28��5�      $��Center=�6)   $��Center=�6F   $��28��6a   $	��0,1q�6l   ���	#FF646464
 �����$��0q�5�   G   $��0q�6S   $��3��6g   ��5�   0     *arrow+��5�   1   Z� 6g   5�      5�      5�      5�      5�      5�      
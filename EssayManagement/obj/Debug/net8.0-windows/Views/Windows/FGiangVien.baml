   M S B A M L   `   `   `  ����J  FEssayManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:EssayManagement.Views.User_Control"EssayManagement.Views.User_Control  5   	   a5clr-namespace:EssayManagement.Views.User_Control.UCGV'EssayManagement.Views.User_Control.UCGV  5   	   4    .EssayManagement.Views.GiangVienForm.FGiangVien   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   S OHandyControl, Version=3.4.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5   	   9uc0clr-namespace:EssayManagement.Views.User_Control  5   	   ?uc15clr-namespace:EssayManagement.Views.User_Control.UCGV  5   	   -   5          �Name$  
FGiangvien��5   	    � Title$, &Quản Lý Luận Văn - Giảng viên��5
   	   $	��600��6/   $
��1040��6<    � WindowStartupLocation$ CenterScreen=�6I    � WindowStyle$
 None=�6n    � AllowsTransparency$
 True��6�   
������ .��5      �� 
������� �� CornerRadius$ 20��6    $	��600��62   $
��1040��6?   ._�5   
   �  � ColumnDefinitions 5      �� 5      $��1* �6#   60   �� 5      $
��3.5* �6#   62   .+�5      � $��0��6   .+�5      �� .+�5      �� $��QUẢN LÝ LUẬN VĂN��6     �� TextAlignment$ Center=�68   $��	0 30 0 20q�6O   $��25(�6b   $$��Bahnschrift SemiBold Condensed)�6p   ���	#FF326CF3$
��Bold"�6�   6�   $  HandyControl.Controls.SideMenu  5      $��1q�6"   $
��auto��66   $��20 20 20 20q�6C   $	��300��6X      SideMenuItemBaseStyle.  (HandyControl.Controls.SimpleItemsControl   ItemContainerStyle# [  6e   
������ ,  &HandyControl.Interactivity.Interaction	   Triggers	 5      -  'HandyControl.Interactivity.EventTrigger  5      
   	EventName$
 SelectionChanged��6.   ,  &HandyControl.Interactivity.TriggerBase   Actions. 5   "   /  )HandyControl.Interactivity.EventToCommand     PassEventArgsToCommand$
 True��64   5         Items. 5      (  "HandyControl.Controls.SideMenuItem  -   5          Name$ sdmTrangChu��5   *   6  0HandyControl.Controls.HeaderedSimpleItemsControl   Header$ Trang chủ��6?      
IsSelected$
 True��6R      Icon 5      �� 5   "   $��24��6(   $��24��63   $'��!/Views/Windows/icons8-home-48.png��6?   5         5!      -   5        $ sdmDeTai��5!   *   $ 
Đề Tài��6<    5"      �� 5#   "   $��24��6(   $'��!/Views/Windows/icons8-list-48.png��63   5%        5&      -   5        $ 
sdmLuanVan��5&   *   $ Luận văn��6>    5'      �� 5(   "   $��24��6(   $��24��63   $+��%/Views/Windows/icons8-document-24.png��6?   5*        5+      -   5        $ 
sdmThongKe��5+   *   $ Thống kê��6>    5,      �� 5-   "   $��24��6(   $��24��63   $(��"/Views/Windows/icons8-graph-48.png��6?   5/        50      -   5        $ sdmChamDiem��50   *   $ Chấm điểm��6?    51      �� 52   "   $��24��6(   $��24��63   $1��+/Views/Windows/icons8-hundred-points-48.png��6?   54      55      �� 56      -   5         ��Name$ btnDangXuat��56      $��Bottom=�62   $��40��6M   $
��auto��6Y   $��0q�6f   $��0 120q�6z   .��57      ��  �� Orientation$ 
Horizontal=�6%   .+�58      �� $)��#/Views/Windows/icons8-logout-48.png��6$   6S   �� 59      $��Đăng xuất��6(   $��12(�69   $��Center=�6G   $
��10 0q�6b   $��Bahnschrift)�6p   6�   5:      5;      5<      5=      � 5?      $��1��6    J� RenderTransformOrigin$ 0.565,0.116&�6#    � RowDefinitions 5@      �� 5A      $��1* �6$   62   �� 5B      $��8* �6$   62   .+�5E      � -   5         �Name$ grHeader��5E      $��0��6)   .+�5F      �� $��1 0 0 0q�6     BorderBrush#���  67   ._�5G      �� $ 
Horizontal=�6%   $��RightToLeft=�6>   .+�5H      �� -	   5         ��Name$ txbTen��5H   (   $�� ��68   $ Center=�6@   $��Center=�6W   $��30 0 5 0q�6r   $��Bahnschrift)�6�   6�   �� 5I      -
   5        $ 
btnDaiDien��5I   %   $��40��69   $��40��6E   $��0q�6P    � Cursor$
 Hand��6]   ��5J   "   �� 5K   &    �� Color$ 	#FFE0E0E0��66    �� Opacity$ 0Q�6H   .��5M   "   �� -   5         ��Name$ 
imgDaiDien��5M   (   $)��#/Views/Windows/icons8-person-64.png��6<   6k   5N      %	  HandyControl.Controls.SearchBar	  5O      -   5         	 Name$ sbTimKiemGV��5O   +   $��Bahnschrift)�6@   $	��250��6Y   '
  !HandyControl.Controls.InfoElement 
  Placeholder$ Tìm kiếm��6e     SearchBarExtend#��[ 6�   $��Right=�6�   $��50,10,30,10q�6�   6�   5P      5Q      5R      � 5T      $��1��6   .+�5U      �� $��1 1 0 0q�6   #���  67   ._�5V      '  !HandyControl.Controls.SimplePanel  -   5          Name$ MainPnl��5V   )   .+�5W      3   -EssayManagement.Views.User_Control.UCTrangChu  -   5          Name$ 
ucTrangChu��5W   ,   $y�Visible=�6@   6W   9   3EssayManagement.Views.User_Control.UCDeTaiGiangVien  5X      -   5           Name$  ucDeTai��5X   2   $y�	Collapsed=�6C   6\   ;   5EssayManagement.Views.User_Control.UCLuanVanGiangVien  5Y      -   5        !  Name$! 	ucLuanVan��5Y   4   $y�	Collapsed=�6G   6`   2   ,EssayManagement.Views.User_Control.UCThongKe  5Z      -   5        "  Name$" 	ucThongKe��5Z   +   $y�	Collapsed=�6>   6W   8   2EssayManagement.Views.User_Control.UCGV.UCChamDiem  5[      -   5        #  Name$# 
ucChamDiem��5[   -   $y�	Collapsed=�6A   6Z   5\      5]      5^      &   System.Windows.Controls.DataGrid  5_      -   5        $  Name$$ dgvTimKiemGV��5_      %   AutoGenerateColumns$% False��61   $��2��6M   $��311,59,252,0q�6^   $��12(�6t   $	��246��6�   &   
IsReadOnly$
& True��6�   $	��Top=�6�   5`      5a      5b      5c      
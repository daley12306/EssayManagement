   M S B A M L   `   `   `  ����J  FEssayManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:EssayManagement.Views.User_Control"EssayManagement.Views.User_Control  5      :    4EssayManagement.Views.User_Control.UCLuanVanSinhVien   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      S OHandyControl, Version=3.4.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5      <local0clr-namespace:EssayManagement.Views.User_Control  5      .��5
      �� 
�������  �� CornerRadius$  20��6    ._�5   
   �  � RowDefinitions 5      �� 5      $��8* �6    6.   �� 5      $��1* �6    6.   .+�5      �� $	��Top=�6   $	��520��61   $��0,0,0,0q�6>   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgvDeTai��5         HeadersVisibility$ Column=�6-      RowHeaderWidth$ 60Q�6H      AutoGenerateColumns$ False��6\   $
��Bold"�6�      
IsReadOnly$
 True��6�   $��10,10,10,10q�6�   $��Bahnschrift)�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6-   	   Header$	 Mã đề tài��6U   
   
FontWeight$
 Normal"�6h   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *	MaDeTai+6h   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 1* 61   $	 Tên đề tài��6<      CellTemplate 5      �� 5   "   .R�5   &   ��  ��Name$ txtTenDeTai��60   $
��Wrap=�6_   $��Normal"�6s   
���   ���6E   �� *
TenDeTai+6�   5   #   5        5      $	 100 6-   $	 Lĩnh Vực��6U   $
 Normal"�6g    69   �� *	LinhVuc+6g     5      $	 100 61   $	 Trạng thái��6=    5      �� 5   "   .R�5   &   �� $ txtTrangThai��60   $
��Wrap=�6a   $��Normal"�6u   
���   ���6F   �� *	TrangThai+6�   5    #   5"        5#      	 5$      �� 5%   "   -   5         ��Name$ btnLoad��5%   )      RotateRightGeometry'  !HandyControl.Controls.IconElement   Geometry# [  6:   $��Right=�6y   $	��Top=�6�   $��60��6�   $
��Bold"�6�   6�   5'      5)      5*      � 5+      $��1��6   .+�5,      )  #HandyControl.Controls.CheckComboBox  -   5          Name$ ccbLocGV��5,   #   $	��380��65   $	��200��6e   (	  "HandyControl.Controls.TitleElement 	  
TitleWidth$ 50 �6q    	  TitlePlacement$
 Left=�6�   '
  !HandyControl.Controls.InfoElement 
  Placeholder$ Lĩnh vực��6�    	  Title$ Lọc��6�     CheckComboBoxPlus#��[ 6�   $��	20,0,0,20q�6!  $��Bottom=�64  $
��Left=�6O  ��6D   �� *
DataList+.@�5-      -  'HandyControl.Controls.CheckComboBoxItem  $��Website��6+     5.      $��Application��6+     5/      $
��Data��6+     50      $��AI��6+     51      $��Security��6+     52      $��Architecture��6+     53      $��Cloud��6+   54      �� 55      -   5        $ btnChonDeTai��55        ButtonPrimary#��[ 6/   $��Chọn đề tài��6V   $��Bottom=�6l   $��Right=�6�   $��
0,0,120,20q�6�   $
��Bold"�6�   6�   �� 56      -   5        $ btnThemDeTai��56      #��[ 6/   $��Thêm đề tài��6V   $��Bottom=�6l   $��Right=�6�   $��	0,0,20,20q�6�   $
��Bold"�6�   6�   57      58      59      5:      
   M S B A M L   `   `   `  ����J  FEssayManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:EssayManagement.Views.User_Control.UCGV'EssayManagement.Views.User_Control.UCGV  5      <    6EssayManagement.Views.User_Control.UCGV.UCDuyetLuanVan   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      S OHandyControl, Version=3.4.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5      Alocal5clr-namespace:EssayManagement.Views.User_Control.UCGV  5      .��5
      �� 
�������  �� CornerRadius$  20��6    $	��450��62   $	��800��6?   ._�5   
   �  � RowDefinitions 5      �� 5      $��4* �6    6.   �� 5      $��4* �6    6.   �� 5      $��1* �6    6.   .+�5      � $��0��6    � ColumnDefinitions 5      �� 5      $
��443* �6'   �� 5      $
��357* �6'   .+�5      �� -   5         ��Name$ btnExit��5      $��22��6*   $��22��65   $��hc:ControlCommands.Close��6A      
ButtonIcon#��[  6d     PrimaryBrush#���  6�     ErrorGeometry'  !HandyControl.Controls.IconElement   Geometry# [ 6�   $��0q�6�   $��Right=�6�   $	��Top=�6  $��	0,10,10,0q�6-  $��1��6@  ]� 5      $��2��6   �� 5      -   5         ��Name$ txtMaYeuCau��5      $��Bahnschrift)�6/     TextBoxExtend#��[ 6H   (  "HandyControl.Controls.TitleElement   TitlePlacement$
 Left=�6o      
TitleWidth$ 85 �6�      Title$ Mã yêu cầu��6�   $��Center=�6�   $��	19,0,54,0q�6�   $��30��6  $	��370��6  	 �� 
IsReadOnly$
	 True��6  �� 5      -   5        $ 
txtMaDeTai��5      $��Bahnschrift)�6.   #��[ 6G   $
 Left=�6n   $ 85 �6�   $ Mã đề tài��6�   $	��Top=�6�   $��
19,47,54,0q�6�   $��30��6�   $	��370��6  $
	 True��6  �� 5      -   5        $ txtTenDeTai��5      $��Bahnschrift)�6/   #��[ 6H   $
 Left=�6o   $ 85 �6�   $ Tên đề tài��6�   $	��Top=�6�   $��19,124,54,0q�6�   $��30��6  $	��370��6  $
	 True��6  �� 5      -   5        $ txtTrangThai��5      $��Bahnschrift)�60   #��[ 6I   $
 Left=�6p   $ 85 �6�   $ Trạng thái��6�   $	��Top=�6�   $��19,160,54,0q�6�   $��30��6  $	��370��6  
 �� TextWrapping$
 WrapWithOverflow=�6   J� RenderTransformOrigin$ 0.124,0.032&�6;  $
	 True��6_  �� 5      -   5        $ txtNgayDangKy��5      $��Bahnschrift)�61   #��[ 6J   $
 Left=�6q   $ 85 �6�   $ Ngày đăng ký��6�   $	��Top=�6�   $��409,124,21,0q�6�   $��30��6  $	��370��6  $
 WrapWithOverflow=�6  $ 0.124,0.032&�6?  $
	 True��6c  $��2��6u  �� 5      -   5        $ txtNgayKetThuc��5      $��Bahnschrift)�62   #��[ 6K   $
 Left=�6r   $ 85 �6�   $ Ngày kết thúc��6�   $	��Top=�6�   $��409,163,21,0q�6�   $��30��6	  $	��370��6  $
 WrapWithOverflow=�6!  $ 0.124,0.032&�6A  $
	 True��6e  $��2��6w  �� 5      -   5         ��Name$ 	cbLinhVuc��5      $��Bahnschrift)�6.    �� SelectedIndex$ 0��6g   $ Lĩnh vực��6y     ComboBoxExtend#��[ 6�    �� Text$ Chọn��6�   $
 Left=�6�   $ 85 �6�   $��Center=�6  $��
409,0,21,0q�6/  $��32��6C  $	��370��6O  $��2��6[  ��6G   �� *	LinhVuc+6[  �� 5       -	   5        $ txtCongNghe��5    �   $	��Top=�6   $��Bahnschrift)�62   $ 85 �6K   $
 Left=�6k   $ Công nghệ��6�   #��[ 6�   $��409,47,21,0q�6�   $
	 True��6  $��30��6  $	��370��6"  $��2��6.  5!      � 5"      $��1��6   .+�5#      �� -
   5        $ txtMoTa��5#      $��Bahnschrift)�6+   #��[ 6D   $
 Left=�6k   '  !HandyControl.Controls.InfoElement   Placeholder$ Mô tả��6�   $��20,10,241,113q�6�   $

 Wrap=�6�   $ 0.124,0.032&�6�   $	��Top=�6  $
	 True��6"  �� 5$      -   5        $ 	txtYeuCau��5$      $��Bahnschrift)�6-   #��[ 6F   $
 Left=�6m   $ 
Yêu cầu��6�   $��20,100,241,10q�6�   $
 WrapWithOverflow=�6�   $ 0.124,0.032&�6�   $��90��6  $	��Top=�6  �� 5%      -   5        $ txtSVThamGia��5%      $��Bahnschrift)�60   #��[ 6I   $
 Left=�6p   $ Sinh viên tham gia��6�   $��585,10,10,10q�6�   $
 WrapWithOverflow=�6�   $ 0.124,0.032&�6�   $	��Top=�6   5&      � 5'      $��2��6   .+�5(      �� -   5        $ 
txtNhanXet��5(      $��Bahnschrift)�6.   #��[ 6G   $
 Left=�6n   $ 80 �6�   $ Nhận xét��6�   $	��Top=�6�   $��
20,0,243,0q�6�   $��30��6�   $
 WrapWithOverflow=�6
  $ 0.124,0.032&�6*  �� 5)      -   5        $ 	btnTuChoi��5)        ButtonDanger#��[ 6,   $��Từ chối��6R   $��Right=�6d   $��	0,0,20,20q�6�   $��Bottom=�6�   $��80��6�   $
��Bold"�6�   6�   �� 5*      -   5        $ btnChapNhan��5*        ButtonSuccess#��[ 6.   $��Chấp nhận��6U   $��
586,0,0,20q�6i   $��Bottom=�6}   $��80��6�   $
��Left=�6�   $
��Bold"�6�   6�   5+      5,      5-      5.      
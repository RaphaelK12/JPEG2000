   M S B A M L   `   `   `  ���� P  LJPEG2000_MI_Interface, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:JPEG2000_MI_InterfaceJPEG2000_MI_Interface  S.clr-namespace:JPEG2000_MI_Interface.Properties JPEG2000_MI_Interface.Properties  &     JPEG2000_MI_Interface.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5local#clr-namespace:JPEG2000_MI_Interface     E
Properties.clr-namespace:JPEG2000_MI_Interface.Properties       � Title$/  )JPEG2000编解码器（微观组制作）��$	��591��$	��774��$��16(� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=�.��� $��0,0,0,-1q� � ColumnDefinitions �� $
��295* ��� $
��471* �.+��� -    ��Name$ FileInputGrid��$��
25,10,20,0q� �� Orientation$ 
Horizontal=�$	��Top=�$��2��$��55.72��.+��� -    ��Name$ FileNameLabel��$	��540�����	#FFF50606$��3q�$��22(�$��Center=�
������ $��Adobe Garamond Pro Bold)�$��无输入文件���� -    ��Name$ OpenFileButton��$��打开图片��$��33.75��$��50,10.985,0,10.985q�$��95���� -    ��Name$ groupBox_FileFormat��$��输出文件格式��$��25,70.72,130,0q�$��18(�$	��150��$	��Top=�$��3q�
���   �$��Adobe Caslon Pro Bold)�{�.  ���� 	 �� Color#	 � ��.���� -   $ FileFormatPanel��$��4,10,4,7.76q�.+�	� -   
 	�Name$
 
J2K_Button��$	��j2k��$��33.76��$
��10,0q�$��Center=�$��Center=�$��18(� 	� 	GroupName$ FileFormatGroup�� � Cursor$
 Hand��	� -   $
 
J2C_Button��$	��j2c��$��33.76��$
��10,0q�$��Center=�$��Center=�$��18(�$ FileFormatGroup��$
 Hand��	� -   $
 
JP2_Button��$	��jp2��$��33.76��$
��10,0q�$��Center=�$��Center=�$��18(�$ FileFormatGroup��$
 Hand�� d� 	IsChecked$
 TrueY��� -	   $! groupBox_CompressionProfile��$��压缩策略��$��180,70.72,-100,0q�$��18(�$	��150��$	��Top=�$
��Left=�$	��215��$��3q�$��Adobe Caslon Pro Bold)�{�.  ���� #	 � ��.���� -
   $ CompressionProfilePanel��$��4,10,-2,5.86q�.+�	� -   $
 Reversible_Button��$��无损压缩��$��51.68��$
��10,0q�$��Center=�$��Center=�$��24(�$ CompressionGroup��$
 Hand��$��Yu Gothic UI Semibold)�$
 TrueY�	� -   $
 Irreversible_Button��$��有损压缩��$��45��$
��10,0q�$��Center=�$��Center=�$��24(�$ CompressionGroup��$
 Hand��$��Yu Gothic UI Semibold)��� -   $ groupBox_Progression��$��渐进顺序��$��25,235,130,98q�$��22(�$��3q�$��Adobe Caslon Pro Bold)�{�.  ���� #	 � ��.���� -   $ ProgressionOrderPanel��$��4,10,8,5.14q�.+�	� -   $
 LRCP_Button��$
��LRCP��$��33.76��$
��10,0q�$��Center=�$��Center=�$��16(�$ ProgressionGroup��$
 Hand��$
 TrueY�	� -   $
 RLCP_Button��$
��RLCP��$��33.76��$
��10,0q�$��Center=�$��Center=�$��16(�$ ProgressionGroup��$
 Hand��	� -   $
 RPCL_Button��$
��RPCL��$��33.76��$
��10,0q�$��Center=�$��Center=�$��16(�$ ProgressionGroup��$
 Hand��	� -   $
 PCRL_Button��$
��PCRL��$��33.76��$
��10,0q�$��Center=�$��Center=�$��16(�$ ProgressionGroup��$
 Hand��	� -   $
 CPRL_Button��$
��CPRL��$��33.76��$
��10,0q�$��Center=�$��Center=�$��16(�$ ProgressionGroup��$
 Hand���� -   $ groupBox_CompressionValue��$��	压缩比��$��0,235,20,178q�$��22(�$��3q�$��Adobe Caslon Pro Bold)�$��1��$��Right=�$��162.23��{�.  ���� #	 � ��.���� $��0,6.14,0,5.86q�.+��� -    ��Name$ CompressionValueSlider��$��0,10,0,0q�$��25.74�� � Maximum$
 1000Q� � LargeChange$	 100Q� � Minimum$ 1Q� � SmallChange$ 10Q� �� IsSnapToTickEnabled . $
 Hand�� � Value$	 100Q��� -   $ CompressionValueLabel��$��65��$��Center=�$��Center=�$��54(����	#FFF10445���� *Value+ �� ElementName$ CompressionValueSlider���� -   $ groupBox_CodeblockSize��$��代码块大小��$��0,236.5,-99.23,177q�$��20(�$��3q�$��Adobe Caslon Pro Bold)�$��Right=�$	��215��{�.  ���� #	 � ��.��� -    �Name$ CodeblockSizePanel��$��15,6.14,15,10.14q�.+�	� -   $
 radioButton_4��$	��4*4��$��	10,10,0,0q�$��25��$	��Top=�$
��Left=�$��69��$ CodeblockSizeGroup��$
 Hand��	� -   $
 radioButton_16��$��16*16��$��10,40,0,38.86q�$
��Left=�$��69��$ CodeblockSizeGroup��$
 Hand��	� -   $
 radioButton_8��$	��8*8��$��0,10.72,0,0q�$��Right=�$��69��$��24.28��$	��Top=�$ CodeblockSizeGroup��$
 Hand��	� -   $
 radioButton_32��$��32*32��$��0,40,0,38.86q�$��Right=�$��69��$ CodeblockSizeGroup��$
 Hand��	� -   $
 radioButton_64��$��64*64��$��10,0,0,2.58q�$
��Left=�$��69��$��29.28��$��Bottom=�$ CodeblockSizeGroup��$
 Hand��$
 TrueY��� -   $ groupBox_ResolutionNum��$��分辨率级别��$��112,235,198,177q�$��22(�$��3q�$��Adobe Caslon Pro Bold)�$��1��{�.  ���� #	 � ��.���� $��0,6.14,-2,10.14q�.+��� -   $ ResolutionSlider��$��0,10,0,0q�$��28.54��$ 2Q�$ 33Q�$ 5Q�$ 1Q� . $ 6Q�$
 Hand���� -    $ ResolutionLabel��$��60��$��Center=�$��Center=����	#FFE80442$��50(�$��Center=�����  �� Path$ Value�$ ResolutionSlider���� -!   $ Compress_Button��$��JPEG2000编码��$��56��$��112,0,176,98q�$��Bottom=�$��24(�$ Arrow�����	#FFF7F706$��1��{�.  ��
� .���  � Color$ Black�� � Offset$ 0Q�� $ 	#FFF50303��$ 1Q��� -"   $ Decompress_Button��$��JPEG2000解码��$��54��$��112,0,176,39q�$��Bottom=�$��24(����	#FFE7F104$��1��{�.  ��
� .��� $ Black��� $ 	#FF0A0AF0��$ 1Q��� -#   $# groupBox_ResolutionNum_Decode��$��丢弃高分辨率数量��$��112,70.72,140.75,0q�$��22(�$��3q�$��Adobe Caslon Pro Bold)�$��1��$	��151��$	��Top=�{�.  ���� #	 � ��.���� $��0,6.14,0,10.14q�.+��� -$   $ ResolutionSlider_Decode��$��
10,10,10,0q�$��28.54��$ 33Q�$ 5Q�$ 1Q� . $
 Hand���� -%   $ ResolutionLabel_Decode��$��60��$��Center=�$��Center=����	#FFE80442$��50(�$��Center=����� *Value+$ ResolutionSlider_Decode���� -&   $ ShowCompress_Button��$��显示图片��$��56��$��	0,0,20,98q�$��Bottom=�$��24(�$ Arrow�����	#FFF7F706$��1��$��Right=�$	��133�� �� IsCancel . {�.  ��
� .��� $ Black��$ 0Q�� $ 	#FFF50303��$ 1Q��� -'   $ ShowDecompress_Button��$��显示图片��$��54��$��	0,0,20,39q�$��Bottom=�$��24(����	#FFE7F104$��1��$��Right=�$	��133�� . {�.  ��
� .��� $ Black��� $ 	#FF0A0AF0��$ 1Q��� -(   $ ShowRawPicture_Button��$��显示原图��$��56��$��25,0,140.77,37q�$��Bottom=�$��30(�$ Arrow�����	#FF081EF3 . ���	#FF09F309{�.  �� -)   $' !groupBox_Decompression_RGBProfile��$��强行RGB转换��$��180,0,-99.23,37q�$��18(�$	��135��$��Bottom=�$
��Left=�$	��215��$��3q�$��Adobe Caslon Pro Bold)�{�.  ���� #	 � ��.���� -*   $# DecompressionProfile_RGBPanel��$��4,10,-2,5.86q�.+�	� -+   $
 NoRGBForce_Button��$��强行RGB转换��$��51.68��$
��10,0q�$��Center=�$��Center=�$��24(�$ DecompressionRGBGroup��$
 Hand��$��Yu Gothic UI Semibold)�$
 TrueY�	� -,   $
 RGBForce_Button��$��不强行转换��$��45��$
��10,0q�$��Center=�$��Center=�$��24(�$ DecompressionRGBGroup��$
 Hand��$��Yu Gothic UI Semibold)�
   M S B A M L   `   `   `  ����B  >Exe2Zip, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Exe2ZipExe2Zip  5   	       Exe2Zip.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   !localclr-namespace:Exe2Zip  5   	     � Title$  Exe2Zip��5	      $	��600��6!   $	��800��6.    � WindowStartupLocation$ CenterScreen=�6:    � 
ResizeMode$ NoResize=�6_    � WindowStyle$
 None=�6u   .��5
      � ���#1e272e � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��40 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 	TopBorder��5      $��0��6$   
������ 
������ ._�5      � .+�5      �� $��RightToLeft=�6    �� Orientation$ 
Horizontal=�69   .+�5      �� -   5         ��Name$ BtnExit��5      
������ 
������ $	��5 0q�6�   ��6D   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ CloseCircle=�6�   �� 5      -   5        $ BtnMinimize��5      
������ 
������ $	��5 0q�6�   ��6L     $ WindowMinimize=�6�   5      �� 5      $��Exe2Zip��6   $��25(�6+   ���#d1d8e0$
��Left=�6N   $��Center=�6i   $
��10 0q�6�   5      5      �� 5   
   $��1��6   $ 
Horizontal=�6"   .+�5      �� -   5        $ 	BtnDirExe��5      
������ 
������ $	��5 0q�6�   ��6@     $ 	FolderAdd=�6�   �� 5      -   5        	 ��Name$	 TbxPass��5      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Password of Zip��6'   
������ 
������ 
�������$
��15 0q�6�   $��Center=�6�   $��Center=�6�   5      � 5   
   $��2��6   .+�5      �� -   5         ��Name$ RtbExe��5      
�������$��1��6B   
������ $ �� HorizontalScrollBarVisibility$
 Auto=�6k   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��10q�6�   5      5       5!      
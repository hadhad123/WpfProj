   M S B A M L   `   `   `  ����B  >WpfProj, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfProjWpfProj  5   	       WpfProj.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfProj     5   	     � Title$  
MainWindow��5   	   $	��565��6   $	��737��6)    � TaskbarItemInfo 5	      *  $System.Windows.Shell.TaskbarItemInfo  5
   
      Description$ Media Player��6      ThumbButtonInfos 5      *  $System.Windows.Shell.ThumbButtonInfo  -   5           Description$
 Play��5   "      ImageSource$Z Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\play.png��6W     5      -   5        $
 Stop��5   "   $Z Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\stop.png��6W     5      -   5        $
 Stop��5   "   $[ Uc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\pause.png��6X   5      .��5      � .+�5   
   �� -   5         ��Name$ slider_player��5      $
��Left=�6(   $��
18,504,0,0q�6C   $	��Top=�6W   $	��582��6o   6{   � 5   
   $��18,0,100.4,63.6q�6   $��48��6(   $��Bottom=�64    � ColumnDefinitions 5      �� 5      $	��25* �6#   �� 5      $��2* �6#   .+�5      �� -   5        $��
112,3,0,10q�5      $��35��6)   $��50��65   $
��Left=�6@   
������ .��5      �� $Z��Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\stop.png��6   $��35��6v   $��50��6�    J� RenderTransformOrigin$ 
0.153,-0.7&�6�   5      �� 5      -   5        $��
167,3,0,10q�5      $��35��6)   $��50��65   $
��Left=�6@   
������ .��5      �� $[��Uc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\pause.png��6   $��25��6w   $��40��6�   $ 
0.153,-0.7&�6�   5       �� 5!      -   5        $��
222,3,0,10q�5!      $��35��6)   $��50��65   $
��Left=�6@   
������ $ 2.677,0.643&�6t   .��5"      �� $Z��Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\play.png��6   $��25��6v   $��40��6�   $ 
0.153,-0.7&�6�   5#      �� 5$      -   5        $��277,3,239.4,10q�5$      $��35��6-   $��50��69   
������ $ 2.677,0.643&�6]   .��5%      �� $Z��Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\next.png��6   $��25��6v   $��40��6�   $ 
0.153,-0.7&�6�   5&      �� 5'      -	   5        $��0,3,459.4,10q�5'      $��35��6+   $��50��67   
������ $ 2.677,0.643&�6[   $��Right=�6   .��5(      �� $Z��Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\prev.png��6   $��25��6v   $��40��6�   $ 
0.153,-0.7&�6�   5)      �� 5*      -
   5        $��0,3,184.4,10q�5*      $��35��6+   $��50��67   
������ $ 2.677,0.643&�6[   $��Right=�6   .��5+      �� $a��[c:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\fastforward.png��6   $��25��6}   $��40��6�   $ 
0.153,-0.7&�6�   5,      �� 5-      -   5        $��0,3,516.4,10q�5-      $��35��6+   $��50��67   
������ $ 2.677,0.643&�6[   $��Right=�6   .��5.      �� $Z��Tc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\back.png��6   $��25��6v   $��40��6�   $ 
0.153,-0.7&�6�   5/      51      � 52   
   $��Right=�6   $��0,10,0.4,10.4q�6+   $	��100��6B   .+�53      �� -   5        	 ��Name$	 listBox_playlist��53      $��-20,30,10,40.2q�60   $ 0.254,0.505&�6H   �� 54      -   5        $ 
slider_vol��54      $
��10,0q�6)   $��Bottom=�67   6~   55      r� 56   
   -   5        
 r�Name$
 mediaElement��56       r� LoadedBehavior$ Manual=�6-   $��70,53,182.4,199.8q�6E   6`   �� 57   
   -   5        $��35��57      $��50��6   $
��Left=�6(   $��	10,10,0,0q�6C   $	��Top=�6V   .��58      �� $\��Vc:\users\hhhhh\documents\visual studio 2015\Projects\WpfProj\WpfProj\images\folder.png��6   $��25��6t   $��40��6�   $ 
0.153,-0.7&�6�   59      �� 5:   
   -   5         ��Name$ textBox_fileName��5:      $
��Left=�6,   $��23��6G   $��	70,10,0,0q�6S    �� TextWrapping$
 Wrap=�6f   $��
NowPlaying��6z   $	��Top=�6�   $	��120��6�   �� 5;   
   -   5         ��Name$ button1��5;      $��Remove`��6"   $��75��64   $��Right=�6?   $��0,18,10.4,0q�6[   $	��Top=�6p   6�   �� 5<   
   -   5        $ button��5<      $	��Add��6!   $��44��6/   $��Right=�6Q   $	��Top=�6m   $��0,19,100.4,0q�6�   � 5=   
   -   5         �Name$ ProgressBar��5=      $
��Left=�6+   $��22��6F   $��468,375,0,0q�6R   $	��Top=�6g   $	��118��6   �� 5>   
   -   5         ��Name$ label_slider��5>      $��Label��6&   $
��Left=�66   $��
18,478,0,0q�6Q   $	��Top=�6e   $	��105��6}   �� 5?   
   -   5        $ slider_list��5?      $
��Left=�6'   $��
18,375,0,0q�6B   $	��Top=�6V   $	��424��6n    �� TickPlacement$ TopLeft=�6z    �� TickFrequency$ 1Q�6�   $ 0.5,0.5&�6�   z�5@      V� 5A      .~�5B      �� �� 5C      �� 5D       �� Angle$ 179.539Q�6&   T� 5E      5F      5H      5K      5L      
   M S B A M L   `   `   `  ����S  OES2_Ass4_Traffic_Control, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ES2_Ass4_Traffic_ControlES2_Ass4_Traffic_Control  5      .    (ES2_Ass4_Traffic_Control.PedestrianLight   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:ES2_Ass4_Traffic_Control     5      .��5      � .+�5
   
   A� -   5          A�Name$  
greenLight��5
      $��10��5   	   $��10��5   	    K� ZIndex$ 1��5   	   $
��Left=�6   $	��Top=�65   $��5,5,0,0q�6M   ��5   	   �� *greenLightBrush+ �� RelativeSource ��  �� AncestorType UserControl5      A� 5   
   -   5        $  redLight��5      $��10��5   	   $��10��5   	   $ 1��5   	   $
��Left=�6   $	��Top=�65   $��5,20,0,0q�6M   ��5   	   �� *redLightBrush+ ��  UserControl5   M   F� 5   
   
���   �$��2��6   
�������$ 0��6B   ��5      B� 5      ��5      D� E� 5       E� IsClosed$
 True��6)    E� 
StartPoint$
 0,10&�69   ��5   &   @� �� 5    *    �� Size$ 10,10��65    �� RotationAngle$ 0Q�6B    �� 
IsLargeArc$ False��6T   	 �� SweepDirection$	 	Clockwise=�6g   
 �� Point$
 20,10&�6�   �� 5!   *    �� Point$ 20,25&�66   �� 5"   *   $ 10,10��65   $ 0Q�6B   $ False��6T   $	 	Clockwise=�6g   $

 0,25&�6�   �� 5#   *   $
 0,10&�66   5$   '   5&      5'      5)      5+      5,      5-      
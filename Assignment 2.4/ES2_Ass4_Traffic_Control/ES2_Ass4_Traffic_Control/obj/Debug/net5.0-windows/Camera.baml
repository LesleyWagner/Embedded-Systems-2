   M S B A M L   `   `   `  ����S  OES2_Ass4_Traffic_Control, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ES2_Ass4_Traffic_ControlES2_Ass4_Traffic_Control  5      -clr-namespace:DebugTriggersDebugTriggers  5      %    ES2_Ass4_Traffic_Control.Camera   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:ES2_Ass4_Traffic_Control     5      *myclr-namespace:DebugTriggers     5      .��5	      � .+�5
   
   �� -   5          ��Name$  camLight��5
      $$��/Images/pngaaa.com-1249887.png��6"   $��50��6J   $��20,0,0,0q�6V    J� Opacity$ 0Q�6h   �� 5   
   $��20��6   $��20��6     �� RadiusX$ 5��6+    �� RadiusY$ 5��67   
�������
���   �$��1��6c   $
��Left=�6w    K� ZIndex$ 1��6�   � 5   
    � Points# �   ��� �����- ���@f$��20��6+   $��27��67   
�������
���   �$��1��6b   $
��Left=�6v   $ 0��6�   5       � 	Resources 5         animateFlash �� 
TargetName �� TargetProperty	 W� From	
 W� To g� Duration g� 	BeginTime��%  &	        �� 5   
   .��5      W� $ camLight��5      $ Opacity�5      	 0.05      
 1.06   $ 0:0:0.5D�6#   W� 5      $ camLight��5      $ Opacity�5      	 1.05      
 0.06   $ 0:0:0.5D�6#   	 0:0:166   5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ local:Camera.OnFlash��6   "   DebugTriggers.TriggerTracing   TriggerName$ RedLight��6:      TraceEnabled$
 True��6c   .[�5      �� .��5      �� .��5      W� $ camLight��5       $ Opacity�5!      	 0.05"      
 1.06   $ 0:0:0:5D�6#   W� 5#      $ camLight��5$      $ Opacity�5%      	 1.05&      
 0.06   $ 0:0:0:5D�6#    0:0:1:566   5'      5(      5)      5+      
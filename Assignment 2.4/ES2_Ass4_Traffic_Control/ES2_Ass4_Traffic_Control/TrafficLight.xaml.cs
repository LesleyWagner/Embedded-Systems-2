using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace ES2_Ass4_Traffic_Control
{
    /// <summary>
    /// Interaction logic for TrafficLight.xaml
    /// </summary>
    public partial class TrafficLight : UserControl
    {

        public TrafficLight () {
            InitializeComponent ();
        }

        public Brush greenLightBrush {
            get { return (Brush)GetValue (greenLightBrushProperty); }
            set { SetValue (greenLightBrushProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty greenLightBrushProperty =
            DependencyProperty.Register ("greenLightBrush", typeof (Brush), typeof (TrafficLight), new PropertyMetadata (Brushes.Green));

        public Brush orangeLightBrush {
            get { return (Brush)GetValue (orangeLightBrushProperty); }
            set { SetValue (orangeLightBrushProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty orangeLightBrushProperty =
            DependencyProperty.Register ("orangeLightBrush", typeof (Brush), typeof (TrafficLight), new PropertyMetadata (Brushes.Black));

        public Brush redLightBrush {
            get { return (Brush)GetValue (redLightBrushProperty); }
            set { SetValue (redLightBrushProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MyProperty.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty redLightBrushProperty =
            DependencyProperty.Register ("redLightBrush", typeof (Brush), typeof (TrafficLight), new PropertyMetadata (Brushes.Black));
    }
}

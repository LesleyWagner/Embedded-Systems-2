using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ES2_Ass4_Traffic_Control
{
    /// <summary>
    /// Interaction logic for Camera.xaml
    /// </summary>
    public partial class Camera : UserControl
    {
        private Storyboard storyboard_flash;
        public static readonly RoutedEvent OnFlashEvent = EventManager.RegisterRoutedEvent ("OnFlash", RoutingStrategy.Direct, typeof (RoutedEventHandler), typeof (Camera));

        public Camera () {
            InitializeComponent ();

            storyboard_flash = (Storyboard)Resources["animateFlash"];
        }

        public event RoutedEventHandler OnFlash {
            add {
                this.AddHandler (OnFlashEvent, value);
            }

            remove {
                this.RemoveHandler (OnFlashEvent, value);
            }
        }

        public void flash() {
            storyboard_flash.Begin (this);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace ES2_Ass4_Traffic_Control
{
    public class Controller
    {
        private enum State
        {
            RoadFlow,
            PedestrianWaiting,
            BusyRoad,
            Switch,
            ZebraFlow
        }

        private State state;
        private DispatcherTimer timer;
        private int periodGreen;
        private int periodOrange;

        // last deactivated sensor: either sensor_RL_1 and sensor_RR_1
        // used to determine the right camera to flash in cased of a car running a red light
        private string lastDeactivatedSensor;

        // cameras
        Camera cam_L;
        Camera cam_R;

        // sensors
        Ellipse sensor_RL_1;
        Ellipse sensor_RL_2;
        Ellipse sensor_RR_1;
        Ellipse sensor_RR_2;
        Ellipse sensor_TL_R;

        // traffic lights
        TrafficLight tl_left;
        TrafficLight tl_right;
        PedestrianLight tl_top;
        PedestrianLight tl_bottom;

        public Controller(MainWindow window) {
            state = State.RoadFlow;

            tl_left = window.TL_Left;
            tl_right = window.TL_Right;
            tl_top = window.TL_Top;
            tl_bottom = window.TL_Bottom;

            cam_L = window.cam_L;
            cam_R = window.cam_R;

            sensor_RL_1 = window.sensor_RL_1;
            sensor_RL_2 = window.sensor_RL_2;
            sensor_RR_1 = window.sensor_RR_1;
            sensor_RR_2 = window.sensor_RR_2;
            sensor_TL_R = window.sensor_TL_R;

            lastDeactivatedSensor = sensor_RL_1.Name;

            periodGreen = 5;
            periodOrange = 1;
            timer = new DispatcherTimer ();
            timer.Interval = TimeSpan.FromSeconds (periodGreen); // take period from traffic lights
            timer.Tick += timer_Tick;
        }

        public void crossBtnPressed() {
            if (state == State.RoadFlow) {
                timer.Interval = TimeSpan.FromSeconds (periodGreen);
                timer.Start ();
                state = State.PedestrianWaiting;
            }
        }

        public void coverSensor(string sensor) {
            if (sensor == sensor_RL_1.Name) {
                sensor_RL_1.Fill = Brushes.Orange;
            }
            else if (sensor == sensor_RL_2.Name) {
                sensor_RL_2.Fill = Brushes.Orange;
            }
            else if (sensor == sensor_RR_1.Name) {
                sensor_RR_1.Fill = Brushes.Orange;
            }
            else if (sensor == sensor_RR_2.Name) {
                sensor_RR_2.Fill = Brushes.Orange;
            }
            else if (sensor == sensor_TL_R.Name) {
                sensor_TL_R.Fill = Brushes.Orange;

                if (state == State.ZebraFlow) {
                    if (lastDeactivatedSensor == sensor_RR_1.Name) {
                        cam_R.flash ();
                    }
                    else if (lastDeactivatedSensor == sensor_RL_1.Name) {
                        cam_L.flash ();
                    }
                }
            }
        }

        public void uncoverSensor(string sensor) {
            if (sensor == sensor_RL_1.Name) {
                sensor_RL_1.Fill = Brushes.Black;
                lastDeactivatedSensor = sensor_RL_1.Name;
            }
            else if (sensor == sensor_RL_2.Name) {
                sensor_RL_2.Fill = Brushes.Black;
            }
            else if (sensor == sensor_RR_1.Name) {
                sensor_RR_1.Fill = Brushes.Black;
                lastDeactivatedSensor = sensor_RR_1.Name;
            }
            else if (sensor == sensor_RR_2.Name) {
                sensor_RR_2.Fill = Brushes.Black;
            }
            else if (sensor == sensor_TL_R.Name) {
                sensor_TL_R.Fill = Brushes.Black;
            }
        }

        private void timer_Tick (object sender, EventArgs e) {
            if (state == State.PedestrianWaiting) {
                // road is busy, double the green period
                if ((sensor_RL_1.Fill == Brushes.Orange && sensor_RL_2.Fill == Brushes.Orange) ||
                    (sensor_RR_1.Fill == Brushes.Orange && sensor_RR_2.Fill == Brushes.Orange)) {
                    timer.Start ();
                    state = State.BusyRoad;
                }
                else {
                    tl_left.greenLightBrush = Brushes.Black;
                    tl_left.orangeLightBrush = Brushes.Orange;
                    tl_right.greenLightBrush = Brushes.Black;
                    tl_right.orangeLightBrush = Brushes.Orange;
                    timer.Interval = TimeSpan.FromSeconds (periodOrange);
                    timer.Start ();
                    state = State.Switch;
                }
            }
            else if (state == State.BusyRoad) {
                tl_left.greenLightBrush = Brushes.Black;
                tl_left.orangeLightBrush = Brushes.Orange;
                tl_right.greenLightBrush = Brushes.Black;
                tl_right.orangeLightBrush = Brushes.Orange;
                timer.Interval = TimeSpan.FromSeconds (periodOrange);
                timer.Start ();
                state = State.Switch;
            }
            else if (state == State.Switch) {
                tl_left.orangeLightBrush = Brushes.Black;
                tl_left.redLightBrush = Brushes.Red;
                tl_right.orangeLightBrush = Brushes.Black;
                tl_right.redLightBrush = Brushes.Red;
                tl_top.greenLightBrush = Brushes.Green;
                tl_top.redLightBrush = Brushes.Black;
                tl_bottom.greenLightBrush = Brushes.Green;
                tl_bottom.redLightBrush = Brushes.Black;
                timer.Interval = TimeSpan.FromSeconds (periodGreen);
                timer.Start ();
                state = State.ZebraFlow;
            }
            else if (state == State.ZebraFlow) {
                tl_left.greenLightBrush = Brushes.Green;
                tl_left.redLightBrush = Brushes.Black;
                tl_right.greenLightBrush = Brushes.Green;
                tl_right.redLightBrush = Brushes.Black;
                tl_top.greenLightBrush = Brushes.Black;
                tl_top.redLightBrush = Brushes.Red;
                tl_bottom.greenLightBrush = Brushes.Black;
                tl_bottom.redLightBrush = Brushes.Red;
                state = State.RoadFlow;
            }
        }
    }
}

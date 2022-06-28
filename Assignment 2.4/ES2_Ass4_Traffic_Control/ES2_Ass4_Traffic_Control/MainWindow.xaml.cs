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
using System.IO.Ports;
using System.Diagnostics;
using System.Windows.Media.Animation;

namespace ES2_Ass4_Traffic_Control
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private SerialPort serialPort;
        private Controller controller;

        public MainWindow () {
            InitializeComponent ();

            // Disable the connect button as long as the serial port is not set up
            button_connect.IsEnabled = false;

            // Determine which serial ports are available
            string[] ports = SerialPort.GetPortNames ();

            // Add the serial ports to the combobox
            foreach (string port in ports) {
                comboBox_ports.Items.Add (port);
            }
                    
            serialPort = new SerialPort ();
            serialPort.DataReceived += new SerialDataReceivedEventHandler (DataReceivedHandler);
            serialPort.ReceivedBytesThreshold = 16; // the shortest message is 16 bytes long

            controller = new Controller (this);
        }

        private void TL_Left_RedLightEvent (object sender, EventArgs e) {
            // TL_Right.activate ();
        }

        private void DataReceivedHandler (object sender, SerialDataReceivedEventArgs e) {
            // look for beginning of a data packet
            while (serialPort.BytesToRead != 0 && serialPort.ReadChar() != '-') {}

            char[] dataPacket = new char[19];
            char token = (char)0;
            int i = 0;
            while (token != '-') {
                token = (char)serialPort.ReadChar ();
                dataPacket[i] = token;
                i++;
            }

            // decode data packet into message
            Message message = new Message ();
            message.btn_id = "";
            message.state = -1;

            if (new ArraySegment<char> (dataPacket, 0, 3).SequenceEqual (new char[] { 'i', 'd', ':' })) {
                int id_length = Array.IndexOf (dataPacket, '.') - 3;

                message.btn_id = new string (dataPacket, 3, id_length);
                if (message.btn_id.StartsWith("btn")) {
                    message.btn_type = ButtonType.PushButton;
                }
                else if (message.btn_id.StartsWith("sensor")) {
                    message.btn_type = ButtonType.SwitchButton;
                }

                int stateIndex = id_length + 4;
                if (new ArraySegment<char> (dataPacket, stateIndex, 2).SequenceEqual (new char[] { 's', ':' })) {
                    message.state = dataPacket[stateIndex + 2] - '0';
                }
            }

            if (message.btn_id.Length != 0 && message.state != -1) {
                // call controller method
                if (message.btn_type == ButtonType.PushButton) {
                    controller.crossBtnPressed ();
                }
                else if (message.btn_type == ButtonType.SwitchButton) {
                    if (message.state == 1) {
                        Application.Current.Dispatcher.Invoke (() => controller.coverSensor (message.btn_id));
                    }
                    else if (message.state == 0) {
                        Application.Current.Dispatcher.Invoke (() => controller.uncoverSensor (message.btn_id));
                    }
                }
            }
        }

        private void comboBox_ports_SelectionChanged (object sender, SelectionChangedEventArgs e) {
            // Make sure the serial port is not open
            if (serialPort.IsOpen)
                serialPort.Close ();

            // Set the serial port to the port selected in the combobox
            serialPort.PortName = (sender as ComboBox).SelectedValue.ToString();

            // Enable the connect button
            button_connect.IsEnabled = true;
        }

        private void button_connect_Click (object sender, RoutedEventArgs e) {
            // Open the serial port for communications
            //    Note: this does not check if the serial port exists.
            //    You will get an error if it does not exist.
            if (!serialPort.IsOpen) {
                serialPort.Open ();
            }
        }
    }
}

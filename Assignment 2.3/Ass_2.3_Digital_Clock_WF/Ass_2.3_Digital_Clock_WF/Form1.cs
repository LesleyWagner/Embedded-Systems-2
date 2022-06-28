using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;

namespace Ass_2._3_Digital_Clock_WF
{
    public partial class Form1 : Form
    {
        // serial packet size in number of bytes
        const int packetSize = 12;

        public Form1 () {
            InitializeComponent ();

            // Disable the send button and Timer checkbox as long as the serial port is not set up
            buttonSend.Enabled = false;
            checkBoxTimer.Enabled = false;

            // Disable the receive button as long as no data has been send
            buttonReceive.Enabled = false;

            // Determine which serial ports are available
            string[] ports = SerialPort.GetPortNames ();

            // Add the serial ports to the combobox
            foreach (string port in ports) {
                comboBox1.Items.Add (port);
            }

            this.serialPort1 = new System.IO.Ports.SerialPort (this.components);
        }

        private void comboBox1_SelectedIndexChanged (object sender, EventArgs e) {
            // Make sure the serial port is not open
            if (serialPort1.IsOpen)
                serialPort1.Close ();

            // Set the serial port to the port selected in the combobox
            serialPort1.PortName = comboBox1.Text;

            // Open the serial port for communications
            //    Note: this does not check if the serial port exists.
            //    You will get an error if it does not exist.
            serialPort1.Open ();

            // Enable the send button and Timer checkbox
            buttonSend.Enabled = true;
            checkBoxTimer.Enabled = true;
        }


        private void buttonSend_Click (object sender, EventArgs e) {
            // Create a byte array (length 1) containing the byte value
            byte[] myByte = new byte[1];
            myByte[0] = Convert.ToByte (numUpDownByte.Value);

            // Send one byte to the serial port
            serialPort1.Write (myByte, 0, 1);

            // Enable the receive button (if Timer mode is not enabled)
            if (checkBoxTimer.Checked == false)
                buttonReceive.Enabled = true;
        }


        private void ReceiveSerialData () {
            // Read byte as long as serial data is available
            while (serialPort1.BytesToRead >= packetSize) {
                // Receive one byte from the serial port
                char[] dataPacket = new char[packetSize];
                serialPort1.Read (dataPacket, 0, packetSize);

                // string time = new string (dataPacket, 2, 8);

                // label_time.Text = time;

                // Add the string received to listBox1
                listBox1.Items.Add (new string(dataPacket));

                // Scroll to the last line of listBox1
                listBox1.TopIndex = listBox1.Items.Count - 1;
            }
        }


        private void buttonReceive_Click (object sender, EventArgs e) {
            ReceiveSerialData ();

            // Disable the receive button when no more data is available
            if (serialPort1.BytesToRead == 0)
                buttonReceive.Enabled = false;
        }


        private void timer1_Tick (object sender, EventArgs e) {
            // Disable the timer as long as serial data is being read
            timer1.Enabled = false;

            // Receive all serial data available
            ReceiveSerialData ();

            // Enable the timer again
            timer1.Enabled = true;
        }

        private void checkBoxTimer_CheckedChanged (object sender, EventArgs e) {
            // Check if the Timer checkbox is now checked
            if (checkBoxTimer.Checked) {
                // Disable the Receive button
                buttonReceive.Enabled = false;

                // Enable timer1
                timer1.Enabled = true;
            }
            else {
                // Disable timer1
                timer1.Enabled = false;
            }
        }
    }
}

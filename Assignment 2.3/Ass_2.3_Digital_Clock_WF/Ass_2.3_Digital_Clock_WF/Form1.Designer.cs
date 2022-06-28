
namespace Ass_2._3_Digital_Clock_WF
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose (bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose ();
            }
            base.Dispose (disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent () {
            this.components = new System.ComponentModel.Container();
            this.groupBoxSettings = new System.Windows.Forms.GroupBox();
            this.checkBoxTimer = new System.Windows.Forms.CheckBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.groupBoxSend = new System.Windows.Forms.GroupBox();
            this.numUpDownByte = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonSend = new System.Windows.Forms.Button();
            this.groupBoxReceive = new System.Windows.Forms.GroupBox();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.buttonReceive = new System.Windows.Forms.Button();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.label_time = new System.Windows.Forms.Label();
            this.groupBoxSettings.SuspendLayout();
            this.groupBoxSend.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numUpDownByte)).BeginInit();
            this.groupBoxReceive.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxSettings
            // 
            this.groupBoxSettings.Controls.Add(this.checkBoxTimer);
            this.groupBoxSettings.Controls.Add(this.comboBox1);
            this.groupBoxSettings.Location = new System.Drawing.Point(16, 20);
            this.groupBoxSettings.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxSettings.Name = "groupBoxSettings";
            this.groupBoxSettings.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxSettings.Size = new System.Drawing.Size(345, 75);
            this.groupBoxSettings.TabIndex = 0;
            this.groupBoxSettings.TabStop = false;
            this.groupBoxSettings.Text = "Settings";
            // 
            // checkBoxTimer
            // 
            this.checkBoxTimer.AutoSize = true;
            this.checkBoxTimer.Location = new System.Drawing.Point(141, 34);
            this.checkBoxTimer.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.checkBoxTimer.Name = "checkBoxTimer";
            this.checkBoxTimer.Size = new System.Drawing.Size(197, 24);
            this.checkBoxTimer.TabIndex = 1;
            this.checkBoxTimer.Text = "Receive data using Timer";
            this.checkBoxTimer.UseVisualStyleBackColor = true;
            this.checkBoxTimer.CheckedChanged += new System.EventHandler(this.checkBoxTimer_CheckedChanged);
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(9, 31);
            this.comboBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(99, 28);
            this.comboBox1.TabIndex = 0;
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // groupBoxSend
            // 
            this.groupBoxSend.Controls.Add(this.numUpDownByte);
            this.groupBoxSend.Controls.Add(this.label1);
            this.groupBoxSend.Controls.Add(this.buttonSend);
            this.groupBoxSend.Location = new System.Drawing.Point(16, 105);
            this.groupBoxSend.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxSend.Name = "groupBoxSend";
            this.groupBoxSend.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxSend.Size = new System.Drawing.Size(345, 75);
            this.groupBoxSend.TabIndex = 1;
            this.groupBoxSend.TabStop = false;
            this.groupBoxSend.Text = "Sending";
            // 
            // numUpDownByte
            // 
            this.numUpDownByte.Location = new System.Drawing.Point(152, 32);
            this.numUpDownByte.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.numUpDownByte.Maximum = new decimal(new int[] {
            255,
            0,
            0,
            0});
            this.numUpDownByte.Name = "numUpDownByte";
            this.numUpDownByte.Size = new System.Drawing.Size(57, 27);
            this.numUpDownByte.TabIndex = 2;
            this.numUpDownByte.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(8, 35);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(140, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Byte value (0 - 255):";
            // 
            // buttonSend
            // 
            this.buttonSend.Location = new System.Drawing.Point(237, 28);
            this.buttonSend.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonSend.Name = "buttonSend";
            this.buttonSend.Size = new System.Drawing.Size(100, 35);
            this.buttonSend.TabIndex = 0;
            this.buttonSend.Text = "Send byte";
            this.buttonSend.UseVisualStyleBackColor = true;
            this.buttonSend.Click += new System.EventHandler(this.buttonSend_Click);
            // 
            // groupBoxReceive
            // 
            this.groupBoxReceive.Controls.Add(this.listBox1);
            this.groupBoxReceive.Controls.Add(this.buttonReceive);
            this.groupBoxReceive.Location = new System.Drawing.Point(17, 189);
            this.groupBoxReceive.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxReceive.Name = "groupBoxReceive";
            this.groupBoxReceive.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.groupBoxReceive.Size = new System.Drawing.Size(345, 195);
            this.groupBoxReceive.TabIndex = 2;
            this.groupBoxReceive.TabStop = false;
            this.groupBoxReceive.Text = "Receiving";
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 20;
            this.listBox1.Location = new System.Drawing.Point(9, 31);
            this.listBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.listBox1.Name = "listBox1";
            this.listBox1.SelectionMode = System.Windows.Forms.SelectionMode.None;
            this.listBox1.Size = new System.Drawing.Size(327, 104);
            this.listBox1.TabIndex = 1;
            // 
            // buttonReceive
            // 
            this.buttonReceive.Location = new System.Drawing.Point(123, 151);
            this.buttonReceive.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.buttonReceive.Name = "buttonReceive";
            this.buttonReceive.Size = new System.Drawing.Size(100, 35);
            this.buttonReceive.TabIndex = 0;
            this.buttonReceive.Text = "Receive";
            this.buttonReceive.UseVisualStyleBackColor = true;
            this.buttonReceive.Click += new System.EventHandler(this.buttonReceive_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // label_time
            // 
            this.label_time.AutoSize = true;
            this.label_time.Font = new System.Drawing.Font("Segoe UI", 36F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label_time.Location = new System.Drawing.Point(453, 20);
            this.label_time.Name = "label_time";
            this.label_time.Size = new System.Drawing.Size(253, 81);
            this.label_time.TabIndex = 3;
            this.label_time.Text = "00:00:00";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(816, 403);
            this.Controls.Add(this.label_time);
            this.Controls.Add(this.groupBoxReceive);
            this.Controls.Add(this.groupBoxSend);
            this.Controls.Add(this.groupBoxSettings);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.Text = "Serial Bytes";
            this.groupBoxSettings.ResumeLayout(false);
            this.groupBoxSettings.PerformLayout();
            this.groupBoxSend.ResumeLayout(false);
            this.groupBoxSend.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numUpDownByte)).EndInit();
            this.groupBoxReceive.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxSettings;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.CheckBox checkBoxTimer;
        private System.Windows.Forms.GroupBox groupBoxSend;
        private System.Windows.Forms.GroupBox groupBoxReceive;
        private System.Windows.Forms.Button buttonSend;
        private System.Windows.Forms.Button buttonReceive;
        private System.Windows.Forms.NumericUpDown numUpDownByte;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox listBox1;
        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Label label_time;
    }
}


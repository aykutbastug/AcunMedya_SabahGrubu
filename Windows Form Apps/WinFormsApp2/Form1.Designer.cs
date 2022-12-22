namespace WinFormsApp2
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
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.checkBox3 = new System.Windows.Forms.CheckBox();
            this.checkedListBox1 = new System.Windows.Forms.CheckedListBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.lblEmail = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lblSoyadi = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblId = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lblAdi = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.listOgrenciler = new System.Windows.Forms.ListBox();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.lblBabaAdi = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lblAnneAdi = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lblDogumTarihi = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.lblOzlukId = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.lblKimlikNo = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.SuspendLayout();
            // 
            // checkBox1
            // 
            this.checkBox1.Appearance = System.Windows.Forms.Appearance.Button;
            this.checkBox1.AutoSize = true;
            this.checkBox1.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.checkBox1.Location = new System.Drawing.Point(46, 42);
            this.checkBox1.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(210, 61);
            this.checkBox1.TabIndex = 0;
            this.checkBox1.Text = "checkBox1";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // checkBox2
            // 
            this.checkBox2.Appearance = System.Windows.Forms.Appearance.Button;
            this.checkBox2.AutoSize = true;
            this.checkBox2.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.checkBox2.Location = new System.Drawing.Point(46, 105);
            this.checkBox2.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(210, 61);
            this.checkBox2.TabIndex = 0;
            this.checkBox2.Text = "checkBox1";
            this.checkBox2.UseVisualStyleBackColor = true;
            // 
            // checkBox3
            // 
            this.checkBox3.Appearance = System.Windows.Forms.Appearance.Button;
            this.checkBox3.AutoSize = true;
            this.checkBox3.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.checkBox3.Location = new System.Drawing.Point(46, 168);
            this.checkBox3.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox3.Name = "checkBox3";
            this.checkBox3.Size = new System.Drawing.Size(210, 61);
            this.checkBox3.TabIndex = 0;
            this.checkBox3.Text = "checkBox1";
            this.checkBox3.UseVisualStyleBackColor = true;
            // 
            // checkedListBox1
            // 
            this.checkedListBox1.FormattingEnabled = true;
            this.checkedListBox1.Items.AddRange(new object[] {
            "Eleman 1",
            "Eleman 2",
            "Eleman 3"});
            this.checkedListBox1.Location = new System.Drawing.Point(297, 42);
            this.checkedListBox1.Name = "checkedListBox1";
            this.checkedListBox1.Size = new System.Drawing.Size(323, 388);
            this.checkedListBox1.TabIndex = 1;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Topla",
            "Çarp",
            "Çıkar"});
            this.comboBox1.Location = new System.Drawing.Point(678, 481);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(371, 53);
            this.comboBox1.TabIndex = 2;
            this.comboBox1.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.comboBox1_KeyPress);
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 45;
            this.listBox1.Items.AddRange(new object[] {
            "İtem 1",
            "Item 2",
            "Item 3"});
            this.listBox1.Location = new System.Drawing.Point(646, 42);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(371, 409);
            this.listBox1.TabIndex = 3;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CustomFormat = "";
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker1.Location = new System.Drawing.Point(165, 479);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(487, 51);
            this.dateTimePicker1.TabIndex = 4;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Location = new System.Drawing.Point(12, 572);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1413, 513);
            this.tabControl1.TabIndex = 7;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.lblEmail);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.lblSoyadi);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.lblId);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.lblAdi);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.listOgrenciler);
            this.tabPage1.Location = new System.Drawing.Point(4, 54);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1405, 455);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Öğrenci Bilgileri";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // lblEmail
            // 
            this.lblEmail.AutoSize = true;
            this.lblEmail.Location = new System.Drawing.Point(892, 205);
            this.lblEmail.Name = "lblEmail";
            this.lblEmail.Size = new System.Drawing.Size(207, 45);
            this.lblEmail.TabIndex = 1;
            this.lblEmail.Text = "Öğrenci Adı :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(772, 205);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(114, 45);
            this.label4.TabIndex = 1;
            this.label4.Text = "Email :";
            // 
            // lblSoyadi
            // 
            this.lblSoyadi.AutoSize = true;
            this.lblSoyadi.Location = new System.Drawing.Point(892, 144);
            this.lblSoyadi.Name = "lblSoyadi";
            this.lblSoyadi.Size = new System.Drawing.Size(207, 45);
            this.lblSoyadi.TabIndex = 1;
            this.lblSoyadi.Text = "Öğrenci Adı :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(753, 144);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(133, 45);
            this.label2.TabIndex = 1;
            this.label2.Text = "Soyadı :";
            // 
            // lblId
            // 
            this.lblId.AutoSize = true;
            this.lblId.Location = new System.Drawing.Point(892, 31);
            this.lblId.Name = "lblId";
            this.lblId.Size = new System.Drawing.Size(207, 45);
            this.lblId.TabIndex = 1;
            this.lblId.Text = "Öğrenci Adı :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(822, 31);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(64, 45);
            this.label3.TabIndex = 1;
            this.label3.Text = "Id :";
            // 
            // lblAdi
            // 
            this.lblAdi.AutoSize = true;
            this.lblAdi.Location = new System.Drawing.Point(892, 89);
            this.lblAdi.Name = "lblAdi";
            this.lblAdi.Size = new System.Drawing.Size(207, 45);
            this.lblAdi.TabIndex = 1;
            this.lblAdi.Text = "Öğrenci Adı :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(802, 89);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 45);
            this.label1.TabIndex = 1;
            this.label1.Text = "Adı :";
            // 
            // listOgrenciler
            // 
            this.listOgrenciler.FormattingEnabled = true;
            this.listOgrenciler.ItemHeight = 45;
            this.listOgrenciler.Location = new System.Drawing.Point(30, 21);
            this.listOgrenciler.Name = "listOgrenciler";
            this.listOgrenciler.Size = new System.Drawing.Size(527, 409);
            this.listOgrenciler.TabIndex = 0;
            this.listOgrenciler.SelectedIndexChanged += new System.EventHandler(this.listOgrenciler_SelectedIndexChanged);
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.lblBabaAdi);
            this.tabPage3.Controls.Add(this.label5);
            this.tabPage3.Controls.Add(this.lblAnneAdi);
            this.tabPage3.Controls.Add(this.label6);
            this.tabPage3.Controls.Add(this.lblDogumTarihi);
            this.tabPage3.Controls.Add(this.label8);
            this.tabPage3.Controls.Add(this.lblOzlukId);
            this.tabPage3.Controls.Add(this.label10);
            this.tabPage3.Controls.Add(this.lblKimlikNo);
            this.tabPage3.Controls.Add(this.label12);
            this.tabPage3.Location = new System.Drawing.Point(4, 54);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(1405, 455);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Özlük Bilgileri";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // lblBabaAdi
            // 
            this.lblBabaAdi.AutoSize = true;
            this.lblBabaAdi.Location = new System.Drawing.Point(267, 276);
            this.lblBabaAdi.Name = "lblBabaAdi";
            this.lblBabaAdi.Size = new System.Drawing.Size(207, 45);
            this.lblBabaAdi.TabIndex = 2;
            this.lblBabaAdi.Text = "Öğrenci Adı :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(88, 276);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(165, 45);
            this.label5.TabIndex = 3;
            this.label5.Text = "Baba Adı :";
            // 
            // lblAnneAdi
            // 
            this.lblAnneAdi.AutoSize = true;
            this.lblAnneAdi.Location = new System.Drawing.Point(267, 216);
            this.lblAnneAdi.Name = "lblAnneAdi";
            this.lblAnneAdi.Size = new System.Drawing.Size(207, 45);
            this.lblAnneAdi.TabIndex = 2;
            this.lblAnneAdi.Text = "Öğrenci Adı :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(84, 216);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(169, 45);
            this.label6.TabIndex = 3;
            this.label6.Text = "Anne Adı :";
            // 
            // lblDogumTarihi
            // 
            this.lblDogumTarihi.AutoSize = true;
            this.lblDogumTarihi.Location = new System.Drawing.Point(267, 155);
            this.lblDogumTarihi.Name = "lblDogumTarihi";
            this.lblDogumTarihi.Size = new System.Drawing.Size(207, 45);
            this.lblDogumTarihi.TabIndex = 4;
            this.lblDogumTarihi.Text = "Öğrenci Adı :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(24, 155);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(229, 45);
            this.label8.TabIndex = 5;
            this.label8.Text = "Doğum Tarihi :";
            // 
            // lblOzlukId
            // 
            this.lblOzlukId.AutoSize = true;
            this.lblOzlukId.Location = new System.Drawing.Point(267, 42);
            this.lblOzlukId.Name = "lblOzlukId";
            this.lblOzlukId.Size = new System.Drawing.Size(207, 45);
            this.lblOzlukId.TabIndex = 6;
            this.lblOzlukId.Text = "Öğrenci Adı :";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(189, 42);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(64, 45);
            this.label10.TabIndex = 7;
            this.label10.Text = "Id :";
            // 
            // lblKimlikNo
            // 
            this.lblKimlikNo.AutoSize = true;
            this.lblKimlikNo.Location = new System.Drawing.Point(267, 100);
            this.lblKimlikNo.Name = "lblKimlikNo";
            this.lblKimlikNo.Size = new System.Drawing.Size(207, 45);
            this.lblKimlikNo.TabIndex = 8;
            this.lblKimlikNo.Text = "Öğrenci Adı :";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(77, 100);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(176, 45);
            this.label12.TabIndex = 9;
            this.label12.Text = "Kimlik No :";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(18F, 45F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1475, 1097);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.checkedListBox1);
            this.Controls.Add(this.checkBox3);
            this.Controls.Add(this.checkBox2);
            this.Controls.Add(this.checkBox1);
            this.Font = new System.Drawing.Font("Segoe UI", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CheckBox checkBox1;
        private CheckBox checkBox2;
        private CheckBox checkBox3;
        private CheckedListBox checkedListBox1;
        private ComboBox comboBox1;
        private ListBox listBox1;
        private DateTimePicker dateTimePicker1;
        private TabControl tabControl1;
        private TabPage tabPage1;
        private TabPage tabPage3;
        private ListBox listOgrenciler;
        private Label lblSoyadi;
        private Label label2;
        private Label lblAdi;
        private Label label1;
        private Label lblEmail;
        private Label label4;
        private Label lblId;
        private Label label3;
        private Label lblAnneAdi;
        private Label label6;
        private Label lblDogumTarihi;
        private Label label8;
        private Label lblOzlukId;
        private Label label10;
        private Label lblKimlikNo;
        private Label label12;
        private Label lblBabaAdi;
        private Label label5;
    }
}
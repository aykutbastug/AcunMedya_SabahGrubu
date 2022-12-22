namespace WinFormsApp2
{
    partial class frmHesapMakinesi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtSayi1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtSayi2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.btnHesapla = new System.Windows.Forms.Button();
            this.lblSonuc = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtSayi1
            // 
            this.txtSayi1.Location = new System.Drawing.Point(468, 53);
            this.txtSayi1.Margin = new System.Windows.Forms.Padding(5);
            this.txtSayi1.Name = "txtSayi1";
            this.txtSayi1.Size = new System.Drawing.Size(491, 57);
            this.txtSayi1.TabIndex = 0;
            this.txtSayi1.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSayi1_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(305, 58);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 51);
            this.label1.TabIndex = 1;
            this.label1.Text = "Sayı 1 :";
            // 
            // txtSayi2
            // 
            this.txtSayi2.Location = new System.Drawing.Point(468, 122);
            this.txtSayi2.Margin = new System.Windows.Forms.Padding(5);
            this.txtSayi2.Name = "txtSayi2";
            this.txtSayi2.Size = new System.Drawing.Size(491, 57);
            this.txtSayi2.TabIndex = 0;
            this.txtSayi2.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSayi1_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(305, 127);
            this.label2.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(136, 51);
            this.label2.TabIndex = 1;
            this.label2.Text = "Sayı 2 :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(250, 193);
            this.label3.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(191, 51);
            this.label3.TabIndex = 1;
            this.label3.Text = "Operatör :";
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Topla",
            "Çıkar",
            "Çarp",
            "Böl"});
            this.comboBox1.Location = new System.Drawing.Point(468, 193);
            this.comboBox1.Margin = new System.Windows.Forms.Padding(5);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(491, 58);
            this.comboBox1.TabIndex = 2;
            // 
            // btnHesapla
            // 
            this.btnHesapla.Location = new System.Drawing.Point(751, 281);
            this.btnHesapla.Name = "btnHesapla";
            this.btnHesapla.Size = new System.Drawing.Size(208, 73);
            this.btnHesapla.TabIndex = 3;
            this.btnHesapla.Text = "Hesapla";
            this.btnHesapla.UseVisualStyleBackColor = true;
            this.btnHesapla.Click += new System.EventHandler(this.btnHesapla_Click);
            // 
            // lblSonuc
            // 
            this.lblSonuc.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.lblSonuc.ForeColor = System.Drawing.Color.Blue;
            this.lblSonuc.Location = new System.Drawing.Point(468, 393);
            this.lblSonuc.Name = "lblSonuc";
            this.lblSonuc.Size = new System.Drawing.Size(491, 85);
            this.lblSonuc.TabIndex = 4;
            this.lblSonuc.Text = "0";
            this.lblSonuc.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // frmHesapMakinesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(20F, 50F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1333, 750);
            this.Controls.Add(this.lblSonuc);
            this.Controls.Add(this.btnHesapla);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtSayi2);
            this.Controls.Add(this.txtSayi1);
            this.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.Margin = new System.Windows.Forms.Padding(5);
            this.Name = "frmHesapMakinesi";
            this.Text = "frmHesapMakinesi";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private TextBox txtSayi1;
        private Label label1;
        private TextBox txtSayi2;
        private Label label2;
        private Label label3;
        private ComboBox comboBox1;
        private Button btnHesapla;
        private Label lblSonuc;
    }
}
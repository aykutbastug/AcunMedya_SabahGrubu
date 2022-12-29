namespace MusteriTakipUygulamasi
{
    partial class Form3
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
            this.listBoxSol = new System.Windows.Forms.ListBox();
            this.listBoxSag = new System.Windows.Forms.ListBox();
            this.btnSagaTasi = new System.Windows.Forms.Button();
            this.btnSolaTasi = new System.Windows.Forms.Button();
            this.btnTumunuSagaTasi = new System.Windows.Forms.Button();
            this.btnTumunuSolaTasi = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // listBoxSol
            // 
            this.listBoxSol.FormattingEnabled = true;
            this.listBoxSol.ItemHeight = 30;
            this.listBoxSol.Items.AddRange(new object[] {
            "Elma",
            "Armut",
            "Ekmek",
            "Simit",
            "Çay",
            "Kahve"});
            this.listBoxSol.Location = new System.Drawing.Point(22, 23);
            this.listBoxSol.Name = "listBoxSol";
            this.listBoxSol.Size = new System.Drawing.Size(450, 784);
            this.listBoxSol.TabIndex = 0;
            // 
            // listBoxSag
            // 
            this.listBoxSag.FormattingEnabled = true;
            this.listBoxSag.ItemHeight = 30;
            this.listBoxSag.Location = new System.Drawing.Point(784, 23);
            this.listBoxSag.Name = "listBoxSag";
            this.listBoxSag.Size = new System.Drawing.Size(450, 784);
            this.listBoxSag.TabIndex = 0;
            // 
            // btnSagaTasi
            // 
            this.btnSagaTasi.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnSagaTasi.Location = new System.Drawing.Point(557, 94);
            this.btnSagaTasi.Name = "btnSagaTasi";
            this.btnSagaTasi.Size = new System.Drawing.Size(159, 59);
            this.btnSagaTasi.TabIndex = 1;
            this.btnSagaTasi.Text = ">";
            this.btnSagaTasi.UseVisualStyleBackColor = true;
            this.btnSagaTasi.Click += new System.EventHandler(this.btnSagaTasi_Click);
            // 
            // btnSolaTasi
            // 
            this.btnSolaTasi.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnSolaTasi.Location = new System.Drawing.Point(557, 159);
            this.btnSolaTasi.Name = "btnSolaTasi";
            this.btnSolaTasi.Size = new System.Drawing.Size(159, 59);
            this.btnSolaTasi.TabIndex = 1;
            this.btnSolaTasi.Text = "<";
            this.btnSolaTasi.UseVisualStyleBackColor = true;
            this.btnSolaTasi.Click += new System.EventHandler(this.btnSolaTasi_Click);
            // 
            // btnTumunuSagaTasi
            // 
            this.btnTumunuSagaTasi.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnTumunuSagaTasi.Location = new System.Drawing.Point(567, 662);
            this.btnTumunuSagaTasi.Name = "btnTumunuSagaTasi";
            this.btnTumunuSagaTasi.Size = new System.Drawing.Size(159, 59);
            this.btnTumunuSagaTasi.TabIndex = 1;
            this.btnTumunuSagaTasi.Text = ">>";
            this.btnTumunuSagaTasi.UseVisualStyleBackColor = true;
            this.btnTumunuSagaTasi.Click += new System.EventHandler(this.btnTumunuSagaTasi_Click);
            // 
            // btnTumunuSolaTasi
            // 
            this.btnTumunuSolaTasi.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btnTumunuSolaTasi.Location = new System.Drawing.Point(567, 727);
            this.btnTumunuSolaTasi.Name = "btnTumunuSolaTasi";
            this.btnTumunuSolaTasi.Size = new System.Drawing.Size(159, 59);
            this.btnTumunuSolaTasi.TabIndex = 1;
            this.btnTumunuSolaTasi.Text = "<<";
            this.btnTumunuSolaTasi.UseVisualStyleBackColor = true;
            this.btnTumunuSolaTasi.Click += new System.EventHandler(this.btnTumunuSolaTasi_Click);
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 30F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1246, 834);
            this.Controls.Add(this.btnTumunuSolaTasi);
            this.Controls.Add(this.btnTumunuSagaTasi);
            this.Controls.Add(this.btnSolaTasi);
            this.Controls.Add(this.btnSagaTasi);
            this.Controls.Add(this.listBoxSag);
            this.Controls.Add(this.listBoxSol);
            this.Name = "Form3";
            this.Text = "Form3";
            this.Load += new System.EventHandler(this.Form3_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private ListBox listBoxSol;
        private ListBox listBoxSag;
        private Button btnSagaTasi;
        private Button btnSolaTasi;
        private Button btnTumunuSagaTasi;
        private Button btnTumunuSolaTasi;
    }
}
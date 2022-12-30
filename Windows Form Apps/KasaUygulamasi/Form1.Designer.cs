namespace KasaUygulamasi
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.panel1 = new System.Windows.Forms.Panel();
            this.listSepet = new System.Windows.Forms.ListView();
            this.columnHeader5 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader6 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader7 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader8 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader9 = new System.Windows.Forms.ColumnHeader();
            this.ımageList1 = new System.Windows.Forms.ImageList(this.components);
            this.ımageList2 = new System.Windows.Forms.ImageList(this.components);
            this.panel4 = new System.Windows.Forms.Panel();
            this.btnSepetiBosalt = new System.Windows.Forms.Button();
            this.btnSepettenCikar = new System.Windows.Forms.Button();
            this.btnAzalt = new System.Windows.Forms.Button();
            this.btnArttir = new System.Windows.Forms.Button();
            this.panel3 = new System.Windows.Forms.Panel();
            this.lblSepetToplami = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.detaylıGörünümToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listeGörünümüToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.döşemeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.küçükResimToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.büyükResimToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel2 = new System.Windows.Forms.Panel();
            this.listUrunler = new System.Windows.Forms.ListView();
            this.columnHeader1 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader2 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader3 = new System.Windows.Forms.ColumnHeader();
            this.columnHeader4 = new System.Windows.Forms.ColumnHeader();
            this.label1 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.toolTip2 = new System.Windows.Forms.ToolTip(this.components);
            this.panel1.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            this.contextMenuStrip1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.listSepet);
            this.panel1.Controls.Add(this.panel4);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(884, 1047);
            this.panel1.TabIndex = 0;
            // 
            // listSepet
            // 
            this.listSepet.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader5,
            this.columnHeader6,
            this.columnHeader7,
            this.columnHeader8,
            this.columnHeader9});
            this.listSepet.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listSepet.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.listSepet.FullRowSelect = true;
            this.listSepet.LargeImageList = this.ımageList1;
            this.listSepet.Location = new System.Drawing.Point(0, 183);
            this.listSepet.Name = "listSepet";
            this.listSepet.Size = new System.Drawing.Size(884, 714);
            this.listSepet.SmallImageList = this.ımageList2;
            this.listSepet.TabIndex = 4;
            this.listSepet.UseCompatibleStateImageBehavior = false;
            this.listSepet.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "Ürün Adı";
            this.columnHeader5.Width = 300;
            // 
            // columnHeader6
            // 
            this.columnHeader6.Text = "Birim Fiyatı";
            this.columnHeader6.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.columnHeader6.Width = 170;
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "Miktar";
            this.columnHeader7.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.columnHeader7.Width = 120;
            // 
            // columnHeader8
            // 
            this.columnHeader8.Text = "Tutar";
            this.columnHeader8.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.columnHeader8.Width = 220;
            // 
            // columnHeader9
            // 
            this.columnHeader9.Text = "Barkod";
            this.columnHeader9.Width = 0;
            // 
            // ımageList1
            // 
            this.ımageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.ımageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ımageList1.ImageStream")));
            this.ımageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.ımageList1.Images.SetKeyName(0, "uzum");
            this.ımageList1.Images.SetKeyName(1, "armut");
            this.ımageList1.Images.SetKeyName(2, "ekmek");
            this.ımageList1.Images.SetKeyName(3, "cilek");
            this.ımageList1.Images.SetKeyName(4, "elma");
            // 
            // ımageList2
            // 
            this.ımageList2.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.ımageList2.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ımageList2.ImageStream")));
            this.ımageList2.TransparentColor = System.Drawing.Color.Transparent;
            this.ımageList2.Images.SetKeyName(0, "uzum");
            this.ımageList2.Images.SetKeyName(1, "armut");
            this.ımageList2.Images.SetKeyName(2, "ekmek");
            this.ımageList2.Images.SetKeyName(3, "cilek");
            this.ımageList2.Images.SetKeyName(4, "elma");
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnSepetiBosalt);
            this.panel4.Controls.Add(this.btnSepettenCikar);
            this.panel4.Controls.Add(this.btnAzalt);
            this.panel4.Controls.Add(this.btnArttir);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel4.Location = new System.Drawing.Point(0, 897);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(884, 150);
            this.panel4.TabIndex = 3;
            // 
            // btnSepetiBosalt
            // 
            this.btnSepetiBosalt.Image = ((System.Drawing.Image)(resources.GetObject("btnSepetiBosalt.Image")));
            this.btnSepetiBosalt.Location = new System.Drawing.Point(751, 11);
            this.btnSepetiBosalt.Name = "btnSepetiBosalt";
            this.btnSepetiBosalt.Size = new System.Drawing.Size(135, 128);
            this.btnSepetiBosalt.TabIndex = 0;
            this.toolTip1.SetToolTip(this.btnSepetiBosalt, "Sepeti boşalt");
            this.btnSepetiBosalt.UseVisualStyleBackColor = true;
            this.btnSepetiBosalt.Click += new System.EventHandler(this.btnSepetiBosalt_Click);
            // 
            // btnSepettenCikar
            // 
            this.btnSepettenCikar.Image = ((System.Drawing.Image)(resources.GetObject("btnSepettenCikar.Image")));
            this.btnSepettenCikar.Location = new System.Drawing.Point(610, 11);
            this.btnSepettenCikar.Name = "btnSepettenCikar";
            this.btnSepettenCikar.Size = new System.Drawing.Size(135, 128);
            this.btnSepettenCikar.TabIndex = 0;
            this.toolTip1.SetToolTip(this.btnSepettenCikar, "Seçili olan ürünü sepetten çıkar");
            this.btnSepettenCikar.UseVisualStyleBackColor = true;
            // 
            // btnAzalt
            // 
            this.btnAzalt.Image = ((System.Drawing.Image)(resources.GetObject("btnAzalt.Image")));
            this.btnAzalt.Location = new System.Drawing.Point(151, 12);
            this.btnAzalt.Name = "btnAzalt";
            this.btnAzalt.Size = new System.Drawing.Size(135, 128);
            this.btnAzalt.TabIndex = 0;
            this.toolTip1.SetToolTip(this.btnAzalt, "Sepetteki seçili ürünün miktarını bir adet azaltır.");
            this.btnAzalt.UseVisualStyleBackColor = true;
            // 
            // btnArttir
            // 
            this.btnArttir.Image = ((System.Drawing.Image)(resources.GetObject("btnArttir.Image")));
            this.btnArttir.Location = new System.Drawing.Point(10, 11);
            this.btnArttir.Name = "btnArttir";
            this.btnArttir.Size = new System.Drawing.Size(135, 128);
            this.btnArttir.TabIndex = 0;
            this.toolTip2.SetToolTip(this.btnArttir, "Sepetteki seçili ürünün miktarını bir adet arttırır.");
            this.btnArttir.UseVisualStyleBackColor = true;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.lblSepetToplami);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 61);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(884, 122);
            this.panel3.TabIndex = 2;
            // 
            // lblSepetToplami
            // 
            this.lblSepetToplami.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblSepetToplami.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.lblSepetToplami.Location = new System.Drawing.Point(358, 0);
            this.lblSepetToplami.Name = "lblSepetToplami";
            this.lblSepetToplami.Size = new System.Drawing.Size(526, 122);
            this.lblSepetToplami.TabIndex = 1;
            this.lblSepetToplami.Text = "0,00 ₺";
            this.lblSepetToplami.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label3
            // 
            this.label3.Dock = System.Windows.Forms.DockStyle.Left;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(0, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(358, 122);
            this.label3.TabIndex = 0;
            this.label3.Text = "SEPET TOPLAMI :";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label2
            // 
            this.label2.BackColor = System.Drawing.Color.Gainsboro;
            this.label2.Dock = System.Windows.Forms.DockStyle.Top;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(0, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(884, 61);
            this.label2.TabIndex = 1;
            this.label2.Text = "SEPET";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(28, 28);
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.detaylıGörünümToolStripMenuItem,
            this.listeGörünümüToolStripMenuItem,
            this.döşemeToolStripMenuItem,
            this.küçükResimToolStripMenuItem,
            this.büyükResimToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(244, 184);
            // 
            // detaylıGörünümToolStripMenuItem
            // 
            this.detaylıGörünümToolStripMenuItem.Name = "detaylıGörünümToolStripMenuItem";
            this.detaylıGörünümToolStripMenuItem.Size = new System.Drawing.Size(243, 36);
            this.detaylıGörünümToolStripMenuItem.Tag = "details";
            this.detaylıGörünümToolStripMenuItem.Text = "Detaylı Görünüm";
            this.detaylıGörünümToolStripMenuItem.Click += new System.EventHandler(this.detaylıGörünümToolStripMenuItem_Click);
            // 
            // listeGörünümüToolStripMenuItem
            // 
            this.listeGörünümüToolStripMenuItem.Name = "listeGörünümüToolStripMenuItem";
            this.listeGörünümüToolStripMenuItem.Size = new System.Drawing.Size(243, 36);
            this.listeGörünümüToolStripMenuItem.Tag = "list";
            this.listeGörünümüToolStripMenuItem.Text = "Liste Görünümü";
            this.listeGörünümüToolStripMenuItem.Click += new System.EventHandler(this.detaylıGörünümToolStripMenuItem_Click);
            // 
            // döşemeToolStripMenuItem
            // 
            this.döşemeToolStripMenuItem.Name = "döşemeToolStripMenuItem";
            this.döşemeToolStripMenuItem.Size = new System.Drawing.Size(243, 36);
            this.döşemeToolStripMenuItem.Tag = "tile";
            this.döşemeToolStripMenuItem.Text = "Döşeme";
            this.döşemeToolStripMenuItem.Click += new System.EventHandler(this.detaylıGörünümToolStripMenuItem_Click);
            // 
            // küçükResimToolStripMenuItem
            // 
            this.küçükResimToolStripMenuItem.Name = "küçükResimToolStripMenuItem";
            this.küçükResimToolStripMenuItem.Size = new System.Drawing.Size(243, 36);
            this.küçükResimToolStripMenuItem.Tag = "small";
            this.küçükResimToolStripMenuItem.Text = "Küçük Resim";
            this.küçükResimToolStripMenuItem.Click += new System.EventHandler(this.detaylıGörünümToolStripMenuItem_Click);
            // 
            // büyükResimToolStripMenuItem
            // 
            this.büyükResimToolStripMenuItem.Name = "büyükResimToolStripMenuItem";
            this.büyükResimToolStripMenuItem.Size = new System.Drawing.Size(243, 36);
            this.büyükResimToolStripMenuItem.Tag = "large";
            this.büyükResimToolStripMenuItem.Text = "Büyük Resim";
            this.büyükResimToolStripMenuItem.Click += new System.EventHandler(this.detaylıGörünümToolStripMenuItem_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.listUrunler);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(884, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(903, 1047);
            this.panel2.TabIndex = 1;
            // 
            // listUrunler
            // 
            this.listUrunler.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.listUrunler.ContextMenuStrip = this.contextMenuStrip1;
            this.listUrunler.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listUrunler.FullRowSelect = true;
            this.listUrunler.LargeImageList = this.ımageList1;
            this.listUrunler.Location = new System.Drawing.Point(0, 61);
            this.listUrunler.Name = "listUrunler";
            this.listUrunler.Size = new System.Drawing.Size(903, 986);
            this.listUrunler.SmallImageList = this.ımageList2;
            this.listUrunler.TabIndex = 1;
            this.listUrunler.UseCompatibleStateImageBehavior = false;
            this.listUrunler.View = System.Windows.Forms.View.Tile;
            this.listUrunler.DoubleClick += new System.EventHandler(this.listUrunler_DoubleClick);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Ürün Adı";
            this.columnHeader1.Width = 150;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Ürün Fiyatı";
            this.columnHeader2.Width = 150;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Kategori";
            this.columnHeader3.Width = 150;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Barkod";
            this.columnHeader4.Width = 150;
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.Gainsboro;
            this.label1.Dock = System.Windows.Forms.DockStyle.Top;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(0, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(903, 61);
            this.label1.TabIndex = 0;
            this.label1.Text = "ÜRÜN LİSTESİ";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // toolTip1
            // 
            this.toolTip1.BackColor = System.Drawing.Color.Brown;
            this.toolTip1.IsBalloon = true;
            this.toolTip1.ToolTipIcon = System.Windows.Forms.ToolTipIcon.Info;
            this.toolTip1.ToolTipTitle = "Miktarı Azalt";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 30F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1787, 1047);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Kasa Uygulaması";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.contextMenuStrip1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private Panel panel1;
        private Panel panel2;
        private Label label1;
        private Label label2;
        private ListView listUrunler;
        private ColumnHeader columnHeader1;
        private ColumnHeader columnHeader2;
        private ColumnHeader columnHeader3;
        private ColumnHeader columnHeader4;
        private ImageList ımageList1;
        private ImageList ımageList2;
        private ContextMenuStrip contextMenuStrip1;
        private ToolStripMenuItem detaylıGörünümToolStripMenuItem;
        private ToolStripMenuItem listeGörünümüToolStripMenuItem;
        private ToolStripMenuItem döşemeToolStripMenuItem;
        private ToolStripMenuItem küçükResimToolStripMenuItem;
        private ToolStripMenuItem büyükResimToolStripMenuItem;
        private ListView listSepet;
        private ColumnHeader columnHeader5;
        private ColumnHeader columnHeader6;
        private ColumnHeader columnHeader7;
        private ColumnHeader columnHeader8;
        private Panel panel4;
        private Panel panel3;
        private Label lblSepetToplami;
        private Label label3;
        private Button btnAzalt;
        private Button btnArttir;
        private ToolTip toolTip1;
        private ToolTip toolTip2;
        private Button btnSepetiBosalt;
        private Button btnSepettenCikar;
        private ColumnHeader columnHeader9;
    }
}
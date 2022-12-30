namespace KasaUygulamasi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ListViewItem item = new ListViewItem();
            item.Text = "Ekmek";
            item.ImageKey = "ekmek";
            item.SubItems.Add("5,00");
            item.SubItems.Add("Fırın");
            item.SubItems.Add("11111");
            listUrunler.Items.Add(item);

            ListViewItem item2 = new ListViewItem();
            item2.Text = "Üzüm";
            item2.ImageKey = "uzum";
            item2.SubItems.Add("15,00");
            item2.SubItems.Add("Meyve");
            item2.SubItems.Add("22222");
            listUrunler.Items.Add(item2);

            ListViewItem item3 = new ListViewItem();
            item3.Text = "Armut";
            item3.ImageKey = "armut";
            item3.SubItems.Add("25,00");
            item3.SubItems.Add("Meyve");
            item3.SubItems.Add("33333");
            listUrunler.Items.Add(item3);

            ListViewItem item4 = new ListViewItem();
            item4.Text = "Elma";
            item4.ImageKey = "elma";
            item4.SubItems.Add("10,00");
            item4.SubItems.Add("Meyve");
            item4.SubItems.Add("44444");
            listUrunler.Items.Add(item4);

            ListViewItem item5 = new ListViewItem();
            item5.Text = "Çilek";
            item5.ImageKey = "cilek";
            item5.SubItems.Add("20,00");
            item5.SubItems.Add("Meyve");
            item5.SubItems.Add("55555");
            listUrunler.Items.Add(item5);


            this.WindowState = FormWindowState.Maximized;
        }

        private void detaylıGörünümToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (((ToolStripMenuItem)sender).Tag == "details")
                listUrunler.View = View.Details;
            else if (((ToolStripMenuItem)sender).Tag == "list")
                listUrunler.View = View.List;
            else if (((ToolStripMenuItem)sender).Tag == "small")
                listUrunler.View = View.SmallIcon;
            else if (((ToolStripMenuItem)sender).Tag == "large")
                listUrunler.View = View.LargeIcon;
            else if (((ToolStripMenuItem)sender).Tag == "tile")
                listUrunler.View = View.Tile;
        }

        private void listUrunler_DoubleClick(object sender, EventArgs e)
        {
            if (listUrunler.SelectedItems.Count == 0)
                return;

            UrunEkle(listUrunler.SelectedItems[0]);
        }

        private void UrunEkle(ListViewItem seciliUrun)
        {
            //ListViewItem seciliUrun = listUrunler.SelectedItems[0];
            string barkod = seciliUrun.SubItems[3].Text;
            ListViewItem sepettekiUrun = null;

            foreach (ListViewItem eleman in listSepet.Items)
            {
                if (eleman.SubItems[4].Text == barkod)
                {
                    sepettekiUrun = eleman;
                    break;
                }
            }

            if (sepettekiUrun == null)
            {
                ListViewItem item = new ListViewItem();
                item.ImageKey = seciliUrun.ImageKey;
                item.Text = seciliUrun.Text;
                item.SubItems.Add(seciliUrun.SubItems[1].Text + " ₺");
                item.SubItems.Add("1");
                item.SubItems.Add(seciliUrun.SubItems[1].Text + " ₺");
                item.SubItems.Add(barkod);
                listSepet.Items.Add(item);
            }
            else
            {
                decimal birimFiyat = decimal.Parse(sepettekiUrun.SubItems[1].Text.Replace(" ₺", ""));
                int miktar = int.Parse(sepettekiUrun.SubItems[2].Text);
                miktar++;
                decimal tutar = miktar * birimFiyat;
                sepettekiUrun.SubItems[2].Text = miktar.ToString("n0");
                sepettekiUrun.SubItems[3].Text = tutar.ToString("n2") + " ₺";

            }

            Hesapla();
        }

        private void Hesapla()
        {
            decimal sepetToplami = 0;

            foreach (ListViewItem item in listSepet.Items)
            {
                decimal tutar = decimal.Parse(item.SubItems[3].Text.Replace(" ₺", ""));
                sepetToplami += tutar;
            }

            lblSepetToplami.Text = sepetToplami.ToString("n2") + " ₺";
        }

        private void btnSepetiBosalt_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Sepete temizlemek istediğinize emin misiniz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) != DialogResult.Yes)
                return;

            listSepet.Items.Clear();
            Hesapla();
        }

        private void btnSepettenCikar_Click(object sender, EventArgs e)
        {
            if (listSepet.SelectedItems.Count == 0) return; 

            listSepet.Items.Remove(listSepet.SelectedItems[0]);
            Hesapla();
        }

        private void btnArttir_Click(object sender, EventArgs e)
        {
            if (listSepet.SelectedItems.Count == 0)
                return;

            ListViewItem seciliUrun = listSepet.SelectedItems[0];
            decimal birimFiyat = Convert.ToDecimal(seciliUrun.SubItems[1].Text.Replace(" ₺",""));
            int miktar = Convert.ToInt32(seciliUrun.SubItems[2].Text);
            miktar++;
            decimal tutar = birimFiyat * miktar;
            seciliUrun.SubItems[2].Text = miktar.ToString();
            seciliUrun.SubItems[3].Text = tutar.ToString("n2") + " ₺";

            Hesapla();
        }

        private void btnAzalt_Click(object sender, EventArgs e)
        {
            if (listSepet.SelectedItems.Count == 0)
                return;

            ListViewItem seciliUrun = listSepet.SelectedItems[0];
            decimal birimFiyat = Convert.ToDecimal(seciliUrun.SubItems[1].Text.Replace(" ₺", ""));
            int miktar = Convert.ToInt32(seciliUrun.SubItems[2].Text);

            if (miktar == 1)
            {
                listSepet.Items.Remove(listSepet.SelectedItems[0]);
                Hesapla();
                return;
            }

            miktar--;
            decimal tutar = birimFiyat * miktar;
            seciliUrun.SubItems[2].Text = miktar.ToString();
            seciliUrun.SubItems[3].Text = tutar.ToString("n2") + " ₺";

            Hesapla();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textBox1.TextLength <= 4) 
                return;

            ListViewItem bulunanUrun = null;
            foreach (ListViewItem item in listUrunler.Items)
            {
                if (item.SubItems[3].Text == textBox1.Text)
                {
                    bulunanUrun = item;
                    break;
                }
            }

            if (bulunanUrun == null)
                return;

            UrunEkle(bulunanUrun);

            textBox1.Text = "";
            textBox1.Focus();
        }
    }
}
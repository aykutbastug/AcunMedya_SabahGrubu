namespace MusteriTakipUygulamasi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public List<Musteri> Musteriler = new List<Musteri>();

        private void Form1_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 11; i++)
            {
                Musteri musteri = new Musteri();
                musteri.Id = Musteriler.Count() + 1;
                musteri.Adi = "Müşteri";
                musteri.Soyadi = i.ToString();
                musteri.CepTelefonu = "123123123";
                musteri.EvTelefonu = "123123132";
                musteri.FaturaBilgisi.Unvan = "ünvan " + i;
                musteri.FaturaBilgisi.VergiDairesi = "vergi dairesi " + i;
                musteri.FaturaBilgisi.VergiNo = "vn " + i;
                musteri.FaturaBilgisi.Sehir = "";
                musteri.FaturaBilgisi.Ilce = "";
                musteri.FaturaBilgisi.Adres = "";

                Musteriler.Add(musteri);
            }

            MusterileriListele();
        }

        private void listMusteriler_DoubleClick(object sender, EventArgs e)
        {
            Musteri musteri = (Musteri)listMusteriler.SelectedItem;
            txtId.Text = musteri.Id.ToString();
            txtKayitTarihi.Text = musteri.KayitTarihi.ToString();
            txtAdi.Text = musteri.Adi;
            txtSoyadi.Text = musteri.Soyadi;
            txtCepTelefonu.Text = musteri.CepTelefonu;
            txtEvTelefonu.Text = musteri.EvTelefonu;

            txtUnvan.Text = musteri.FaturaBilgisi.Unvan;
            txtVergiDairesi.Text = musteri.FaturaBilgisi.VergiDairesi;
            txtVergiNo.Text = musteri.FaturaBilgisi.VergiNo;
            txtSehir.Text = musteri.FaturaBilgisi.Sehir;
            txtIlce.Text = musteri.FaturaBilgisi.Ilce;
            txtAdres.Text = musteri.FaturaBilgisi.Adres;

            btnSil.Enabled = true;
            btnKaydet.Enabled = true;
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            frmMusteriEkle frm = new frmMusteriEkle(this);
            frm.ShowDialog();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show($"{txtAdi.Text} {txtSoyadi.Text} isimli müşteriyi silmek istiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;


            Musteriler.Remove((Musteri)listMusteriler.SelectedItem);
            MusterileriListele();

            foreach (var item in tabPage1.Controls)
            {
                if (item is TextBox)
                    ((TextBox)item).Text = "";
            }

            foreach (var item in tabPage2.Controls)
            {
                if (item is TextBox)
                    ((TextBox)item).Text = "";
            }
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {

        }

        public void MusterileriListele()
        {
            listMusteriler.DataSource = null;
            listMusteriler.DisplayMember = "AdiSoyadi";
            listMusteriler.ValueMember = "Id";
            listMusteriler.DataSource = Musteriler;
        }

        private void form2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.ShowDialog();
        }

        private void form3ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form3 form3form3 = new Form3();
            form3form3.ShowDialog();
        }

        private void kasaUygulamasıToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmKasaUygulamasi frm = new frmKasaUygulamasi();
            frm.ShowDialog();
        }
    }
}

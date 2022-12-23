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
            btnSil.Enabled = true;
        }

        private void listMusteriler_DoubleClick(object sender, EventArgs e)
        {

        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            frmMusteriEkle frm = new frmMusteriEkle(this);
            frm.ShowDialog();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {

        }

        public void MusterileriListele()
        {
            listMusteriler.DisplayMember = "AdiSoyadi";
            listMusteriler.ValueMember = "Id";

            listMusteriler.DataSource = Musteriler;
        }
    }
}
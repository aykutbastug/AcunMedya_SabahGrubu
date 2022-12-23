using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusteriTakipUygulamasi
{
    public partial class frmMusteriEkle : Form
    {
        Form1 form1;
        public frmMusteriEkle(Form1 form1)
        {
            InitializeComponent();
            this.form1 = form1;
        }

        private void frmMusteriEkle_Load(object sender, EventArgs e)
        {
            txtId.Text = (form1.Musteriler.Count() + 1).ToString();
            txtKayitTarihi.Text = DateTime.Now.ToString();
        }

        private void btnVazgec_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Formu kapatmak istediğinize emin misiniz ?", "Dikkat", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1) == DialogResult.Yes )
            {
                this.Close();   
            }
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            if (btnKaydet.Tag.ToString() == "0")
            {
                if (MessageBox.Show("Fatura bilgilerini unuttunuz. Yinede devam etmek istiyor musunuz ?", "Uyarı", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                    return;
            }

            Musteri musteri = new Musteri();
            musteri.Id = form1.Musteriler.Count() + 1;
            musteri.Adi = txtAdi.Text;
            musteri.Soyadi= txtSoyadi.Text;
            musteri.CepTelefonu = txtCepTelefonu.Text;
            musteri.EvTelefonu= txtEvTelefonu.Text;
            musteri.FaturaBilgisi.Unvan = txtUnvan.Text;
            musteri.FaturaBilgisi.VergiDairesi = txtVergiDairesi.Text;
            musteri.FaturaBilgisi.VergiNo = txtVergiNo.Text;
            musteri.FaturaBilgisi.Sehir = txtSehir.Text;
            musteri.FaturaBilgisi.Ilce = txtIlce.Text;
            musteri.FaturaBilgisi.Adres = txtAdres.Text;

            form1.Musteriler.Add(musteri);
            form1.MusterileriListele();
            this.Close();

        }

        private void frmMusteriEkle_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape)
            {
                btnVazgec_Click(btnVazgec, null);
            }
            else if (e.KeyCode == Keys.Enter)
                btnKaydet_Click(btnKaydet, null);
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnKaydet.Tag = "1";
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp2
{
    public partial class frmHesapMakinesi : Form
    {
        public frmHesapMakinesi()
        {
            InitializeComponent();
        }

        private void btnHesapla_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(txtSayi1.Text);
            int sayi2 = Convert.ToInt32(txtSayi2.Text);
            int sonuc = 0;

            if (comboBox1.SelectedIndex == 0)
                sonuc = sayi1 + sayi2;
            else if (comboBox1.Text == "Çıkar")
                sonuc = sayi1 - sayi2;
            else if (comboBox1.SelectedItem.ToString() == "Çarp")
                sonuc= sayi1 * sayi2;
            else if (comboBox1.SelectedIndex == 3)
                sonuc = sayi1 / sayi2;


            lblSonuc.Text = sonuc.ToString();
        }

        private void txtSayi1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsNumber(e.KeyChar) && ((char)Keys.Back != e.KeyChar))
                e.Handled = true;
        }
    }
}

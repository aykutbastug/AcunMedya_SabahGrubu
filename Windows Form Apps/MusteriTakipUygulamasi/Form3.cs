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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void btnSagaTasi_Click(object sender, EventArgs e)
        {
            if (listBoxSol.SelectedItem == null)
            {
                MessageBox.Show("Sol taraftaki listede seçili eleman yok..");
                return;
            }

            listBoxSag.Items.Add(listBoxSol.SelectedItem);
            listBoxSol.Items.Remove(listBoxSol.SelectedItem);
        }

        private void btnSolaTasi_Click(object sender, EventArgs e)
        {
            if (listBoxSag.SelectedItem == null)
            {
                MessageBox.Show("Sağ taraftaki listede seçili eleman yok..");
                return;
            }

            listBoxSol.Items.Add(listBoxSag.SelectedItem);
            listBoxSag.Items.Remove(listBoxSag.SelectedItem);
        }

        private void btnTumunuSagaTasi_Click(object sender, EventArgs e)
        {
            foreach (var item in listBoxSol.Items)
            {
                listBoxSag.Items.Add(item);
            }

            listBoxSol.Items.Clear();   
        }

        private void btnTumunuSolaTasi_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < listBoxSag.Items.Count; i++)
            {
                listBoxSol.Items.Add(listBoxSag.Items[i]);
            }

            listBoxSag.Items.Clear();
        }
    }
}

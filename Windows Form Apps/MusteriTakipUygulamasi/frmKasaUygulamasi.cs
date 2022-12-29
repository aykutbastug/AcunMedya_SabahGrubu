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
    public partial class frmKasaUygulamasi : Form
    {
        public frmKasaUygulamasi()
        {
            InitializeComponent();
        }

        private void frmKasaUygulamasi_Load(object sender, EventArgs e)
        {
            ListViewItem item = new ListViewItem();
            item.Text = "Kiraz";
            item.ImageKey = "kiraz";

            item.SubItems.Add("5");
            item.SubItems.Add("50");
            item.SubItems.Add("250");

            listView1.Items.Add(item);

            //listView1.Items.Add("Kiraz", "kiraz");
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 0)
                listView1.View = View.LargeIcon;
            else if (comboBox1.SelectedIndex == 1)
                listView1.View = View.SmallIcon;
            else if (comboBox1.SelectedIndex == 2)
                listView1.View = View.Details;
            else if (comboBox1.SelectedIndex == 3)
                listView1.View = View.List;
            else if (comboBox1.SelectedIndex == 4)
                listView1.View = View.Tile;
        }
    }
}

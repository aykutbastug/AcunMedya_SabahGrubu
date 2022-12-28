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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                listBox1.Items.Clear();
                int sayi = Convert.ToInt32(textBox1.Text);
                int say2 = int.Parse(textBox1.Text);

                for (int i = 0; i < sayi; i++)
                {
                    if (i % 2 == 0)
                        listBox1.Items.Add(i);
                }
            }
            catch
            {

                MessageBox.Show("Hatalı veri girdiniz..");
            }
        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar) == false)
                e.Handled = true;
        }
    }
}

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void FormAcildigindaCalis(object sender, EventArgs e)
        {
            //MessageBox.Show("Form açılıyor");

            //label1.TextAlign = ContentAlignment.MiddleRight;
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            this.Text = this.Width + "X" + this.Height;
        }

        private void Form1_DoubleClick(object sender, EventArgs e)
        {
            MessageBox.Show("Çift tıklama yapıldı");
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            //MessageBox.Show(textBox1.Text);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(textBox1.Text);



            //if (textBox3.Visible == true)
            //    textBox3.Visible = false;
            //else
            //    textBox3.Visible = true;



            //if (textBox3.Visible)
            //    textBox3.Visible = false;
            //else
            //    textBox3.Visible = true;


            //textBox3.Visible = textBox3.Visible ? false: true;

            textBox3.Visible = !textBox3.Visible;
        }
    }
}
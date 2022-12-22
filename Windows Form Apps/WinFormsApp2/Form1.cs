namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        List<Ogrenci> ogrenciler = new List<Ogrenci>();

        private void Form1_Load(object sender, EventArgs e)
        {            
            //checkBox1.Checked

            checkedListBox1.Items.Add("deneme");
            dateTimePicker1.Value = DateTime.Now.AddDays(-1);            
            

            Ogrenci ogrenci = new Ogrenci();
            ogrenci.Id = 1;
            ogrenci.Adi = "Aykut";
            ogrenci.Soyadi = "Baştuğ";
            ogrenci.Email = "aykut.bastug@codeove.com";
            ogrenci.OzlukBilgisi.DogumTarihi = DateTime.Now.AddYears(-25);
            ogrenci.OzlukBilgisi.KimlikNo = "11111111111";
            ogrenci.OzlukBilgisi.AnneAdi = "anne adi";
            ogrenci.OzlukBilgisi.BabaAdi = "baba adi";

            Ogrenci ogrenci2 = new Ogrenci { Adi = "Öğrenci", Email = "ogrenci.2@aaa.com", Id = 2, Soyadi = "2" };

            ogrenciler.Add(ogrenci);
            ogrenciler.Add(ogrenci2);
            ogrenciler.Add(new Ogrenci() { Adi = "Öğrenci", Email = "ogrenci.3@aaa.com", Id = 3, Soyadi = "3" });


            //MessageBox.Show(ogrenci.AdiSoyadi);

            //listOgrenciler.DisplayMember = "AdiSoyadi";
            //foreach (Ogrenci item in ogrenciler)
            //{
            //    listOgrenciler.Items.Add(item);
            //}


            listOgrenciler.DisplayMember = "AdiSoyadi";
            listOgrenciler.ValueMember = "Id";
            listOgrenciler.DataSource = ogrenciler;

        }

        private void comboBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsNumber(e.KeyChar))
                e.Handled = true;
        }


        public class Ogrenci
        {
            public int Id { get; set; }

            public string Adi { get; set; }

            public string Soyadi { get; set; }

            public string Email { get; set; }
            public string AdiSoyadi { get { return Adi + " " + Soyadi; } }

            public OzlukBilgisi OzlukBilgisi { get; set; } = new OzlukBilgisi();  

            //propfull + TABB
            //private int myVar;

            //public int MyProperty
            //{
            //    get { return myVar; }
            //    set { myVar = value; }
            //}

        }

        public class OzlukBilgisi
        {
            public int Id { get; set; }

            public string KimlikNo { get; set; }
            public DateTime DogumTarihi { get; set; }
            public string AnneAdi { get; set; }
            public string BabaAdi { get; set; }
        }

        private void listOgrenciler_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listOgrenciler.SelectedItem == null)
                return;

            //int ogrenciId = ((Ogrenci)listOgrenciler.SelectedItem).Id;
            //Ogrenci ogrenci = ogrenciler.Where(x => x.Id == ogrenciId).FirstOrDefault();

            Ogrenci ogrenci = (Ogrenci)listOgrenciler.SelectedItem;
            //ogrenciler.Remove(ogrenci);

            lblId.Text = ogrenci.Id.ToString();
            lblAdi.Text = ogrenci.Adi;
            lblSoyadi.Text = ogrenci.Soyadi;
            lblEmail.Text = ogrenci.Email;

            lblOzlukId.Text = ogrenci.OzlukBilgisi.Id.ToString();
            lblKimlikNo.Text = ogrenci.OzlukBilgisi.KimlikNo;
            lblAnneAdi.Text = ogrenci.OzlukBilgisi.AnneAdi;
            lblBabaAdi.Text = ogrenci.OzlukBilgisi.BabaAdi;
            lblDogumTarihi.Text = ogrenci.OzlukBilgisi.DogumTarihi.ToShortDateString();
        }
    }
}
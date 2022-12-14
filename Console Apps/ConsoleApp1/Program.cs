using System.Net;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Hello, World!");
            //Console.WriteLine(123);
            //Console.WriteLine("Hello, World!");
            //Console.WriteLine("Hello, World!");
            //Console.WriteLine("Hello, World!");

            //Console.WriteLine();
            //Console.W/*riteL*/ine();

            string adi = "Aykut";
            string soyadi = "Baştuğ";
            int sayi1 = 12;
            int sayi2 = 7;
            int sayi3 = 3;
            double ondalik1 = 123.3;
            decimal ondalik2 = 123.3M;
            float ondalik3 = 123.3F;
            bool evetHayir = true;
            bool evetHayir2 = false;
            DateTime gununTarihiUzun = DateTime.Now; //günün tarihi ve saati
            DateTime gununTarihi = DateTime.Today;//sadece günün tarihi

            DateTime yeniTarih = DateTime.Now.AddYears(-5);
            string yeniStringTarih = yeniTarih.ToString("yyyy.MM.dd");

            //Console.WriteLine(gununTarihiUzun);
            //Console.WriteLine(gununTarihi);
            //Console.WriteLine(yeniStringTarih);

            string aa= sayi1.ToString();
            int bb = int.Parse("13");
            int bbb = Convert.ToInt32("13");

            object obje = "asd";
            object obje2 = 123;

            int? cc = null;
            string? dd = null;


            //Console.Write(adi);
            //Console.Write(soyadi);


            int toplam = (sayi1 + sayi2 + sayi3) / 3;
            //int toplam = sayi1 / sayi2;
            //int toplam = sayi1 - sayi2;
            //int toplam = sayi1 * sayi2;
            decimal toplamDecimal = ((decimal)sayi1 + Convert.ToDecimal(sayi2) + decimal.Parse(sayi3.ToString())) / 3;

            Console.WriteLine(toplam);
            Console.WriteLine(toplamDecimal);


            string adiSoyadi = adi + " " + soyadi;
            string adiSoyadi2 = $"{adi} {soyadi}";


            Console.WriteLine("Adınızı Girin:");
            adi = Console.ReadLine();

            Console.WriteLine("Soyadınızı Girin:");
            soyadi = Console.ReadLine();

            Console.WriteLine($"Girilen İsim = {adi} {soyadi}");

            Console.ReadKey();
        }
    }
}
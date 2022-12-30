namespace Ders3_Pratik
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region eleman sayınısı kullanıcının belirlediği ve içini doldurduğu bir dizi örneği
            //Console.WriteLine("Öğrenci Sayısını Giriniz : ");
            //int ogrenciSayisi = int.Parse(Console.ReadLine());

            //string[] ogrenciListsi = new string[ogrenciSayisi];

            //for (int i = 0; i < ogrenciSayisi; i++)
            //{
            //    Console.WriteLine((i + 1) + ". Öğrencinin Adını Giriniz : ");
            //    ogrenciListsi[i] = Console.ReadLine();
            //}


            //ogrenciListsi.Reverse();

            //foreach (var ogrenci in ogrenciListsi)
            //{
            //    Console.WriteLine(ogrenci);
            //} 
            #endregion


            #region girilen kelimeyi tersten yazdırma
            Console.WriteLine("Lütfen bir kelime giriniz :");
            string kelime = Console.ReadLine();

            char[] harfDizisi = kelime.ToCharArray();
            char[] yeniHarfSirasi = harfDizisi.Reverse().ToArray();

            string yeniKelime = "";

            foreach (var harf in yeniHarfSirasi)
            {
                yeniKelime += harf.ToString();
            }


            //string yeniKelime = "";
            //for (int i = kelime.Length - 1; i >= 0; i--)
            //{
            //    yeniKelime += kelime.Substring(i, 1);
            //}



            Console.WriteLine("");
            Console.WriteLine(yeniKelime);
            #endregion




        }
    }
}
namespace Ders3_Pratik_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int secim;

            do
            {
                MenuyuOlustur();

                secim = int.Parse(Console.ReadLine());


                switch (secim)
                {
                    case 1:
                        BaslikOlustur("Toplama İşlemi");
                        ToplamaIslemiYap();
                        break;
                    case 2:
                        BaslikOlustur("Çıkarma İşlemi");
                        CikarmaIslemiYap();
                        break;
                    case 3:
                        BaslikOlustur("Çarpma İşlemi");
                        CarpmaIslemiYap();
                        break;
                    case 4:
                        BaslikOlustur("Bölme İşlemi");
                        BolmeIslemiYap();
                        break;
                    default:
                        break;
                }

            } while (secim != 0);
        }



        private static void BaslikOlustur(string baslik)
        {
            Console.Clear();
            Console.WriteLine(baslik);

            for (int i = 0; i < baslik.Length; i++)
            {
                Console.Write("-");
            }

            Console.WriteLine("");
            Console.WriteLine("");
        }

        private static void MenuyuOlustur()
        {
            Console.Clear();
            Console.WriteLine("Hesap Makinesi Uygulaması");
            Console.WriteLine("-------------------------");
            Console.WriteLine("Menü");
            Console.WriteLine("1 - Toplama İşlemi Yap");
            Console.WriteLine("2 - Çıkarma İşlemi Yap");
            Console.WriteLine("3 - Çarpma İşlemi Yap");
            Console.WriteLine("4 - Bölme İşlemi Yap");
            Console.WriteLine("0 - Uygulamayı Kapat");
            Console.WriteLine("");

            Console.WriteLine("Hangi işlemi yapmak istiyorsunuz ?");
        }

        private static void DevamUyariCikar()
        {
            Console.WriteLine("");
            Console.WriteLine("Lütfen devam etmek için bir tuşa basın..");
            Console.ReadKey();
        }
        private static void ToplamaIslemiYap()
        {

            Console.WriteLine("Lütfen 1. Sayıyı Giriniz : ");
            int sayi1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Lütfen 2. Sayıyı Giriniz : ");
            int sayi2 = int.Parse(Console.ReadLine());

            int toplam = sayi1 + sayi2;
            Console.WriteLine("Girilen sayıların toplamı = " + toplam);

            DevamUyariCikar();
        }
        private static void CikarmaIslemiYap()
        {

            Console.WriteLine("Lütfen 1. Sayıyı Giriniz : ");
            int sayi1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Lütfen 2. Sayıyı Giriniz : ");
            int sayi2 = int.Parse(Console.ReadLine());

            int sonuc = sayi1 - sayi2;
            Console.WriteLine("Girilen sayıların sonucu = " + sonuc);
            
            DevamUyariCikar();
        }

        private static void CarpmaIslemiYap()
        {

            Console.WriteLine("Lütfen 1. Sayıyı Giriniz : ");
            int sayi1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Lütfen 2. Sayıyı Giriniz : ");
            int sayi2 = int.Parse(Console.ReadLine());

            int sonuc = sayi1 * sayi2;
            Console.WriteLine("Girilen sayıların sonucu = " + sonuc);

            DevamUyariCikar();
        }

        private static void BolmeIslemiYap()
        {

            Console.WriteLine("Lütfen 1. Sayıyı Giriniz : ");
            int sayi1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Lütfen 2. Sayıyı Giriniz : ");
            int sayi2 = int.Parse(Console.ReadLine());

            int sonuc = sayi1 / sayi2;
            Console.WriteLine("Girilen sayıların sonucu = " + sonuc);

            DevamUyariCikar();
        }
    }
}
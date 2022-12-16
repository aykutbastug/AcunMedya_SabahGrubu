namespace ConsoleApp5
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //string[] meyveler = { "elma", "armut" };
            //string[] renkler = new string[4];
            //renkler[0] = "kırmızı";
            //renkler[1] = "beyaz";
            //renkler[2] = "siyah";
            //renkler[3] = "sarı";


            //int[] sayilar = { 1, 2, 3 };

            //for (int i = 0; i < renkler.Length; i++)
            //{
            //    Console.WriteLine(renkler[i]);
            //}


            //foreach (string item in renkler.Reverse())
            //{
            //    Console.WriteLine(item);
            //}



            //bir tane dizi oluşturalım
            //bu dizinin boyutunu kullanıcıdan isteyelim
            //eleman sayısını integer girmezse tekrar girmesini sağlayalım
            //eleman sayısı girdikten sınra tek tek tüm elemanları doldurmasını isteyelim

            int uzunluk = 0;

            do
            {
                try
                {
                    Console.WriteLine("Dizinin boyutunu giriniz :");
                    uzunluk = Convert.ToInt32(Console.ReadLine());
                }
                catch {; } 
            } while (uzunluk == 0);

            string[] dizi = new string[uzunluk];


            for (int i = 0; i < dizi.Length; i++)
            {
                Console.WriteLine($"{ (i + 1) }. Elamını Girin :");
                dizi[i] = Console.ReadLine();
            }

            Console.WriteLine("\n\nDizinin elemanlar");

            foreach (var item in dizi)
            {
                Console.WriteLine(item);
            }

        }
    }
}
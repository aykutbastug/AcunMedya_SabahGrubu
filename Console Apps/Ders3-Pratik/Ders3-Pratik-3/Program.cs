namespace Ders3_Pratik_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region raplace metodu kullanımı örneği, datetime metotları örnekleri
            //string mailIcerigi = "Sayın {AdiSoyadi}, {Tarih} tarihinde almış olduğunuz ürünlera ait sipariş numaranız {SiparisNo} dir. Bu numara ile sipairşinizi takip edebilirsiniz.";

            ////kulllanıcıdan isim soyisim alanıcak
            ////kullanıcıdan sipariş numarası alanıcak
            ////ilgili değerleri değiştirek yeni metni ekrana yazıdralım.

            //Console.WriteLine("Müşteri Adını ve Soyadını Giriniz : ");
            //string adiSoyadi = Console.ReadLine();

            //Console.WriteLine("Sipariş Numarasını Giriniz : ");
            //string siparisNo = Console.ReadLine();

            //mailIcerigi = mailIcerigi.Replace("{AdiSoyadi}", adiSoyadi);
            //mailIcerigi = mailIcerigi.Replace("{SiparisNo}", siparisNo);
            //mailIcerigi = mailIcerigi.Replace("{Tarih}", DateTime.Today.ToString("dd.MM.yyyy"));


            //Console.WriteLine(mailIcerigi); 
            #endregion




            #region dizi kullanım örneği
            //5 elemanlı bir string dizisi olacak
            //dizinin elemanlarını kullanıcı girecek.
            //dizinin içindeki en uzun metni ekrana yazacak
            //en uzun metnin karakter sayısını yazacak
            //en uzun metnin dizideki index numarasını ekrana yazacak 


            string[] dizi = new string[5];
            for (int i = 0; i < dizi.Length; i++)
            {
                Console.WriteLine((i + 1) + ". elamanı giriniz :");
                dizi[i] = Console.ReadLine();
            }

            int uzunluk = 0;
            string enUzunMetin = "";
            int karakterSayisi = 0;
            int indexNo = 0;

            for (int i = 0; i < dizi.Length; i++)
            {
                if (dizi[i].Length > uzunluk)
                {
                    uzunluk = dizi[i].Length;
                    enUzunMetin = dizi[i];
                    karakterSayisi = dizi[i].Length;
                    indexNo = i;
                }
            }

            Console.WriteLine("-------------");
            Console.WriteLine("Dizinin içindeki en uzun metin = " + enUzunMetin);
            Console.WriteLine("Dizideki en uzun metnin karakter sayısı = " + karakterSayisi.ToString());
            Console.WriteLine("Dizideki en uzun metnin index numarası = " + indexNo);
            Console.ReadKey();

            #endregion
        }
    }
}
namespace ConsoleApp2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int sayi1 = 123;
            int sayi2 = 345;

            if (sayi1 > sayi2) 
            {
                Console.WriteLine("1.sayı büyük");
            }
            else if (sayi1 == sayi2)
            {
                Console.WriteLine("sayılar eşit");
            }
            else
            {
                Console.WriteLine("2.sayı büyük");
            }


            //if (sayi1 > sayi2 || sayi1 != null)
            //{
            //    Console.WriteLine("1.sayı büyük");
            //}

            #region Trafik ışık örneği
            //Console.WriteLine("Işık rengini giriniz : (Kırmızı, Sarı, Yeşil)");

            //string isik = Console.ReadLine();

            //switch (isik)
            //{
            //    case "Kirmizi":
            //        Console.WriteLine("Lütfen bekleyiniz");
            //        break;
            //    case "Sari":
            //        Console.WriteLine("Hazırlan..");
            //        break;
            //    case "Yeşil":
            //        Console.WriteLine("Geçebilirsiniz");
            //        break;
            //    default:
            //        Console.WriteLine("Yanlış bir ışık girdiniz..");
            //        break;
            //} 
            #endregion


            #region Harf Notu Hesaplama
            //0-45  > FF
            //45-50 > DD
            //50-60 > CD
            //60-70 > CC
            //70-80 > BB
            //80-90 > BA
            //90-100> AA


            //int not1, not2, not3;
            //Console.WriteLine("1. Sınav Notunu Gir:");
            //not1 = Convert.ToInt32(Console.ReadLine());

            //Console.WriteLine("2. Sınav Notunu Gir:");
            //not2 = Convert.ToInt32(Console.ReadLine());

            //Console.WriteLine("3. Sınav Notunu Gir:");
            //not3 = Convert.ToInt32(Console.ReadLine());


            //int ortalama = (not1 + not2 + not3) / 3;
            //string harfNotu = "";

            //if (ortalama >= 0 && ortalama < 45)
            //    harfNotu = "FF";
            //else if (ortalama >= 45 && ortalama < 50)
            //    harfNotu = "DD";
            //else if (ortalama >= 50 && ortalama < 60)
            //    harfNotu = "CC";
            //else if (ortalama >= 70 && ortalama < 80)
            //    harfNotu = "BB";
            //else if (ortalama >= 80 && ortalama < 90)
            //    harfNotu = "BA";
            //else
            //    harfNotu = "AA";



            ////Console.WriteLine("Sınav Notunuz = " + ortalama + ", harf Notunuz = " + harfNotu);
            //Console.WriteLine($"Sınav Notunuz = {ortalama}\nHarf Notunuz = {harfNotu}"); 
            #endregion


            #region haftanın günü örneği
            // 1 ile 7 arasında sayı girmesini isteyeceğiz
            // girilen sayı haftanın hangi gününe geliyorsa günün ismini ekrana  yazdıracağız
            // swich kullanılacak
            // örneğin 1 yazıldığın ekrana Pazartesi yazacak 


            Console.WriteLine("Bir sayı giriniz. (1,2,3,4,5,6,7)");
            string gun = Console.ReadLine();

            switch (gun)
            {
                case "1":
                    Console.WriteLine("Pazartesi");
                    break;
                case "2":
                    Console.WriteLine("Salı");
                    break;
                case "3":
                    Console.WriteLine("Çarşamba");
                    break;
                case "4":
                    Console.WriteLine("Perşembe");
                    break;
                case "5":
                    Console.WriteLine("Cuma");
                    break;
                case "6":
                    Console.WriteLine("Cumartesi");
                    break;
                case "7":
                    Console.WriteLine("Pazar");
                    break;
                default:
                    Console.WriteLine("Hatalı bir sayı girdiniz.");
                    break;
            }

            #endregion




        }
    }
}
namespace ConsoleApp6
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //for (int i = 0; i < 5; i++)
            //{
            //    DenemeMetot();                
            //}

            //DenemeMetot();
            //DenemeMetot("deneme mesaj", 123);

            //DenemeMetot();
            //DenemeMetot("aykut baştuğ");
            //DenemeMetot("aykut baştuğ");

            //EkranaYaz();

            int sonuc = SayilariTopla(9, 6);
            Console.WriteLine(sonuc);
            Console.WriteLine(SayilariTopla());
            EkranaYaz(sonuc.ToString());
            EkranaYaz(SayilariTopla().ToString());

        }

        //static void DenemeMetot()
        //{
        //    Console.WriteLine("Hello, World!");
        //}

        static void DenemeMetot(string mesaj, int mesaj2)
        {
            Console.WriteLine(mesaj);
        }

        static void DenemeMetot(string mesaj = "deneme")
        {
            EkranaYaz(mesaj);
        }

        static void EkranaYaz(string mesaj)
        {
            Console.WriteLine(mesaj);
        }

        static int SayilariTopla()
        {
            return 5 + 4;
        }
        static int SayilariTopla(int sayi1, int sayi2)
        {
            return sayi1 + sayi2;
        }


        //sayıyı isteyen metot olacak
        //iki sayı parametre alan ve geriye toplamını döndüren bir metot olacak
        //girilen iki sayının toplamını ekrana yazdıracak
    }
}
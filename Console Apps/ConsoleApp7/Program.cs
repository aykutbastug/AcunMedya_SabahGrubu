namespace ConsoleApp7
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //sayıyı isteyen metot olacak
            //iki sayı parametre alan ve geriye toplamını döndüren bir metot olacak
            //girilen iki sayının toplamını ekrana yazdıracak



            //int sayi1 = SayiOku(1);
            //int sayi2 = SayiOku(2);
            //SonucuEkranaYaz(sayi1, sayi2);

            SonucuEkranaYaz(SayiOku(1), SayiOku(2));

        }

        static int SayiOku(int hangiSayi)
        {
            Console.WriteLine(hangiSayi + ". Sayıyı Girin");
            return Convert.ToInt32(Console.ReadLine());
        }

        static void SonucuEkranaYaz(int sayi1, int sayi2)
        {
            Console.WriteLine(sayi1 + sayi2);
        }
    }
}
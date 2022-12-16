namespace ConsoleApp4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //for (int i = 0; i < 10; i++)
            //{
            //    Console.WriteLine("Hello, World!");
            //}


            //for (char i = 'A'; i < 'Z'; i++)
            //{
            //    Console.WriteLine(i);
            //}


            //Console.WriteLine("Bir sayı girin:");
            //int sayi = int.Parse(Console.ReadLine());

            //for (int i = 0; i < sayi; i++)
            //{
            //    Console.WriteLine($"{i} sayısı { (i % 2 == 0 ? "çifttir" : "tektir") }");

            //}


            //int i = 0;
            //while (i < 10)
            //{
            //    Console.WriteLine(i);
            //    i++;
            //}


            //for (int i = 0; i < 10; i++)
            //{
            //    if (i == 3)
            //        continue;

            //    Console.WriteLine(i);


            //    if (i == 6)
            //        break;
            //}

            //for (int i = 0; i < 10; i++)
            //{
            //    Console.WriteLine(i);


            //    for (int a = 50; a < 55; a++)
            //    {
            //        Console.WriteLine(a * i);
            //    }
            //}

            int giris = 0;
            do
            {
                Console.WriteLine("Çıkmak için klavyeden 1 tuşuna basın..");
                giris = Convert.ToInt32(Console.ReadLine());   

            } while (giris != 1);





        }
    }
}
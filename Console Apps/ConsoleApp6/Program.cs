﻿namespace ConsoleApp6
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

            int sonuc = SayilariTopla();
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
    }
}
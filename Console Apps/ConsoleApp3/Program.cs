namespace ConsoleApp3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Bir sayı giriniz:");

            //try
            //{
            //    int sayi = Convert.ToInt32(Console.ReadLine());
            //}
            //catch (Exception ex)
            //{
            //    //Console.WriteLine(ex.Message);
            //    Console.WriteLine(ex.StackTrace);
            //}


            try
            {
                int sayi = Convert.ToInt32(Console.ReadLine());
            }
            catch 
            {
                ;
            }

            Console.ReadKey();
        }
    }
}
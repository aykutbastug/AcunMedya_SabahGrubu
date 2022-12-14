namespace SinavNotOrtalamasi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int not1;
            int not2;
            int not3;

            Console.WriteLine("1. Sınav Notunu Girin :");
            not1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("2. Sınav Notunu Girin :");
            not2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("3. Sınav Notunu Girin :");
            not3 = Convert.ToInt32(Console.ReadLine());

            int ortalama = (not1 + not2 + not3) / 3;
            Console.WriteLine(ortalama.ToString());
        }
    }
}
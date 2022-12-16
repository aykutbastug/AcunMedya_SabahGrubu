namespace ConsoleApp8
{
    internal class Program
    {
        static void Main(string[] args)
        {
            
            Console.WriteLine("Tam Tarih :" + DateTime.Now);
            Console.WriteLine("Formatlanmış :" + DateTime.Now.ToString("MM.dd.yyyy"));
            Console.WriteLine("Kısa Tarih :" + DateTime.Now.ToShortDateString());
            Console.WriteLine("Uzun Tarih :" + DateTime.Now.ToLongDateString());

            Console.WriteLine("Kısa saat :" + DateTime.Now.ToShortTimeString());
            Console.WriteLine("Uzun saat :" + DateTime.Now.ToLongTimeString());


            string adi = " aykut baştuğ ";

            //trim metotları ile boşlukları kaldırabilirsiniz
            Console.WriteLine(adi.Trim());
            Console.WriteLine(adi.TrimEnd());
            Console.WriteLine(adi.TrimStart());

            //harf veya kelime değiştirmek için kullanılır
            Console.WriteLine(adi.Replace(" ", ""));

            //0000050
            //0000051
            //0000052
            string siraNo = "150";
            string siparisNo = siraNo.PadLeft(6, '0');
            string siparisNo1 = siraNo.PadRight(6, '0');


            //string bir değerin içinden parça almak için kullanılır
            string parcaAl = adi.Substring(5, 3);
            Console.WriteLine(parcaAl);

            //bütün karakterleri küçük harfe dönüştürür
            Console.WriteLine(adi.ToLower());

            //bütün karakterleri büyük harfe dönüştürür
            Console.WriteLine(adi.ToUpper());


            //belirlenen bir karaktere göre parçalama işlemi yapıyor
            string meyveler = "elma armut erik";
            //string[] dizi = meyveler.Split(' ');
            string[] dizi = meyveler.Split('m');


            //her bir karaktere ait bir char tipinde dizi oluşturur
            char[] karakterler = adi.ToCharArray();


            char harf = 'a';
            bool sayimi = char.IsNumber(harf);



            Console.WriteLine("Lütfen bir değer girin:");
            string girilenDeger = Console.ReadLine();
            char[] harfler = girilenDeger.ToCharArray();

            bool sayiMi = true;
            foreach (var item in harfler)
            {
                if (char.IsNumber(item) == false)
                //if (!char.IsNumber(item))
                {
                    sayiMi = false;
                    break;
                }
            }

            Console.WriteLine("Girilen değer bir " + (sayiMi ? "sayıdır" : "sayı değildir"));

            //if (sayiMi)
            //    Console.WriteLine("Girilen değer bir sayıdır");
            //else
            //    Console.WriteLine("Girilen değer bir sayı değildir");

            //if (sayiMi == true)
            //    Console.WriteLine("Girilen değer bir sayıdır");
            //else
            //    Console.WriteLine("Girilen değer bir sayı değildir");


        }
    }
}
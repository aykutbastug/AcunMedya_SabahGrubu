using System.ComponentModel;

namespace WebApplication4.Models
{
    public class Musteri
    {
        [DisplayName("No")]
        public int Id { get; set; }

        [DisplayName("Kayıt Tarihi")]
        public DateTime KayitTarihi { get; set; } = DateTime.Now;

        [DisplayName("Ünvan")]
        public string Unvan { get; set; }

        [DisplayName("Telefon")]
        public string Telefon { get; set; }

        [DisplayName("E-Fatura")]
        public bool EFaturaMukellefi { get; set; }

        [DisplayName("Toplam Alacak")]
        public double ToplamAlacak { get; set; }

        [DisplayName("Toplam Borç")]
        public double ToplamBorc { get; set; }
    }
}

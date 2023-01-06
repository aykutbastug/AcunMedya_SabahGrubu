using System.ComponentModel;

namespace WebApplication3.Models
{
    public class Ogrenci
    {
        [DisplayName("No")]
        public int Id { get; set; }

        [DisplayName("Adı")]
        public string Adi { get; set; }

        [DisplayName("Soyadı")]
        public string Soyadi { get; set; }

        [DisplayName("Bölüm")]
        public string Bolum { get; set; }

        [DisplayName("Doğum Tarihi")]
        public DateTime DogumTarihi { get; set; }

        [DisplayName("Email")]
        public string Email { get; set; }
    }
}

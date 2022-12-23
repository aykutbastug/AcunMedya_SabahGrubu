using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusteriTakipUygulamasi
{
    public class Musteri
    {
        public int Id { get; set; }
        public DateTime KayitTarihi { get; set; } = DateTime.Now;

        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public string CepTelefonu { get; set; }
        public string EvTelefonu { get; set; }

        public string AdiSoyadi { get { return  $"{Adi} {Soyadi} ({CepTelefonu})"; } }

        public FaturaBilgisi FaturaBilgisi { get; set; } = new FaturaBilgisi();
    }
}

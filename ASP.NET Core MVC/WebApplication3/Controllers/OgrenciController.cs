using MFramework.Services.FakeData;
using Microsoft.AspNetCore.Mvc;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    public class OgrenciController : Controller
    {
        static List<Ogrenci> Ogrenciler = new List<Ogrenci>();
        public IActionResult Index()
        {
            Ogrenci ogrenci = new Ogrenci();
            ogrenci.Adi = NameData.GetFirstName();
            ogrenci.Soyadi = NameData.GetSurname();
            ogrenci.DogumTarihi = DateTimeData.GetDatetime();
            ogrenci.Bolum = NameData.GetDepartmentName();
            ogrenci.Email = NetworkData.GetEmail();


            return View(ogrenci);
        }

        public IActionResult OgrenciListesi()
        {
            if (Ogrenciler.Count == 0)
            {
                for (int i = 1; i < 15; i++)
                {
                    Ogrenci ogrenci = new Ogrenci();
                    ogrenci.Id = i;
                    ogrenci.Adi = NameData.GetFirstName();
                    ogrenci.Soyadi = NameData.GetSurname();
                    ogrenci.DogumTarihi = DateTimeData.GetDatetime();
                    ogrenci.Bolum = NameData.GetDepartmentName();
                    ogrenci.Email = NetworkData.GetEmail();

                    Ogrenciler.Add(ogrenci);
                } 
            }

            return View(Ogrenciler);
        }

        public IActionResult OgrenciEkle()
        {
            return View();
        }

        [HttpPost]
        public IActionResult OgrenciEkle(Ogrenci ogrenci)
        {
            ogrenci.Id = Ogrenciler.Count + 1;
            Ogrenciler.Add(ogrenci);

            return RedirectToAction("OgrenciListesi");
        }

        public IActionResult OgrenciDuzenle(int id)
        {
            Ogrenci ogrenci = Ogrenciler.FirstOrDefault(x => x.Id == id);

            return View(ogrenci);
        }
        [HttpPost]
        public IActionResult OgrenciDuzenle(Ogrenci ogrenci)
        {
            Ogrenci _ogrenci = Ogrenciler.FirstOrDefault(x => x.Id == ogrenci.Id);
            _ogrenci.Adi = ogrenci.Adi;
            _ogrenci.Soyadi = ogrenci.Soyadi;
            _ogrenci.Bolum = ogrenci.Bolum;
            _ogrenci.DogumTarihi = ogrenci.DogumTarihi;
            _ogrenci.Email = ogrenci.Email;

            return RedirectToAction("OgrenciListesi");
        }

        public IActionResult OgrenciSil(int id)
        {
            Ogrenci ogrenci = Ogrenciler.FirstOrDefault(x => x.Id == id);

            return View(ogrenci);
        }
        [HttpPost]
        public IActionResult OgrenciSil(Ogrenci ogrenci)
        {
            Ogrenci _ogrenci = Ogrenciler.FirstOrDefault(x => x.Id == ogrenci.Id);
            Ogrenciler.Remove(_ogrenci);

            return RedirectToAction("OgrenciListesi");
        }
    }
}

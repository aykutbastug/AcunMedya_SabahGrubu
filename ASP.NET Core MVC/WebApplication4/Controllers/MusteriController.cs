using MFramework.Services.FakeData;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using WebApplication4.Models;

namespace WebApplication4.Controllers
{
    public class MusteriController : Controller
    {
        static List<Musteri> Musteriler = new List<Musteri>();
        public IActionResult Index()
        {
            if (Musteriler.Count == 0)
            {
                for (int i = 1; i < 10; i++)
                {
                    Musteriler.Add(new Musteri() { 
                        Id = i,
                        EFaturaMukellefi = BooleanData.GetBoolean(),
                        KayitTarihi = DateTimeData.GetDatetime(),
                        Telefon = PhoneNumberData.GetPhoneNumber(),
                        Unvan = NameData.GetCompanyName(),
                        ToplamAlacak = NumberData.GetDouble(),
                        ToplamBorc = NumberData.GetDouble()
                    }); 
                }
            }

            return View(Musteriler);
        }

        public IActionResult Create()
        {

            return View();
        }

        [HttpPost]
        public IActionResult Create(Musteri musteri)
        {
            Musteriler.Add(musteri);

            return RedirectToAction("Index");
        }

        public IActionResult Edit(int id)
        {
            Musteri musteri = Musteriler.FirstOrDefault(x => x.Id == id);

            return View(musteri);
        }
    }
}

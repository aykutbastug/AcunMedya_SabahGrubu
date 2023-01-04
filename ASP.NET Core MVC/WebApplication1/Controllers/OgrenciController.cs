using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    public class OgrenciController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult OgrenciEkle()
        {
            return View();
        }
    }
}

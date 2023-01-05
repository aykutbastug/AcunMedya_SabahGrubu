using Microsoft.AspNetCore.Mvc;

namespace WebApplication2.Controllers
{
    public class OgrenciController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

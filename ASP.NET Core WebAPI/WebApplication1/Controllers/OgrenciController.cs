using MFramework.Services.FakeData;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OgrenciController : ControllerBase
    {

        [HttpGet]
        public List<Ogrenci> Get()
        {
            List<Ogrenci> ogrenciler = new List<Ogrenci>();
            for (int i = 0; i < 10; i++)
            {
                ogrenciler.Add(new Ogrenci
                {
                    BirthDay = DateTimeData.GetDatetime(),
                    Department = NameData.GetDepartmentName(),
                    Email = NetworkData.GetEmail(),
                    Id= i,
                    Name = NameData.GetFirstName(),
                    Surname = NameData.GetSurname()
                });
            }

            return ogrenciler;
        }

        [HttpPost("OgrenciOlustur")]
        public ActionResult OgrenciOlustur([FromBody]Ogrenci ogrenci)
        {


            return Ok("Öğrenci kaydı oluşturuldu..");
        }
    }
}

using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MusteriController : ControllerBase
    {
        // GET: api/<MusteriController>
        [HttpGet("TumMusterileriGetir")]
        public List<Musteri> TumMusterileriGetir()
        {
            List<Musteri> musteriler = new List<Musteri>();

            musteriler.Add(new Musteri { CompanyName = "sdad", Email="aaa@aaa.com", Id=1 });
            musteriler.Add(new Musteri { CompanyName = "bbbb", Email = "bbb@bbb.com", Id = 1 });

            return musteriler;
        }

        // GET api/<MusteriController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<MusteriController>
        [HttpPost]
        public ActionResult Post([FromBody] Musteri musteri)
        {
            return Ok("asdfafd");
            //return BadRequest("Email adresi sistemde kayıtlı");
        }

        // PUT api/<MusteriController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<MusteriController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}



//tüm listeyi getirme metodu olacak (fakeDaTa nuget paketiyle 10 tane kayıt dönsün)
//yeni öğrenci ekleme metodu olacak
//Öğrenci silme metodu olacak

//Öğrenci verileri : Id, Adı, Soyadı, DoğumTarihi, EMail, Bölüm

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios;

namespace WebApiSQLServer.Controllers
{
    [Route("apis/profesor/noticia")]
    public class NoticiaController : Controller
    {
        private readonly AppDbContext _context;

        public NoticiaController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public List<Noticias> GetAllNoticias()
        {
            return NoticiasRepocitorio.GetAllNoticias();
        }
        [HttpGet("{id_Noticia}")]
        public IEnumerable<Noticias> GetNoticia(int id_Noticia)
        {
            return NoticiasRepocitorio.GetNoticia(id_Noticia);
        }

        [HttpPost]
        public bool PostNoticia([FromBody] Noticias noticia)
        {
            return NoticiasRepocitorio.PostNoticia(noticia);
        }
        [HttpPut("{id_Noticia}")]
        public bool UpdateNoticia([FromBody] Noticias noticia, int id_Noticia)
        {
            return NoticiasRepocitorio.UpdateNoticia(noticia, id_Noticia);
        }

        [HttpDelete("{id_Noticia}")]
        public bool DeleteNoticia(int id_Noticia)
        {
            return NoticiasRepocitorio.DeleteNoticia(id_Noticia);
        }
    }
}

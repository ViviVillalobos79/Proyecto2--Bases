using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos.Profesores;
using WebApiSQLServer.Repositorios.Profesores;

namespace WebApiSQLServer.Controllers.Profesores
{
    [Route("apis/profesor/noticia")]
    [ApiController]
    public class NoticiaController : ControllerBase
    {
        private readonly AppDbContext _context;

        public NoticiaController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Noticia> GetAllNoticias()
        {
            return NoticiaRepositorio.GetAllNoticias();
        }
        [HttpGet("{id_Noticia}")]
        public IEnumerable<Noticia> GetNoticia(int id_Noticia)
        {
            return NoticiaRepositorio.GetNoticia(id_Noticia);
        }

        [HttpPost]
        public bool PostNoticia(Noticia noticia)
        {
            return NoticiaRepositorio.PostNoticia(noticia);
        }
        [HttpPut("{id_Noticia}")]
        public bool UpdateNoticia(Noticia noticia, int id_Noticia)
        {
            return NoticiaRepositorio.UpdateNoticia(noticia, id_Noticia);
        }

        [HttpDelete("{id_Noticia}")]
        public bool DeleteNoticia(int id_Noticia)
        {
            return NoticiaRepositorio.DeleteNoticia(id_Noticia);
        }
    }
}

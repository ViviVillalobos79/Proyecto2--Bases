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
    [Route("apis/profesor/carpeta")]
    public class CarpetaController : Controller
    {
        private readonly AppDbContext _context;

        public CarpetaController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Carpeta> GetAllCarpeta()
        {
            return CarpetaRepositorio.GetAllCarpetas();
        }
        [HttpGet("{id_carpeta}")]
        public IEnumerable<Carpeta> GetCarpeta(int id_carpeta)
        {
            return CarpetaRepositorio.GetCarpeta(id_carpeta);
        }

        [HttpPost]
        public bool PostCarpeta([FromBody] Carpeta carpeta)
        {
            return CarpetaRepositorio.postCarpeta(carpeta);
        }
        [HttpPut("{id_carpeta}")]
        public bool UpdateCurso([FromBody] Carpeta carpeta, int id_carpeta)
        {
            return CarpetaRepositorio.UpdateCarpeta(carpeta, id_carpeta);
        }

        [HttpDelete("{id_carpeta}")]
        public bool DeleteCurso(int id_carpeta)
        {
            return CarpetaRepositorio.DeleteCarpeta(id_carpeta);
        }
    }
}

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
    [Route("apis/profesor/carpeta")]
    [ApiController]
    public class CarpetaController : ControllerBase
    {
        private readonly AppDbContext _context;

        public CarpetaController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Carpeta> GetAllCarpetas()
        {
            return CarpetaRepositorio.GetAllCarpetas();
        }
        [HttpGet("{id_Carpeta}")]
        public IEnumerable<Carpeta> GetCarpeta(int id_Carpeta)
        {
            return CarpetaRepositorio.GetCarpeta(id_Carpeta);
        }

        [HttpPost]
        public bool PostCarpeta(Carpeta Carpeta)
        {
            return CarpetaRepositorio.PostCarpeta(Carpeta);
        }
        [HttpPut("{id_Carpeta}")]
        public bool UpdateCarpeta(Carpeta Carpeta, int id_Carpeta)
        {
            return CarpetaRepositorio.UpdateCarpeta(Carpeta, id_Carpeta);
        }

        [HttpDelete("{id_Carpeta}")]
        public bool DeleteCarpeta(int id_Carpeta)
        {
            return CarpetaRepositorio.DeleteCarpeta(id_Carpeta);
        }
    }
}


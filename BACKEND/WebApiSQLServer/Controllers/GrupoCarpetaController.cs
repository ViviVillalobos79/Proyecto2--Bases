using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios;

namespace WebApiSQLServer.Controllers
{
    [Route("apis/profesor/grupo/carpeta")]
    public class GrupoCarpetaController : Controller
    {
        private readonly AppDbContext _context;

        public GrupoCarpetaController(AppDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public bool postGrupoCarpeta([FromBody] GrupoCarpeta curso)
        {
            return GrupoCarpetaRepositorio.PostCarpetaGrupo(curso);
        }
    }
}

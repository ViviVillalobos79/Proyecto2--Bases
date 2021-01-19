using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios;

namespace WebApiSQLServer.Controllers
{
    public class ConsultaController : Controller
    {
        [HttpPost]
        [Route("apis/profesor/carpetagrupo")]
        public static bool postCarpetaGrupo([FromBody] Grupo_Carpetas carpeta)
        {
            return ConsultasProfesorRepositorio.PostCarpetaGrupo(carpeta);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApiSQLServer.Modelos.Consultas;
using WebApiSQLServer.Repositorios;
namespace WebApiSQLServer.Controllers
{
    //[Route("api/[controller]")]
    //[ApiController]
    public class VistasController : ControllerBase
    {
        //[St]
        public static bool postCarpetasgrupo(SP_grupo_carpetas carpeta)
        {
            return VistasRepositorio.PostCarpeta(carpeta);
        }
    }
}

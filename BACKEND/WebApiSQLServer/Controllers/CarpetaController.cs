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
        //--------------------------------------------------------------------//
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
        public static bool postCarpetasGrupo([FromBody]SP_grupo_carpetas carpeta)
        {
            return CarpetaRepositorio.PostCarpeta(carpeta);
        }

        [HttpPut("{id_Carpeta}")]
        public bool UpdateCarpeta([FromBody]Carpeta Carpeta, int id_Carpeta)
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

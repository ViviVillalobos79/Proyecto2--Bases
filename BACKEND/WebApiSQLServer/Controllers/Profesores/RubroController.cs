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
    [Route("apis/profesor/rubro")]
    [ApiController]
    public class RubroController : ControllerBase
    {
        private readonly AppDbContext _context;

        public RubroController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Rubro> GetAllRubros()
        {
            return RubroRepositorio.GetAllRubros();
        }
        [HttpGet("{id_Rubro}")]
        public IEnumerable<Rubro> GetRubro(int id_Rubro)
        {
            return RubroRepositorio.GetRubro(id_Rubro);
        }

        [HttpPost]
        public bool PostRubro(Rubro rubro)
        {
            return RubroRepositorio.PostRubro(rubro);
        }
        [HttpPut("{id_Rubro}")]
        public bool UpdateRubro(Rubro rubro, int id_Rubro)
        {
            return RubroRepositorio.UpdateRubro(rubro, id_Rubro);
        }

        [HttpDelete("{id_Rubro}")]
        public bool DeleteRubro(int id_Rubro)
        {
            return RubroRepositorio.DeleteRubro(id_Rubro);
        }
    }
}

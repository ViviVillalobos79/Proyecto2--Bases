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
    [Route("apis/profesor/rubro")]
    public class RubroController : Controller
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
        public bool PostRubro([FromBody]Rubro rubro)
        {
            return RubroRepositorio.PostRubro(rubro);
        }
        [HttpPut("{id_Rubro}")]
        public bool UpdateRubro([FromBody]Rubro rubro, int id_Rubro)
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

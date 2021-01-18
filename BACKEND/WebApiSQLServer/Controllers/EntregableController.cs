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
    [Route("apis/profesor/entregable")]
    public class EntregableController : Controller
    {
        private readonly AppDbContext _context;

        public EntregableController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Entregable> GetAllEntregables()
        {
            return EntregableRepositorio.GetAllEntregables();
        }
        [HttpGet("{id_Entregable}")]
        public IEnumerable<Entregable> GetEntregable(int id_Entregable)
        {
            return EntregableRepositorio.GetEntregable(id_Entregable);
        }

        [HttpPost]
        public bool PostEntregable([FromBody]Entregable entregable)
        {
            return EntregableRepositorio.PostEntregable(entregable);
        }
        [HttpPut("{id_Entregable}")]
        public bool UpdateEntregable([FromBody]Entregable entregable, int id_Entregable)
        {
            return EntregableRepositorio.UpdateEntregable(entregable, id_Entregable);
        }

        [HttpDelete("{id_Entregable}")]
        public bool DeleteEntregable(int id_Entregable)
        {
            return EntregableRepositorio.DeleteEntregable(id_Entregable);
        }
    }
}

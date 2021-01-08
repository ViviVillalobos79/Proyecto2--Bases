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
    [Route("apis/profesor/entregable")]
    [ApiController]
    public class EntregableController : ControllerBase
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
        public bool PostEntregable(Entregable entregable)
        {
            return EntregableRepositorio.PostEntregable(entregable);
        }
        [HttpPut("{id_Entregable}")]
        public bool UpdateEntregable(Entregable entregable, int id_Entregable)
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

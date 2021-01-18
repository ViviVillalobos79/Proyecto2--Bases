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
    [Route("apis/administrador/grupo")]
    public class GrupoController : Controller
    {
        private readonly AppDbContext _context;

        public GrupoController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Grupo> GetAllGrupos()
        {
            return GrupoRepositorio.GetAllGrupos();
        }
        [HttpGet("{id_Grupo}")]
        public IEnumerable<Grupo> GetGrupo(int id_Grupo)
        {
            return GrupoRepositorio.GetGrupo(id_Grupo);
        }

        [HttpPost]
        public bool PostGrupo([FromBody]Grupo Grupo)
        {
            return GrupoRepositorio.PostGrupo(Grupo);
        }
        [HttpPut("{id_Grupo}")]
        public bool UpdateGrupo([FromBody]Grupo Grupo, int id_Grupo)
        {
            return GrupoRepositorio.UpdateGrupo(Grupo, id_Grupo);
        }

        [HttpDelete("{id_Grupo}")]
        public bool DeleteGrupo(int id_Grupo)
        {
            return GrupoRepositorio.DeleteGrupo(id_Grupo);
        }
    }
}

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
    [Route("apis/administrador/semestre")]
    public class SemestreController : Controller
    {
        private readonly AppDbContext _context;

        public SemestreController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Semestre> GetAllSemestres()
        {
            return SemestreRepositorio.GetAllSemestres();
        }
        [HttpGet("{id_semestre}")]
        public IEnumerable<Semestre> GetSemestre(int id_semestre)
        {
            return SemestreRepositorio.GetSemestre(id_semestre);
        }

        [HttpPost]
        public bool PostSemestre([FromBody]Semestre Semestre)
        {
            return SemestreRepositorio.PostSemestre(Semestre);
        }
        [HttpPut("{id_semestre}")]
        public bool UpdateSemestre([FromBody]Semestre Semestre, int id_semestre)
        {
            return SemestreRepositorio.UpdateSemestre(Semestre, id_semestre);
        }

        [HttpDelete("{id_semestre}")]
        public bool DeleteSemestre(int id_semestre)
        {
            return SemestreRepositorio.DeleteSemestre(id_semestre);
        }
    }
}

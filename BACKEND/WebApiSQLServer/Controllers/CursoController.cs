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
    [Route("apis/administrador/curso")]
    public class CursoController : Controller
    {
        private readonly AppDbContext _context;

        public CursoController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Curso> GetAllCursos()
        {
            return CursoRepositorio.GetAllCursos();
        }
        [HttpGet("{codigo_curso}")]
        public IEnumerable<Curso> GetCurso(string codigo_curso)
        {
            return CursoRepositorio.GetCurso(codigo_curso);
        }

        [HttpPost]
        public bool PostCurso([FromBody]Curso curso)
        {
            return CursoRepositorio.PostCurso(curso);
        }
        [HttpPut("{codigo_curso}")]
        public bool UpdateCurso([FromBody]Curso curso, string codigo_curso)
        {
            return CursoRepositorio.UpdateCurso(curso, codigo_curso);
        }

        [HttpDelete("{codigo_curso}")]
        public bool DeleteCurso(string codigo_curso)
        {
            return CursoRepositorio.DeleteCurso(codigo_curso);
        }
    }
}

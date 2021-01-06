using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos.Administradores;
using WebApiSQLServer.Repositorios.Administradores;

namespace WebApiSQLServer.Controllers.Administradores
{
    [Route("apis/administrador/curso")]
    [ApiController]
    public class CursoController : ControllerBase
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
        public bool PostCurso(Curso curso)
        {
            return CursoRepositorio.PostCurso(curso);
        }
        [HttpPut("{codigo_curso}")]
        public bool UpdateCurso(Curso curso, string codigo_curso)
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

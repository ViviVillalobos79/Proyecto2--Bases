using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos.Administradores;
using WebApiSQLServer.Repositorios.Grupo_Estudiantees;

namespace WebApiSQLServer.Controllers.Administradores
{
    [Route("apis/administrador/grupo/estudiante")]
    [ApiController]
    public class Grupo_EstudianteController : ControllerBase
    {
        private readonly AppDbContext _context;

        public Grupo_EstudianteController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Grupo_Estudiante> GetAllGrupo_Estudiantes()
        {
            return Grupo_EstudianteRepositorio.GetAllGrupo_Estudiantes();
        }
        [HttpGet("{carnet}")]
        public IEnumerable<Grupo_Estudiante> GetGrupo_Estudiante(int carnet)
        {
            return Grupo_EstudianteRepositorio.GetGrupo_Estudiante(carnet);
        }

        [HttpPost]
        public bool PostGrupo_Estudiante(Grupo_Estudiante Grupo_Estudiante)
        {
            return Grupo_EstudianteRepositorio.PostGrupo_Estudiante(Grupo_Estudiante);
        }
        [HttpPut("{carnet}")]
        public bool UpdateGrupo_Estudiante(Grupo_Estudiante Grupo_Estudiante, int carnet)
        {
            return Grupo_EstudianteRepositorio.UpdateGrupo_Estudiante(Grupo_Estudiante, carnet);
        }

        [HttpDelete("{carnet}")]
        public bool DeleteGrupo_Estudiante(int carnet)
        {
            return Grupo_EstudianteRepositorio.DeleteGrupo_Estudiante(carnet);
        }
    }
}

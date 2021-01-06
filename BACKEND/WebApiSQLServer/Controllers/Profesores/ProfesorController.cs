using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios.Profesores;

namespace WebApiSQLServer.Controllers.Profesores
{
    [Route("apis/profesor")]
    [ApiController]
    public class ProfesorController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ProfesorController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Profesor> GetAllProfesores()
        {
            return ProfesorRepositorio.GetAllProfesores();
        }
        [HttpGet("{cedula}")]
        public IEnumerable<Profesor> GetProfesor(int cedula)
        {
            return ProfesorRepositorio.GetProfesor(cedula);
        }

        [HttpPost]
        public bool PostProfesor(Profesor profesor)
        {
            return ProfesorRepositorio.PostProfesor(profesor);
        }
        [HttpPut("{cedula}")]
        public bool UpdateProfesor(Profesor profesor, int cedula)
        {
            return ProfesorRepositorio.UpdateProfesor(profesor, cedula);
        }

        [HttpDelete("{cedula}")]
        public bool DeleteProfesor(int cedula)
        {
            return ProfesorRepositorio.DeleteProfesor(cedula);
        }
    }
}

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
    [Route("apis/profesor")]
    public class ProfesorController : Controller
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
        public bool PostProfesor([FromBody]Profesor profesor)
        {
            return ProfesorRepositorio.PostProfesor(profesor);
        }
        [HttpPut("{cedula}")]
        public bool UpdateProfesor([FromBody]Profesor profesor, int cedula)
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

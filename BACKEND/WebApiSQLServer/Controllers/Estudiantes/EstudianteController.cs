﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios;

namespace WebApiSQLServer.Controllers.Estudiantes
{
    [Route("apis/estudiante")]
    [ApiController]
    public class EstudianteController : ControllerBase
    {
        private readonly AppDbContext _context;

        public EstudianteController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Estudiante> GetAllEstudiantes()
        {
            return EstudianteRepositorio.GetAllEstudiantes();
        }
        [HttpGet("{carnet}")]
        public IEnumerable<Estudiante> GetEstudiante(int carnet) {
            return EstudianteRepositorio.GetEstudiante(carnet);
        }

        [HttpPost]
        public bool PostEstudiante(Estudiante estudiante) {
            return EstudianteRepositorio.PostEstudiante(estudiante);
        }
        [HttpPut("{carnet}")]
        public bool UpdateEstudiante(Estudiante estudiante, int carnet)
        {
            return EstudianteRepositorio.UpdateEstudiante(estudiante, carnet);
        }

        [HttpDelete("{carnet}")]
        public bool DeleteEstudiante(int carnet) {
            return EstudianteRepositorio.DeleteEstudiante(carnet);
        }
    }
}

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
    [Route("apis/profesor/evaluacion")]
    [ApiController]
    public class EvaluacionController : ControllerBase
    {
        private readonly AppDbContext _context;

        public EvaluacionController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Evaluacion> GetAllEvaluacions()
        {
            return EvaluacionRepositorio.GetAllEvaluacions();
        }
        [HttpGet("{id_Evaluacion}")]
        public IEnumerable<Evaluacion> GetEvaluacion(int id_Evaluacion)
        {
            return EvaluacionRepositorio.GetEvaluacion(id_Evaluacion);
        }

        [HttpPost]
        public bool PostEvaluacion(Evaluacion evaluacion)
        {
            return EvaluacionRepositorio.PostEvaluacion(evaluacion);
        }
        [HttpPut("{id_Evaluacion}")]
        public bool UpdateEvaluacion(Evaluacion evaluacion, int id_Evaluacion)
        {
            return EvaluacionRepositorio.UpdateEvaluacion(evaluacion, id_Evaluacion);
        }

        [HttpDelete("{id_Evaluacion}")]
        public bool DeleteEvaluacion(int id_Evaluacion)
        {
            return EvaluacionRepositorio.DeleteEvaluacion(id_Evaluacion);
        }
    }
}

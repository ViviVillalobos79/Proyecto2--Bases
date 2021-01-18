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
    [Route("apis/profesor/evaluacion")]
    public class EvaluacionController : Controller
    {
        private readonly AppDbContext _context;

        public EvaluacionController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Evaluacion> GetAllEvaluacions()
        {
            return EvaluacionRepositorio.GetAllEvaluaciones();
        }
        [HttpGet("{id_Evaluacion}")]
        public IEnumerable<Evaluacion> GetEvaluacion(int id_Evaluacion)
        {
            return EvaluacionRepositorio.GetEvaluacion(id_Evaluacion);
        }

        [HttpPost]
        public bool PostEvaluacion([FromBody]Evaluacion evaluacion)
        {
            return EvaluacionRepositorio.PostEvaluacion(evaluacion);
        }
        [HttpPut("{id_Evaluacion}")]
        public bool UpdateEvaluacion([FromBody]Evaluacion evaluacion, int id_Evaluacion)
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

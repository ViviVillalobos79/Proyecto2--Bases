using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos.Estudiantes;
using WebApiSQLServer.Repositorios.Estudiantes;
namespace WebApiSQLServer.Controllers.Estudiantes
{

    public class ConsultasEstudianteController
    {
        [HttpGet]
        [Route("apis/estudiante/cursos/{carnet}")]
        public IEnumerable<CursosEstudiante> cursosEstudiantes(int carnet) {
            return ConsultasEstudianteRepositorio.cursosEstudiantes(carnet);
        }

        [HttpGet]
        [Route("apis/estudiante/noticias/{carnet}")]
        public IEnumerable<NoticiasGenerales> noticiasGenerales(int carnet)
        {
            return ConsultasEstudianteRepositorio.noticiasGenerales(carnet);
        }

        [HttpGet]
        [Route("apis/estudiante/nota/grupo/{carnet}/{id_grupo}")]
        public IEnumerable<NotaGrupoEstudiante> notaGrupoEstudiantes(int carnet, int id_grupo)
        {
            return ConsultasEstudianteRepositorio.notaGrupoEstudiantes(carnet,id_grupo);
        }

        [HttpGet]
        [Route("apis/estudiante/noticias/grupo/{id_grupo}")]
        public IEnumerable<NoticiasGenerales> noticiasGrupo(int id_grupo)
        {
            return ConsultasEstudianteRepositorio.noticiasGrupo(id_grupo);
        }

    }
}

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos.Administradores;
using WebApiSQLServer.Repositorios.Administradores;

namespace WebApiSQLServer.Controllers.Administradores
{

    public class ConsultasAdministradorController
    {

        [HttpGet]
        [Route("apis/administrador/curso/habilitado")]
        public IEnumerable<CursosHabilitados> cursoSemestres()
        {
            return ConsultasAdministradorRepositorio.cursoSemestres();
        }

        [HttpGet]
        [Route("apis/administrador/grupo/curso/{codigo_curso}")]
        public IEnumerable<GruposCurso> gruposCursos(string codigo_curso)
        {
            return ConsultasAdministradorRepositorio.gruposCurso(codigo_curso);
        }

        [HttpGet]
        [Route("apis/administrador/profesor/semestre/{id_semestre}")]
        public IEnumerable<ProfesorSemestre> profesorSemestres(int id_semestre)
        {
            return ConsultasAdministradorRepositorio.profesorSemestres(id_semestre);
        }

        [HttpGet]
        [Route("apis/administrador/estudiante/{id_semestre}")]
        public IEnumerable<EstudiantesSemestre> estudiantesSemestres(int id_semestre)
        {
            return ConsultasAdministradorRepositorio.estudiantesSemestres(id_semestre);
        }

        [HttpGet]
        [Route("apis/administrador/profesor/curso/{codigo_curso}")]
        public IEnumerable<ProfesorCurso> profesorCursos(string codigo_curso)
        {
            return ConsultasAdministradorRepositorio.profesorCurso(codigo_curso);
        }


        [HttpPost]
        [Route("apis/administrador/iniciar/semestre")]
        public bool iniciarSemestre(List<InicizalizarSemestre> json) {
            //System.Diagnostics.Debug.WriteLine(json);
            List<InicizalizarSemestre> cadena = json;
            foreach (InicizalizarSemestre iniciar in cadena)
            {
                System.Diagnostics.Debug.WriteLine(json[0]);
            }
            return ConsultasAdministradorRepositorio.inicioSemestre(json);
        }
    }
}

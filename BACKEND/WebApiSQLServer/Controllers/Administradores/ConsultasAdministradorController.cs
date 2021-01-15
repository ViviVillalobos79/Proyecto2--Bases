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

    public class ConsultasAdministradorController
    {
        [HttpGet]
        [Route("apis/administrador/admiSemestre/{cedula}")]
        public IEnumerable<SemestresAdministrador> semestresAdministrador(int cedula)
        {
            return ConsultasAdministradorRepositorio.semestresAdministrador(cedula);
        }

        [HttpGet]
        [Route("apis/administrador/curso/semestre/{id_semestre}")]
        public IEnumerable<CursoSemestre> cursoSemestres(int id_semestre)
        {
            return ConsultasAdministradorRepositorio.cursoSemestres(id_semestre);
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
        [Route("apis/administrador/profesor/curso/{codigo_curso}")]
        public IEnumerable<ProfesorCurso> profesorCursos(string codigo_curso)
        {
            return ConsultasAdministradorRepositorio.profesorCurso(codigo_curso);
        }


        [HttpPost]
        [Route("apis/administrador/iniciar/semestre")]
        public bool iniciarSemestre(List<InicizalizarSemestre> json) {
            return ConsultasAdministradorRepositorio.inicioSemestre(json);
        }
    }
}

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
    public class ConsultasProfesorController 
    {
        [HttpGet]
        [Route("apis/profesor/estudiantes/matriculados/{id_grupo}")]
        public IEnumerable<EstudiantesMatriculados> semestresAdministrador(int id_grupo)
        {
            return ConsultasProfesorRepositorio.estudiantesMatriculados(id_grupo);
        }

        [HttpGet]
        [Route("apis/profesor/cursos/{cedula}")]
        public IEnumerable<CursosProfesor> cursosProfesor(int cedula)
        {
            return ConsultasProfesorRepositorio.cursosProfesor(cedula);
        }

        [HttpGet]
        [Route("apis/profesor/documentos/carpeta/{id_grupo}/{carpeta}")]
        public IEnumerable<DocumentosCarpeta> documentosCarpetas(int id_grupo, string carpeta)
        {
            return ConsultasProfesorRepositorio.documentosCarpetas(id_grupo, carpeta);
        }

        [HttpGet]
        [Route("apis/profesor/carpeta/grupo/{id_grupo}")]
        public IEnumerable<CarpetasGrupo> carpetasGrupos(int id_grupo)
        {
            return ConsultasProfesorRepositorio.carpetasGrupos(id_grupo);
        }
    }
}

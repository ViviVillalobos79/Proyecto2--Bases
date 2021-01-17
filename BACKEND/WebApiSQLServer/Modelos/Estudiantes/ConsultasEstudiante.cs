using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Estudiantes
{
    // Retorna la lista de cursos que lleva un estudiante
    public class CursosEstudiante {
        public string nombre_curso { get; set; }
        public int id_grupo { get; set; }
        public int numero_grupo { get; set; }
        public string periodo { get; set; }
        public int ano { get; set; }
    }

    //Retorna lista de noticias de todos los cursos 
    public class NoticiasGenerales {
        public string titulo { get; set; }
        public string fecha { get; set; }
        public string mensaje { get; set; }
    }

    //Notas de un estudiante en un curso
    public class NotaGrupoEstudiante {
        public string especificacion { get; set; }
        public int nota { get; set; }
        public int id_rubro { get; set; }
        public int porcentaje { get; set; }
    }

}

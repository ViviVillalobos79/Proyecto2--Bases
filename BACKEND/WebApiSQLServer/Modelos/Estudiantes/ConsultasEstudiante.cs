using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Estudiantes
{   
    // Vista View_Cursos_De_Estudiante
    public class CursosEstudiante {
        public string nombre_curso { get; set; }
        public int numero_grupo { get; set; }
        public string periodo { get; set; }
        public int ano { get; set; }
    }

    //Vista View_Noticias_Cursos
    public class NoticiasGenerales {
        public string titulo { get; set; }
        public string fecha { get; set; }
        public string mensaje { get; set; }
    }

    //Vista View_Documentos_En_Carpeta
    public class DocumentosCarpeta {
        public int id_documento { get; set; }
        public int tamano { get; set; }
        public string fecha { get; set; }
    }
}

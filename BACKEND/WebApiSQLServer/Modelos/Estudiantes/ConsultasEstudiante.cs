using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Estudiantes
{
    public class CursosEstudiante {
        public string nombre_curso { get; set; }
        public int numero_grupo { get; set; }
        public string periodo { get; set; }
        public int ano { get; set; }
    }

    public class NoticiasGenerales {
        public string titulo { get; set; }
        public string fecha { get; set; }
        public string mensaje { get; set; }
    }

    public class DocumentosCarpeta {
        public int id_documento { get; set; }
        public int tamano { get; set; }
        public string fecha { get; set; }
    }


}

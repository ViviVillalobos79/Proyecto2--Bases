using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Profesores
{
    public class Documento
    {
        public int id_documento { get; set; }
        public int tamano { get; set; }
        public string fecha { get; set; }
        public string nombre_documento { get; set; }
        public int carpeta { get; set; }
    }
}

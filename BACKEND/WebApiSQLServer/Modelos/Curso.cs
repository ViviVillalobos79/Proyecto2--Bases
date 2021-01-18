using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos
{
    public class Curso
    {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int creditos { get; set; }
        public string carrera { get; set; }
        public string habilitado { get; set; }
        public int administrador { get; set; }

    }
}

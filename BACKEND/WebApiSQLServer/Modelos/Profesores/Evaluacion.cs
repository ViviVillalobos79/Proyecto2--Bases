using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Profesores
{
    public class Evaluacion
    {
        public int id_evaluacion { get; set; }
        public string tipo_evaluacion { get; set; }
        public string especificacion { get; set; }
        public string fecha { get; set; }
        public string hora { get; set; }
        public int rubro { get; set; }
        public int grupo { get; set; }
    }
}

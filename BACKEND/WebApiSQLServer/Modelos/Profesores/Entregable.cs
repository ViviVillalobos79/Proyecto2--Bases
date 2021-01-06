using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Profesores
{
    public class Entregable
    {
        public int id_entregable { get; set; }
        public int id_evaluacion { get; set; }
        public string observaciones { get; set; }
        public int nota { get; set; }
        public string fecha_entrega { get; set; }
        public string docu_estudiante { get; set; }
        public string docu_profesor { get; set; }
    }
}

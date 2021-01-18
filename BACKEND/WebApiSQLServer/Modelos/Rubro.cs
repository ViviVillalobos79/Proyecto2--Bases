using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos
{
    public class Rubro
    {
        public int id_rubro { get; set; }
        public string nombre_rubro { get; set; }
        public int porcentaje { get; set; }
        public int grupo { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Profesores
{
    public class Carpeta
    {
        public int id_carpeta { get; set; }
        public string nombre { get; set; }
        public string fecha { get; set; }
    }

    public class SP_grupo_carpetas
    {
        public int id_grupo { get; set; }
        public string nombre { get; set; }
    }
}

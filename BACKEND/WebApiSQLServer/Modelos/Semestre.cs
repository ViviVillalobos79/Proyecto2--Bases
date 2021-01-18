using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos
{
    public class Semestre
    {
        public int id_semestre { get; set; }
        public string periodo { get; set; }
        public int ano { get; set; }
        public int administrador { get; set; }
    }
}

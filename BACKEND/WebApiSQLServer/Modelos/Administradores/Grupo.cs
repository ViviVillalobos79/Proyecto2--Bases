using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Administradores
{
    public class Grupo
    {
        public int id_grupo { get; set; }
        public int numero_grupo { get; set; }
        public int semestre { get; set; }
        public int profesor { get; set; }
    }
}

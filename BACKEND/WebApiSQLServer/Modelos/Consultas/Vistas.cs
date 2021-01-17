using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Consultas
{
    public class Estudiantes_Matriculados
    {
        public int numero_grupo { get; set; }
        public string codigo_curso { get; set; }
        public int carnet { get; set; }
        public int id_grupo { get; set; }
    }

    public class CursosDeEstudiantes
    {
        public string nombre_curso { get; set; }
        public int numero_grupo { get; set; }
        public string periodo { get; set; }
        public int ano { get; set; }
        public int carnet { get; set; }

    }
    public class SP_grupo_carpetas
    {
        public int id_grupo { get; set; }
        public string nombre { get; set; }
    }
}
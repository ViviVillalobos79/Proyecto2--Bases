using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Administradores
{
    public class SemestresAdministrador
    {
        public int ano { get; set; }
        public string periodo { get; set; }
    }

    public class CursoSemestre {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int creditos { get; set; }
        public string carrera { get; set; }
    }

    public class GruposCurso {
        public string codigo_curso { get; set; }
        public int id_grupo { get; set; }
        public int numero_grupo { get; set; }
        public int profesor { get; set; }
    }

    public class ProfesorSemestre {
        public int ano { get; set; }
        public string periodo { get; set; }
        public int cedula { get; set; }
    }

    public class ProfesorCurso {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int cedula { get; set; }
    }

    public class InicizalizarSemestre {
        public int Carnet { get; set; }
        public string CodCurso { get; set; }
        public string NomCurso { get; set; }
        public int Creditos { get; set; }
        public int Habilitado { get; set; }
        public int Ano { get; set; }
        public string Periodo { get; set; }
        public int NumGrupo { get; set; }
        public int CedProfe { get; set; }
        public int CedAdmin { get; set; }
    }

    public class listaIniciarSemestre {
        public List<InicizalizarSemestre> iniciar { get; set; }
    }
}

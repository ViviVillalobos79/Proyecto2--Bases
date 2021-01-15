using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Administradores
{
    //Cursos impartidos que se encuentran habilitados
    public class CursosHabilitados {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int creditos { get; set; }
    }

    //Grupos que existen de un curso 
    public class GruposCurso {
        public string codigo_curso { get; set; }
        public int id_grupo { get; set; }
        public int numero_grupo { get; set; }
        public int profesor { get; set; }
    }

    //Profesores que imparten en un semestre especifico
    public class ProfesorSemestre {
        public int ano { get; set; }
        public string periodo { get; set; }
        public int cedula { get; set; }
    }
    
    //Lista de estudiantes por semestre
    public class EstudiantesSemestre
    {
        public int ano { get; set; }
        public string periodo { get; set; }
        public int carnet { get; set; }
    }

    //Profesores que imparten un curso
    public class ProfesorCurso {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int cedula { get; set; }
    }

    // Store Procedure para iniciar un semestre
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

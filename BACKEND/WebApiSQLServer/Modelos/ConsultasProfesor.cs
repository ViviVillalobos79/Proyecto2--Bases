﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos
{
    // Lista de estudiantes matriculados en un grupo (Vista)
    public class EstudiantesMatriculados
    {
        public int numero_grupo { get; set; }
        public string codigo_curso { get; set; }
        public int carnet { get; set; }
    }

    // Lista de cursos que imparte un profesor
    public class CursosProfesor
    {
        public string codigo_curso { get; set; }
        public string nombre_curso { get; set; }
        public int id_grupo { get; set; }
    }

    //Lista de documentos en una carpeta para un grupo
    public class DocumentosCarpeta
    {
        public int id_documento { get; set; }
        public string nombre_documento { get; set; }
        public int tamano { get; set; }
        public string fecha { get; set; }
    }

    //Lista de carpetas en un grupo
    public class CarpetasGrupo
    {
        public int id_carpeta { get; set; }
        public string nombre { get; set; }
    }

    // Reporte de notas de todos los estudiantes de un grupo
    public class ReporteNotas
    {
        public int carnet { get; set; }
        public string especificacion { get; set; }
        public int nota { get; set; }
        public int id_rubro { get; set; }
        public string nombre_rubro { get; set; }
        public int porcentaje { get; set; }
    }

    public class Datos_Grupo
    {
        public string nombre_curso { get; set; }
        public string codigo_curso { get; set; }
        public int numero_grupo { get; set; }
    }

    public class RubrosGrupo
    {
        public int id_rubro { get; set; }
        public string nombre_rubro { get; set; }
        public int porcentaje { get; set; }
    }
}

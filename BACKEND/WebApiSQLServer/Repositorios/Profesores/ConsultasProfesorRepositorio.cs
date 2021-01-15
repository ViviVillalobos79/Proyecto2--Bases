using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Profesores;

namespace WebApiSQLServer.Repositorios.Profesores
{
    public class ConsultasProfesorRepositorio
    {
        public static List<EstudiantesMatriculados> estudiantesMatriculados(int id_grupo)
        {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Numero_Grupo, Codigo_Curso, Carnet " + 
                        "FROM View_Estudiantes_Matriculados " + 
                        "WHERE ID_Grupo = @ID_Grupo ORDER BY Carnet";

            query = query.Replace("@ID_Grupo", id_grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<EstudiantesMatriculados> lista = new List<EstudiantesMatriculados>();
            EstudiantesMatriculados estudiantes = null;

            while (reader.Read())
            {
                estudiantes = new EstudiantesMatriculados();
                estudiantes.numero_grupo = Convert.ToInt32(reader.GetValue(0));
                estudiantes.codigo_curso = reader.GetValue(1).ToString();
                estudiantes.carnet = Convert.ToInt32(reader.GetValue(2));
                lista.Add(estudiantes);
            }

            connection.Close();
            return lista;
        }

        public static List<CursosProfesor> cursosProfesor(int Cedula)
        {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT C.Codigo_Curso, C.Nombre_Curso, G.ID_Grupo " +
                        "FROM xtec.CURSO AS C JOIN xtec.CURSO_PROFESOR AS P ON C.Codigo_Curso = P.Codigo_Curso "+
                        "JOIN xtec.GRUPO AS G ON G.Profesor = P.Cedula " +
                        "WHERE P.Cedula = @Cedula";

            query = query.Replace("@Cedula", Cedula.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<CursosProfesor> lista = new List<CursosProfesor>();
            CursosProfesor cursos = null;

            while (reader.Read())
            {
                cursos = new CursosProfesor();
                cursos.codigo_curso = reader.GetValue(0).ToString();
                cursos.nombre_curso = reader.GetValue(1).ToString();
                cursos.id_grupo = Convert.ToInt32(reader.GetValue(2));
                lista.Add(cursos);
            }
            connection.Close();
            return lista;
        }

        public static List<DocumentosCarpeta> documentosCarpetas(int id_grupo, string carpeta)
        {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Documento, Nombre_Documento, Tamano, Fecha " +
                        "FROM View_Documentos_en_Carpeta " +
                        "WHERE ID_Grupo = @ID_Grupo AND Nombre = '@Nombre_Carpeta'";

            query = query.Replace("@ID_Grupo", id_grupo.ToString())
                         .Replace("@Nombre_Carpeta", carpeta);

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<DocumentosCarpeta> lista = new List<DocumentosCarpeta>();
            DocumentosCarpeta documento = null;

            while (reader.Read())
            {
                documento = new DocumentosCarpeta();
                documento.id_documento = Convert.ToInt32(reader.GetValue(0));
                documento.nombre_documento = reader.GetValue(1).ToString();
                documento.tamano = Convert.ToInt32(reader.GetValue(2));
                documento.fecha = reader.GetValue(3).ToString();
                lista.Add(documento);
            }
            connection.Close();
            return lista;
        }

        public static List<CarpetasGrupo> carpetasGrupos(int id_grupo)
        {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT C.ID_Carpeta, C.Nombre " +
                        "FROM xtec.GRUPO_CARPETA AS G JOIN xtec.CARPETA AS C ON G.ID_Carpeta = C.ID_Carpeta " +
                        "WHERE G.ID_Grupo = @ID_Grupo";

            query = query.Replace("@ID_Grupo", id_grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<CarpetasGrupo> lista = new List<CarpetasGrupo>();
            CarpetasGrupo carpeta = null;

            while (reader.Read())
            {
                carpeta = new CarpetasGrupo();
                carpeta.id_carpeta = Convert.ToInt32(reader.GetValue(0));
                carpeta.nombre = reader.GetValue(1).ToString();
                lista.Add(carpeta);
            }
            connection.Close();
            return lista;
        }

        public static List<ReporteNotas> reporteNotas(int id_grupo)
        {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT C.ID_Carpeta, C.Nombre " +
                        "FROM xtec.GRUPO_CARPETA AS G JOIN xtec.CARPETA AS C ON G.ID_Carpeta = C.ID_Carpeta " +
                        "WHERE G.ID_Grupo = @ID_Grupo";

            query = query.Replace("@ID_Grupo", id_grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<ReporteNotas> lista = new List<ReporteNotas>();
            ReporteNotas nota = null;

            while (reader.Read())
            {
                nota = new ReporteNotas();
                nota.carnet = Convert.ToInt32(reader.GetValue(0));
                nota.especificacion = reader.GetValue(1).ToString();
                nota.nota = Convert.ToInt32(reader.GetValue(2));
                nota.id_rubro = Convert.ToInt32(reader.GetValue(3));
                nota.nombre_rubro = reader.GetValue(4).ToString();
                nota.porcentaje = Convert.ToInt32(reader.GetValue(5));
                lista.Add(nota);
            }
            connection.Close();
            return lista;
        }
    }
}

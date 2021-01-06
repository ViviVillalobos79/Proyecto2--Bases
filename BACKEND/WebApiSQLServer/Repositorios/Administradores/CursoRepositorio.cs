using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Administradores;

namespace WebApiSQLServer.Repositorios.Administradores
{
    public class CursoRepositorio
    {
        public static List<Curso> GetAllCursos()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador "+
                        "FROM xtec.CURSO";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Curso> listaCurso = new List<Curso>();
            Curso curso = null;
            while (reader.Read())
            {
                curso = new Curso();
                curso.codigo_curso = reader.GetValue(0).ToString();
                curso.nombre_curso = reader.GetValue(1).ToString();
                curso.creditos = Convert.ToInt32(reader.GetValue(2));
                curso.carrera = reader.GetValue(3).ToString();
                curso.habilitado = reader.GetValue(4).ToString();
                curso.administrador = Convert.ToInt32(reader.GetValue(5));
                listaCurso.Add(curso);
            }
            connection.Close();
            return listaCurso;
        }

        public static List<Curso> GetCurso(string Codigo_Curso)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador " +
                        "FROM xtec.CURSO WHERE Codigo_Curso = '@Codigo_Curso'";
            query = query.Replace("@Codigo_Curso", Codigo_Curso);

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Curso> listaCurso = new List<Curso>();
            Curso curso = null;

            while (reader.Read())
            {
                curso = new Curso();
                curso.codigo_curso = reader.GetValue(0).ToString();
                curso.nombre_curso = reader.GetValue(1).ToString();
                curso.creditos = Convert.ToInt32(reader.GetValue(2));
                curso.carrera = reader.GetValue(3).ToString();
                curso.habilitado = reader.GetValue(4).ToString();
                curso.administrador = Convert.ToInt32(reader.GetValue(5));
                listaCurso.Add(curso);
            }

            connection.Close();
            return listaCurso;
        }

        public static bool PostCurso(Curso curso)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.CURSO(Codigo_Curso, Nombre_Curso, Creditos, Carrera, Habilitado, Administrador) " +
                        "VALUES('@Codigo_Curso','@Nombre_Curso', @Creditos, '@Carrera', '@Habilitado', @Administrador)";
            query = query.Replace("@Codigo_Curso", curso.codigo_curso.ToString())
                         .Replace("@Nombre_Curso", curso.nombre_curso.ToString())
                         .Replace("@Creditos", curso.creditos.ToString())
                         .Replace("@Carrera", curso.carrera.ToString())
                         .Replace("@Habilitado", curso.habilitado.ToString())
                         .Replace("@Administrador", curso.administrador.ToString());
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool UpdateCurso(Curso curso, string codigo_Curso)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.CURSO SET Nombre_Curso = '@Nombre_Curso', Creditos = @Creditos, Carrera = '@Carrera', " +
                        "Habilitado = '@Habilitado', Administrador = @Administrador " +
                        "WHERE Codigo_Curso = '@Codigo_Curso'";

            query = query.Replace("@Nombre_Curso", curso.nombre_curso.ToString())
                         .Replace("@Creditos", curso.creditos.ToString())
                         .Replace("@Carrera", curso.carrera.ToString())
                         .Replace("@Habilitado", curso.habilitado.ToString())
                         .Replace("@Administrador", curso.administrador.ToString())
                         .Replace("@Codigo_Curso", codigo_Curso);
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool DeleteCurso(string Codigo_Curso)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.CURSO WHERE Codigo_Curso = '@Codigo_Curso'";

            query = query.Replace("@Codigo_Curso", Codigo_Curso);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                command.Dispose();
                connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}

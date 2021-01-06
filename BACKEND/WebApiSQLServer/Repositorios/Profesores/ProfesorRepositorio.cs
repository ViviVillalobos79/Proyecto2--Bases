using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios.Profesores
{
    public class ProfesorRepositorio
    {
        public static List<Profesor> GetAllProfesores()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Cedula FROM xtec.PROFESOR";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Profesor> listaProfesor = new List<Profesor>();
            Profesor profesor = null;
            while (reader.Read())
            {
                profesor = new Profesor();
                profesor.cedula = Convert.ToInt32(reader.GetValue(0));
                listaProfesor.Add(profesor);
            }
            connection.Close();
            return listaProfesor;
        }

        public static List<Profesor> GetProfesor(int cedula)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Cedula FROM xtec.PROFESOR WHERE Cedula = @Cedula";
            query = query.Replace("@Cedula", cedula.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Profesor> listaProfesor = new List<Profesor>();
            Profesor profesor = null;

            while (reader.Read())
            {
                profesor = new Profesor();
                profesor.cedula = Convert.ToInt32(reader.GetValue(0));
                listaProfesor.Add(profesor);
            }

            connection.Close();
            return listaProfesor;
        }

        public static bool PostProfesor(Profesor profesor)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.PROFESOR(Cedula) VALUES(@Cedula)";
            query = query.Replace("@Cedula", profesor.cedula.ToString());
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

        public static bool UpdateProfesor(Profesor profesor, int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.PROFESOR SET Cedula = @NuevoCedula WHERE Cedula = @Cedula";
            query = query.Replace("@NuevoCedula", profesor.cedula.ToString())
                         .Replace("@Cedula", cedula.ToString());
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

        public static bool DeleteProfesor(int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.PROFESOR WHERE Cedula = @Cedula";

            query = query.Replace("@Cedula", cedula.ToString());

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

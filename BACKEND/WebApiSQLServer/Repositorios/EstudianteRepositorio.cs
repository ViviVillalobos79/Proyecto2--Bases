using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class EstudianteRepositorio
    {
        public static List<Estudiante> GetAllEstudiantes()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Carnet FROM xtec.ESTUDIANTE";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Estudiante> listaEstudiantes = new List<Estudiante>();
            Estudiante estudiante = null;
            while (reader.Read())
            {
                estudiante = new Estudiante();
                estudiante.carnet = Convert.ToInt32(reader.GetValue(0));
                listaEstudiantes.Add(estudiante);
            }
            connection.Close();
            return listaEstudiantes;
        }

        public static List<Estudiante> GetEstudiante(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            //connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Carnet FROM xtec.ESTUDIANTE WHERE Carnet = @Carnet";
            query = query.Replace("@Carnet", carnet.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Estudiante> listaEstudiantes = new List<Estudiante>();
            Estudiante estudiante = null;

            while (reader.Read())
            {
                estudiante = new Estudiante();
                estudiante.carnet = Convert.ToInt32(reader.GetValue(0));
                listaEstudiantes.Add(estudiante);
            }

            connection.Close();
            return listaEstudiantes;
        }

        public static bool PostEstudiante(Estudiante estudiante)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.ESTUDIANTE(Carnet) VALUES(@Carnet)";
            query = query.Replace("@Carnet", estudiante.carnet.ToString());
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

        public static bool UpdateEstudiante(Estudiante estudiante, int carnet)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.ESTUDIANTE SET Carnet = @NuevoCarnet WHERE Carnet = @Carnet";
            query = query.Replace("@NuevoCarnet", estudiante.carnet.ToString())
                         .Replace("@Carnet", carnet.ToString());
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

        public static bool DeleteEstudiante(int carnet)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.ESTUDIANTE WHERE Carnet = @Carnet";

            query = query.Replace("@Carnet", carnet.ToString());

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

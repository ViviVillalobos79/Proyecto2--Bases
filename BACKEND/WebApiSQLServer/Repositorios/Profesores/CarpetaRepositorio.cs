using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Profesores;

namespace WebApiSQLServer.Repositorios.Profesores
{
    public class CarpetaRepositorio
    {
        public static List<Carpeta> GetAllCarpetas()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Carpeta, Nombre, Fecha " +
                        "FROM xtec.CARPETA";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Carpeta> listaCarpeta = new List<Carpeta>();
            Carpeta carpeta = null;
            while (reader.Read())
            {
                carpeta = new Carpeta();
                carpeta.id_carpeta = Convert.ToInt32(reader.GetValue(0));
                carpeta.nombre = reader.GetValue(1).ToString();
                carpeta.fecha = reader.GetValue(2).ToString();
                listaCarpeta.Add(carpeta);
            }
            connection.Close();
            return listaCarpeta;
        }
        public static List<Carpeta> GetCarpeta(int Codigo_Carpeta)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Carpeta, Nombre, Fecha " +
                        "FROM xtec.CARPETA WHERE ID_Carpeta = @ID_Carpeta";

            query = query.Replace("@ID_Carpeta", Codigo_Carpeta.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Carpeta> listaCarpeta = new List<Carpeta>();
            Carpeta carpeta = null;

            while (reader.Read())
            {
                carpeta = new Carpeta();
                carpeta.id_carpeta = Convert.ToInt32(reader.GetValue(0));
                carpeta.nombre = reader.GetValue(1).ToString();
                carpeta.fecha = reader.GetValue(2).ToString();
                listaCarpeta.Add(carpeta);
            }

            connection.Close();
            return listaCarpeta;
        }
        public static bool PostCarpeta(Carpeta carpeta)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.CARPETA(Nombre, Fecha) " +
                        "VALUES('@Nombre', '@Fecha')";

            query = query.Replace("@Nombre", carpeta.nombre.ToString())
                         .Replace("@Fecha", carpeta.fecha.ToString());
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
        public static bool UpdateCarpeta(Carpeta carpeta, int id_Carpeta)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.CARPETA SET Nombre = '@Nombre', Fecha = '@Fecha' " +
                        "WHERE ID_Carpeta = '@ID_Carpeta'";

            query = query.Replace("@Nombre", carpeta.nombre.ToString())
                         .Replace("@Fecha", carpeta.fecha.ToString())
                         .Replace("@ID_Carpeta", id_Carpeta.ToString());
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
        public static bool DeleteCarpeta(int id_Carpeta)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.CARPETA WHERE ID_Carpeta = @ID_Carpeta";

            query = query.Replace("@ID_Carpeta", id_Carpeta.ToString());

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
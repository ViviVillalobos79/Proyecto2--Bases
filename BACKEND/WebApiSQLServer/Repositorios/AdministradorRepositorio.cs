using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class AdministradorRepositorio
    {
        public static List<Administrador> GetAllAdministradores()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Cedula FROM xtec.ADMINISTRADOR";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Administrador> listaAdministrador = new List<Administrador>();
            Administrador administrador = null;
            while (reader.Read())
            {
                administrador = new Administrador();
                administrador.cedula = Convert.ToInt32(reader.GetValue(0));
                listaAdministrador.Add(administrador);
            }
            connection.Close();
            return listaAdministrador;
        }

        public static List<Administrador> GetAdministrador(int cedula)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Cedula FROM xtec.ADMINISTRADOR WHERE Cedula = @Cedula";
            query = query.Replace("@Cedula", cedula.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Administrador> listaAdministrador = new List<Administrador>();
            Administrador administrador = null;

            while (reader.Read())
            {
                administrador = new Administrador();
                administrador.cedula = Convert.ToInt32(reader.GetValue(0));
                listaAdministrador.Add(administrador);
            }

            connection.Close();
            return listaAdministrador;
        }

        public static bool PostAdministrador(Administrador administrador)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.ADMINISTRADOR(Cedula) VALUES(@Cedula)";
            query = query.Replace("@Cedula", administrador.cedula.ToString());
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

        public static bool UpdateAdministrador(Administrador Administrador, int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.ADMINISTRADOR SET Cedula = @NuevoCedula WHERE Cedula = @Cedula";
            query = query.Replace("@NuevoCedula", Administrador.cedula.ToString())
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

        public static bool DeleteAdministrador(int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.ADMINISTRADOR WHERE Cedula = @Cedula";

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

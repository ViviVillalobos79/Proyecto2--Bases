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
    public class RubroRepositorio
    {
        public static List<Rubro> GetAllRubros()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Rubro, Numero_Rubro, Porcentaje, Grupo " +
                        "FROM xtec.RUBRO";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Rubro> listaRubro = new List<Rubro>();
            Rubro rubro = null;
            while (reader.Read())
            {
                rubro = new Rubro();
                rubro.id_rubro = Convert.ToInt32(reader.GetValue(0));
                rubro.nombre_rubro = reader.GetValue(1).ToString();
                rubro.porcentaje = Convert.ToInt32(reader.GetValue(2));
                rubro.grupo = Convert.ToInt32(reader.GetValue(3));
                listaRubro.Add(rubro);
            }
            connection.Close();
            return listaRubro;
        }

        public static List<Rubro> GetRubro(int id_Rubro)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Rubro, Numero_Rubro, Porcentaje, Grupo " +
                        "FROM xtec.RUBRO WHERE ID_Rubro = @ID_Rubro";

            query = query.Replace("@ID_Rubro", id_Rubro.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Rubro> listaRubro = new List<Rubro>();
            Rubro rubro = null;

            while (reader.Read())
            {
                rubro = new Rubro();
                rubro.id_rubro = Convert.ToInt32(reader.GetValue(0));
                rubro.nombre_rubro = reader.GetValue(1).ToString();
                rubro.porcentaje = Convert.ToInt32(reader.GetValue(2));
                rubro.grupo = Convert.ToInt32(reader.GetValue(3));
                listaRubro.Add(rubro);
            }

            connection.Close();
            return listaRubro;
        }

        public static bool PostRubro(Rubro rubro)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.RUBRO(Nombre_Rubro, Porcentaje, Grupo) " +
                        "VALUES(@Nombre_Rubro, @Porcentaje, @Grupo)";

            query = query.Replace("@Nombre_Rubro", rubro.nombre_rubro.ToString())
                         .Replace("@Porcentaje", rubro.porcentaje.ToString())
                         .Replace("@Grupo", rubro.grupo.ToString());
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

        public static bool UpdateRubro(Rubro rubro, int id_Rubro)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.RUBRO SET Nombre_Rubro = '@Nombre_Rubro', Porcentaje = @Porcentaje, Grupo = @Grupo " +
                        "WHERE ID_Rubro = @ID_Rubro";

            query = query.Replace("@Nombre_Rubro", rubro.nombre_rubro.ToString())
                         .Replace("@Porcentaje", rubro.porcentaje.ToString())
                         .Replace("@Grupo", rubro.grupo.ToString())
                         .Replace("@ID_Rubro", id_Rubro.ToString());
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

        public static bool DeleteRubro(int id_Rubro)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.RUBRO WHERE ID_Rubro = @ID_Rubro";

            query = query.Replace("@ID_Rubro", id_Rubro.ToString());

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

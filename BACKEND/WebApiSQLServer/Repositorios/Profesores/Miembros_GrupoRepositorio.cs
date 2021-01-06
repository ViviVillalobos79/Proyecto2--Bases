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
    public class Miembros_GrupoRepositorio
    {
        public static List<Miembros_Grupo> GetAllMiembros_Grupoes()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Entregable, Carnet" +
                        "FROM xtec.MIEMBROS_GRUPO";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Miembros_Grupo> listaMiembros_Grupo = new List<Miembros_Grupo>();
            Miembros_Grupo miembros_grupo = null;
            while (reader.Read())
            {
                miembros_grupo = new Miembros_Grupo();
                miembros_grupo.id_entregable = Convert.ToInt32(reader.GetValue(0));
                miembros_grupo.carnet = Convert.ToInt32(reader.GetValue(1));
                listaMiembros_Grupo.Add(miembros_grupo);
            }
            connection.Close();
            return listaMiembros_Grupo;
        }

        public static List<Miembros_Grupo> GetMiembros_Grupo(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Entregable "+
                        "FROM xtec.MIEMBROS_GRUPO WHERE Carnet = @Carnet";

            query = query.Replace("@Carnet", carnet.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Miembros_Grupo> listaMiembros_Grupo = new List<Miembros_Grupo>();
            Miembros_Grupo miembros_grupo = null;

            while (reader.Read())
            {
                miembros_grupo = new Miembros_Grupo();
                miembros_grupo.id_entregable = Convert.ToInt32(reader.GetValue(0));
                miembros_grupo.carnet = Convert.ToInt32(reader.GetValue(1));
                listaMiembros_Grupo.Add(miembros_grupo);
            }

            connection.Close();
            return listaMiembros_Grupo;
        }

        public static bool PostMiembros_Grupo(Miembros_Grupo miembros_grupo)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.MIEMBROS_GRUPO(ID_Entregable, Carnet)"+
                        "VALUES(@ID_Entregable, @Carnet)";

            query = query.Replace("@ID_Entregable", miembros_grupo.id_entregable.ToString())
                         .Replace("@Carnet", miembros_grupo.carnet.ToString());
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

        public static bool UpdateMiembros_Grupo(Miembros_Grupo miembros_grupo, int id_Miembros_Grupo)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.MIEMBROS_GRUPO SET ID_Evaluacion = @ID_Evaluacion " +
                        "WHERE Carnet = @Carnet";

            query = query.Replace("@ID_Evaluacion", miembros_grupo.id_entregable.ToString())
                         .Replace("@Carnet", miembros_grupo.carnet.ToString());
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

        public static bool DeleteMiembros_Grupo(int id_Miembros_Grupo)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.MIEMBROS_GRUPO WHERE Carnet = @Carnet";

            query = query.Replace("@Carnet", id_Miembros_Grupo.ToString());

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

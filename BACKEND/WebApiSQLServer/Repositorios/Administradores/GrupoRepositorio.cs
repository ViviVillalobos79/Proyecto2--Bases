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
    public class GrupoRepositorio
    {
        public static List<Grupo> GetAllGrupos()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Grupo, Numero_Grupo, Semestre, Profesor " +
                        "FROM xtec.GRUPO";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Grupo> listaGrupo = new List<Grupo>();
            Grupo grupo = null;
            while (reader.Read())
            {
                grupo = new Grupo();
                grupo.id_grupo = Convert.ToInt32(reader.GetValue(0));
                grupo.numero_grupo = Convert.ToInt32(reader.GetValue(1));
                grupo.semestre = Convert.ToInt32(reader.GetValue(2));
                grupo.profesor = Convert.ToInt32(reader.GetValue(3));
                listaGrupo.Add(grupo);
            }
            connection.Close();
            return listaGrupo;
        }

        public static List<Grupo> GetGrupo(int Codigo_Grupo)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Grupo, Numero_Grupo, Semestre, Profesor " +
                        "FROM xtec.GRUPO WHERE ID_Grupo = @ID_Grupo";

            query = query.Replace("@ID_Grupo", Codigo_Grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Grupo> listaGrupo = new List<Grupo>();
            Grupo grupo = null;

            while (reader.Read())
            {
                grupo = new Grupo();
                grupo.id_grupo = Convert.ToInt32(reader.GetValue(0));
                grupo.numero_grupo = Convert.ToInt32(reader.GetValue(1));
                grupo.semestre = Convert.ToInt32(reader.GetValue(2));
                grupo.profesor = Convert.ToInt32(reader.GetValue(3));
                listaGrupo.Add(grupo);
            }

            connection.Close();
            return listaGrupo;
        }

        public static bool PostGrupo(Grupo grupo)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.GRUPO(Numero_Grupo, Semestre, Profesor) " +
                        "VALUES(@Numero_Grupo, @Semestre, @Profesor)";
            
            query = query.Replace("@Numero_Grupo", grupo.numero_grupo.ToString())
                         .Replace("@Semestre", grupo.semestre.ToString())
                         .Replace("@Profesor", grupo.profesor.ToString());
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

        public static bool UpdateGrupo(Grupo grupo, int id_Grupo)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.Grupo SET Numero_Grupo = @Numero_Grupo, Semestre = @Semestre, Profesor = @Profesor " +
                        "WHERE ID_Grupo = '@ID_Grupo'";

            query = query.Replace("@Numero_Grupo", grupo.numero_grupo.ToString())
                         .Replace("@Semestre", grupo.semestre.ToString())
                         .Replace("@Profesor", grupo.profesor.ToString())
                         .Replace("@ID_Grupo", id_Grupo.ToString());
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

        public static bool DeleteGrupo(int id_Grupo)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.GRUPO WHERE ID_Grupo = @ID_Grupo";

            query = query.Replace("@ID_Grupo", id_Grupo.ToString());

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

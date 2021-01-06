using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Administradores;

namespace WebApiSQLServer.Repositorios.Grupo_Estudiantees
{
    public class Grupo_EstudianteRepositorio
    {
        public static List<Grupo_Estudiante> GetAllGrupo_Estudiantes()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Grupo, Carnet FROM xtec.GRUPO_ESTUDIANTE";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Grupo_Estudiante> listaGrupo_Estudiante = new List<Grupo_Estudiante>();
            Grupo_Estudiante grupo_estudiante = null;
            while (reader.Read())
            {
                grupo_estudiante = new Grupo_Estudiante();
                grupo_estudiante.id_grupo = Convert.ToInt32(reader.GetValue(0));
                grupo_estudiante.carnet = Convert.ToInt32(reader.GetValue(1));
                listaGrupo_Estudiante.Add(grupo_estudiante);
            }
            connection.Close();
            return listaGrupo_Estudiante;
        }

        public static List<Grupo_Estudiante> GetGrupo_Estudiante(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Grupo FROM xtec.GRUPO_ESTUDIANTE WHERE Carnet = @Carnet";
            query = query.Replace("@Carnet", carnet.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Grupo_Estudiante> listaGrupo_Estudiante = new List<Grupo_Estudiante>();
            Grupo_Estudiante grupo_estudiante = null;

            while (reader.Read())
            {
                grupo_estudiante = new Grupo_Estudiante();
                grupo_estudiante.id_grupo = Convert.ToInt32(reader.GetValue(0));
                grupo_estudiante.carnet = Convert.ToInt32(reader.GetValue(1));
                listaGrupo_Estudiante.Add(grupo_estudiante);
            }

            connection.Close();
            return listaGrupo_Estudiante;
        }

        public static bool PostGrupo_Estudiante(Grupo_Estudiante grupo_estudiante)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.GRUPO_ESTUDIANTE(ID_Grupo, Carnet) VALUES(@ID_Grupo, @Carnet)";
            query = query.Replace("@ID_Grupo", grupo_estudiante.id_grupo.ToString())
                         .Replace("@Carnet", grupo_estudiante.carnet.ToString());
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

        public static bool UpdateGrupo_Estudiante(Grupo_Estudiante grupo_estudiante, int carnet)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.GRUPO_ESTUDIANTE SET ID_Grupo = @ID_Grupo WHERE Carnet = @Carnet";
            query = query.Replace("@ID_Grupo", grupo_estudiante.id_grupo.ToString())
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

        public static bool DeleteGrupo_Estudiante(int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            // REVISAR ESTA CONSULTA
            var query = "DELETE FROM xtec.GRUPO_ESTUDIANTE WHERE Carnet = @Carnet";

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

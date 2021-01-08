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
    public class EvaluacionRepositorio
    {
        public static List<Evaluacion> GetAllEvaluaciones()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Evaluacion, Tipo_Evaluacion, Especificacion, Fecha, " +
                        "Hora, Rubro, Grupo "+
                        "FROM xtec.EVALUACION";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Evaluacion> listaEvaluacion = new List<Evaluacion>();
            Evaluacion evaluacion = null;
            while (reader.Read())
            {
                evaluacion = new Evaluacion();
                evaluacion.id_evaluacion = Convert.ToInt32(reader.GetValue(0));
                evaluacion.tipo_evaluacion = reader.GetValue(1).ToString();
                evaluacion.especificacion = reader.GetValue(2).ToString();
                evaluacion.fecha = reader.GetValue(3).ToString();
                evaluacion.hora = reader.GetValue(4).ToString();
                evaluacion.rubro = Convert.ToInt32(reader.GetValue(5));
                evaluacion.grupo = Convert.ToInt32(reader.GetValue(6));
                listaEvaluacion.Add(evaluacion);
            }
            connection.Close();
            return listaEvaluacion;
        }

        public static List<Evaluacion> GetEvaluacion(int id_Evaluacion)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Evaluacion, Tipo_Evaluacion, Especificacion, Fecha, " +
                        "Hora, Rubro, Grupo " +
                        "FROM xtec.EVALUACION WHERE ID_Evaluacion = @ID_Evaluacion";

            query = query.Replace("@ID_Evaluacion", id_Evaluacion.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Evaluacion> listaEvaluacion = new List<Evaluacion>();
            Evaluacion evaluacion = null;

            while (reader.Read())
            {
                evaluacion = new Evaluacion();
                evaluacion.id_evaluacion = Convert.ToInt32(reader.GetValue(0));
                evaluacion.tipo_evaluacion = reader.GetValue(1).ToString();
                evaluacion.especificacion = reader.GetValue(2).ToString();
                evaluacion.fecha = reader.GetValue(3).ToString();
                evaluacion.hora = reader.GetValue(4).ToString();
                evaluacion.rubro = Convert.ToInt32(reader.GetValue(5));
                evaluacion.grupo = Convert.ToInt32(reader.GetValue(6));
                listaEvaluacion.Add(evaluacion);
            }

            connection.Close();
            return listaEvaluacion;
        }

        public static bool PostEvaluacion(Evaluacion evaluacion)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.EVALUACION(Tipo_Evaluacion, Especificacion, Fecha, " +
                        "Hora, Rubro, Grupo) " +
                        "VALUES('@Tipo_Evaluacion', '@Especificacion', '@Fecha', " +
                        "'@Hora', @Rubro, @Grupo)";

            query = query.Replace("@Tipo_Evaluacion", evaluacion.tipo_evaluacion.ToString())
                         .Replace("@Especificacion", evaluacion.especificacion.ToString())
                         .Replace("@Fecha", evaluacion.fecha.ToString())
                         .Replace("@Hora", evaluacion.hora.ToString())
                         .Replace("@Rubro", evaluacion.rubro.ToString())
                         .Replace("@Grupo", evaluacion.grupo.ToString());
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

        public static bool UpdateEvaluacion(Evaluacion evaluacion, int id_Evaluacion)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.EVALUACION SET Tipo_Evaluacion = '@Tipo_Evaluacion', Especificacion = '@Especificacion'," +
                        "Fecha = '@Fecha', Hora = '@Hora', Rubro = @Rubro, Grupo = @Grupo "+
                        "WHERE ID_Evaluacion = @ID_Evaluacion";

            query = query.Replace("@Tipo_Evaluacion", evaluacion.tipo_evaluacion.ToString())
                         .Replace("@Especificacion", evaluacion.especificacion.ToString())
                         .Replace("@Fecha", evaluacion.fecha.ToString())
                         .Replace("@Hora", evaluacion.hora.ToString())
                         .Replace("@Rubro", evaluacion.rubro.ToString())
                         .Replace("@Grupo", evaluacion.grupo.ToString())
                         .Replace("@ID_Evaluacion", id_Evaluacion.ToString());
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

        public static bool DeleteEvaluacion(int id_Evaluacion)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.EVALUACION WHERE ID_Evaluacion = @ID_Evaluacion";

            query = query.Replace("@ID_Evaluacion", id_Evaluacion.ToString());

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

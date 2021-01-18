using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class EntregableRepositorio
    {
        public static List<Entregable> GetAllEntregables()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Entregable, ID_Evaluacion, Observaciones, Nota, Fecha_Entrega, " +
                        "Docu_Estudiante, Docu_Profesor " +
                        "FROM xtec.ENTREGABLE";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Entregable> listaEntregable = new List<Entregable>();
            Entregable entregable = null;
            while (reader.Read())
            {
                entregable = new Entregable();
                entregable.id_entregable = Convert.ToInt32(reader.GetValue(0));
                entregable.id_evaluacion = Convert.ToInt32(reader.GetValue(1));
                entregable.observaciones = reader.GetValue(2).ToString();
                entregable.nota = Convert.ToInt32(reader.GetValue(3));
                entregable.fecha_entrega = reader.GetValue(4).ToString();
                entregable.docu_estudiante = reader.GetValue(5).ToString();
                entregable.docu_profesor = reader.GetValue(6).ToString();
                listaEntregable.Add(entregable);
            }
            connection.Close();
            return listaEntregable;
        }

        public static List<Entregable> GetEntregable(int id_Entregable)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Entregable, ID_Evaluacion, Observaciones, Nota, Fecha_Entrega, " +
                        "Docu_Estudiante, Docu_Profesor " +
                        "FROM xtec.ENTREGABLE WHERE ID_Entregable = @ID_Entregable";

            query = query.Replace("@ID_Entregable", id_Entregable.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Entregable> listaEntregable = new List<Entregable>();
            Entregable entregable = null;

            while (reader.Read())
            {
                entregable = new Entregable();
                entregable.id_entregable = Convert.ToInt32(reader.GetValue(0));
                entregable.id_evaluacion = Convert.ToInt32(reader.GetValue(1));
                entregable.observaciones = reader.GetValue(2).ToString();
                entregable.nota = Convert.ToInt32(reader.GetValue(3));
                entregable.fecha_entrega = reader.GetValue(4).ToString();
                entregable.docu_estudiante = reader.GetValue(5).ToString();
                entregable.docu_profesor = reader.GetValue(6).ToString();
                listaEntregable.Add(entregable);
            }

            connection.Close();
            return listaEntregable;
        }

        public static bool PostEntregable(Entregable entregable)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.ENTREGABLE(ID_Evaluacion, Observaciones, Nota, " +
                        "Fecha_Entrega, Docu_Estudiante, Docu_Profesor) " +
                        "VALUES(@ID_Evaluacion, '@Observaciones', @Nota, '@Fecha_Entrega', '@Docu_Estudiante', '@Docu_Profesor')";

            query = query.Replace("@ID_Evaluacion", entregable.id_evaluacion.ToString())
                         .Replace("@Observaciones", entregable.observaciones.ToString())
                         .Replace("@Nota", entregable.nota.ToString())
                         .Replace("@Fecha_Entrega", entregable.fecha_entrega.ToString())
                         .Replace("@Docu_Estudiante", entregable.docu_estudiante.ToString())
                         .Replace("@Docu_Profesor", entregable.docu_profesor.ToString());
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

        public static bool UpdateEntregable(Entregable entregable, int id_Entregable)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.ENTREGABLE SET ID_Evaluacion = @ID_Evaluacion, Observaciones = '@Observaciones'," +
                        "Nota = @Nota, Fecha_Entrega = '@Fecha_Entrega', Docu_Estudiante = '@Docu_Estudiante', " +
                        "Docu_Profesor = '@Docu_Profesor' " +
                        "WHERE ID_Entregable = @ID_Entregable";

            query = query.Replace("@ID_Evaluacion", entregable.id_evaluacion.ToString())
                         .Replace("@Observaciones", entregable.observaciones.ToString())
                         .Replace("@Nota", entregable.nota.ToString())
                         .Replace("@Fecha_Entrega", entregable.fecha_entrega.ToString())
                         .Replace("@Docu_Estudiante", entregable.docu_estudiante.ToString())
                         .Replace("@Docu_Profesor", entregable.docu_profesor.ToString())
                         .Replace("@ID_Entregable", id_Entregable.ToString());
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

        public static bool DeleteEntregable(int id_Entregable)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.ENTREGABLE WHERE ID_Entregable = @ID_Entregable";

            query = query.Replace("@ID_Entregable", id_Entregable.ToString());

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

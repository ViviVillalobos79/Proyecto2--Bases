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
    public class DocumentoRepositorio
    {
        public static List<Documento> GetAllDocumentos()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Documento, Tamano, Fecha, Nombre_Documento, Carpeta " +
                        "FROM xtec.DOCUMENTO";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Documento> listaDocumento = new List<Documento>();
            Documento documento = null;
            while (reader.Read())
            {
                documento = new Documento();
                documento.id_documento = Convert.ToInt32(reader.GetValue(0));
                documento.tamano = Convert.ToInt32(reader.GetValue(1));
                documento.fecha = reader.GetValue(2).ToString();
                documento.nombre_documento = reader.GetValue(3).ToString();
                documento.carpeta = Convert.ToInt32(reader.GetValue(4));
                listaDocumento.Add(documento);
            }
            connection.Close();
            return listaDocumento;
        }
        public static List<Documento> GetDocumento(int id_Documento)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Documento, Tamano, Fecha, Nombre_Documento, Carpeta " +
                        "FROM xtec.DOCUMENTO WHERE ID_Documento = @ID_Documento";

            query = query.Replace("@ID_Documento", id_Documento.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Documento> listaDocumento = new List<Documento>();
            Documento documento = null;

            while (reader.Read())
            {
                documento = new Documento();
                documento.id_documento = Convert.ToInt32(reader.GetValue(0));
                documento.tamano = Convert.ToInt32(reader.GetValue(1));
                documento.fecha = reader.GetValue(2).ToString();
                documento.nombre_documento = reader.GetValue(3).ToString();
                documento.carpeta = Convert.ToInt32(reader.GetValue(4));
                listaDocumento.Add(documento);
            }

            connection.Close();
            return listaDocumento;
        }
        public static bool PostDocumento(Documento documento)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.DOCUMENTO(Tamano, Fecha, Nombre_Documento, Carpeta) " +
                        "VALUES(@Tamano, '@Fecha', '@Nombre_Documento', @Carpeta);";

            query = query.Replace("@Tamano", documento.tamano.ToString())
                         .Replace("@Fecha", documento.fecha)
                         .Replace("@Nombre_Documento", documento.nombre_documento)
                         .Replace("@Carpeta", documento.carpeta.ToString());
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
        public static bool UpdateDocumento(Documento documento, int id_Documento)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.DOCUMENTO SET Tamano = @Tamano, Fecha = '@Fecha', "+
                        "Nombre_Documento = '@Nombre_Documento', Carpeta = @Carpeta" +
                        "WHERE ID_Documento = @ID_Documento";

            query = query.Replace("@Tamano", documento.tamano.ToString())
                         .Replace("@Fecha", documento.fecha)
                         .Replace("@Nombre_Documento", documento.nombre_documento)
                         .Replace("@Carpeta", documento.carpeta.ToString())
                         .Replace("@ID_Documento", id_Documento.ToString());
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
        public static bool DeleteDocumento(int id_Documento)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.Documento WHERE ID_Documento = @ID_Documento";

            query = query.Replace("@ID_Documento", id_Documento.ToString());

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

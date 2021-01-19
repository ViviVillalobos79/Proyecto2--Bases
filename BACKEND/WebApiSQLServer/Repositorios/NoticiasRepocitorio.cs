using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class NoticiasRepocitorio
    {

        public static List<Noticias> GetAllNoticias()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Noticia, Titulo, Autor, Fecha, Mensaje, Grupo " +
                        "FROM xtec.NOTICIA";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Noticias> listaNoticia = new List<Noticias>();
            Noticias noticia = null;
            while (reader.Read())
            {
                noticia = new Noticias();
                noticia.id_noticia = Convert.ToInt32(reader.GetValue(0));
                noticia.titulo = reader.GetValue(1).ToString();
                noticia.autor = Convert.ToInt32(reader.GetValue(2));
                noticia.fecha = reader.GetValue(3).ToString();
                noticia.mensaje = reader.GetValue(4).ToString();
                noticia.grupo = Convert.ToInt32(reader.GetValue(5));
                listaNoticia.Add(noticia);
            }
            connection.Close();
            return listaNoticia;
        }

        public static List<Noticias> GetNoticia(int id_Noticia)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Noticia, Titulo, Autor, Fecha, Mensaje, Grupo " +
                        "FROM xtec.NOTICIA WHERE ID_Noticia = @ID_Noticia";

            query = query.Replace("@ID_Noticia", id_Noticia.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Noticias> listaNoticia = new List<Noticias>();
            Noticias noticia = null;

            while (reader.Read())
            {
                noticia = new Noticias();
                noticia.id_noticia = Convert.ToInt32(reader.GetValue(0));
                noticia.titulo = reader.GetValue(1).ToString();
                noticia.autor = Convert.ToInt32(reader.GetValue(2));
                noticia.fecha = reader.GetValue(3).ToString();
                noticia.mensaje = reader.GetValue(4).ToString();
                noticia.grupo = Convert.ToInt32(reader.GetValue(5));
                listaNoticia.Add(noticia);
            }

            connection.Close();
            return listaNoticia;
        }

        public static bool PostNoticia(Noticias noticia)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.NOTICIA(Titulo, Autor, Fecha, Mensaje, Grupo) " +
                        "VALUES('@Titulo', @Autor, '@Fecha', '@Mensaje', Grupo)";

            query = query.Replace("@Titulo", noticia.titulo)
                         .Replace("@Autor", noticia.autor.ToString())
                         .Replace("@Fecha", noticia.fecha)
                         .Replace("@Mensaje", noticia.mensaje)
                         .Replace("@Grupo", noticia.grupo.ToString());
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

        public static bool UpdateNoticia(Noticias noticia, int id_Noticia)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.NOTICIA SET Titulo = '@Titulo', Autor = @Autor, Fecha = '@Fecha', " +
                        "Mensaje = '@Mensaje' " +
                        "WHERE ID_Noticia = @ID_Noticia";

            query = query.Replace("@ID_Noticia", id_Noticia.ToString())
                         .Replace("@Titulo", noticia.titulo)
                         .Replace("@Autor", noticia.autor.ToString())
                         .Replace("@Fecha", noticia.fecha)
                         .Replace("@Mensaje", noticia.mensaje)
                         .Replace("@Grupo", noticia.grupo.ToString());

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

        public static bool DeleteNoticia(int id_Noticia)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.NOTICIA WHERE ID_Noticia = @ID_Noticia";

            query = query.Replace("@ID_Noticia", id_Noticia.ToString());

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

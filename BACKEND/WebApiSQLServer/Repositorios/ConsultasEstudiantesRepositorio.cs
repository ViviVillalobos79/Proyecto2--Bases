using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class ConsultasEstudiantesRepositorio
    {
        public static List<CursosEstudiante> cursosEstudiantes(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Nombre_Curso, ID_Grupo, Numero_Grupo, Periodo, Ano " +
                        "FROM View_Cursos_de_Estudiante " +
                        "WHERE Carnet = @Carnet";

            query = query.Replace("@Carnet", carnet.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<CursosEstudiante> lista = new List<CursosEstudiante>();
            CursosEstudiante curso = null;

            while (reader.Read())
            {
                curso = new CursosEstudiante();
                curso.nombre_curso = reader.GetValue(0).ToString();
                curso.id_grupo = Convert.ToInt32(reader.GetValue(1).ToString());
                curso.numero_grupo = Convert.ToInt32(reader.GetValue(2));
                curso.periodo = reader.GetValue(3).ToString();
                curso.ano = Convert.ToInt32(reader.GetValue(4));
                lista.Add(curso);
            }
            connection.Close();
            return lista;
        }

        public static List<NoticiasGenerales> noticiasGenerales(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Titulo, Fecha, Mensaje " + "" +
                        "FROM View_Noticias_Cursos " +
                        "WHERE Carnet = @Carnet ORDER BY Fecha DESC;";

            query = query.Replace("@Carnet", carnet.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<NoticiasGenerales> lista = new List<NoticiasGenerales>();
            NoticiasGenerales noticia = null;

            while (reader.Read())
            {
                noticia = new NoticiasGenerales();
                noticia.titulo = reader.GetValue(0).ToString();
                noticia.fecha = reader.GetValue(1).ToString();
                noticia.mensaje = reader.GetValue(2).ToString();
                lista.Add(noticia);
            }
            connection.Close();
            return lista;
        }

        public static List<NotaGrupoEstudiante> notaGrupoEstudiantes(int carnet, int id_grupo)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Especificacion, Nota, ID_Rubro, Porcentaje " +
                        "FROM View_Notas_Estudiante " +
                        "WHERE Carnet = @Carnet AND Grupo = @ID_Grupo;";

            query = query.Replace("@Carnet", carnet.ToString())
                         .Replace("@ID_Grupo", id_grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<NotaGrupoEstudiante> lista = new List<NotaGrupoEstudiante>();
            NotaGrupoEstudiante nota = null;

            while (reader.Read())
            {
                nota = new NotaGrupoEstudiante();
                nota.especificacion = reader.GetValue(0).ToString();
                nota.nota = Convert.ToInt32(reader.GetValue(1));
                nota.id_rubro = Convert.ToInt32(reader.GetValue(2));
                nota.porcentaje = Convert.ToInt32(reader.GetValue(3));
                lista.Add(nota);
            }
            connection.Close();
            return lista;
        }

        public static List<NoticiasGenerales> noticiasGrupo(int id_grupo)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Titulo, Fecha, Mensaje " +
                        "FROM xtec.NOTICIA " +
                        "WHERE xtec.NOTICIA.Grupo = @ID_Grupo" +
                        "ORDER BY Fecha DESC; ";

            query = query.Replace("@ID_Grupo", id_grupo.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<NoticiasGenerales> lista = new List<NoticiasGenerales>();
            NoticiasGenerales noticia = null;

            while (reader.Read())
            {
                noticia = new NoticiasGenerales();
                noticia.titulo = reader.GetValue(0).ToString();
                noticia.fecha = reader.GetValue(1).ToString();
                noticia.mensaje = reader.GetValue(2).ToString();
                lista.Add(noticia);
            }
            connection.Close();
            return lista;
        }
    }
}

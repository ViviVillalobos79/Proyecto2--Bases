using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Estudiantes;

namespace WebApiSQLServer.Repositorios.Estudiantes
{
    public class ConsultasEstudianteRepositorio
    {
        public static List<CursosEstudiante> cursosEstudiantes(int carnet)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Nombre_Curso, Numero_Grupo, 'Semestre' + Periodo AS Periodo, Ano " +
                        "FROM View_Cursos_de_Estudiante "+"" +
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
                curso.numero_grupo = Convert.ToInt32(reader.GetValue(1));
                curso.periodo = reader.GetValue(2).ToString();
                curso.ano = Convert.ToInt32(reader.GetValue(3));
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

            var query = "SELECT Titulo, Fecha, Mensaje "+"" +
                        "FROM View_Noticias_Cursos "+
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

        public static List<DocumentosCarpeta> documentosCarpetas(int id_grupo, string nombre_carpeta)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Documento, Tamano, Fecha " + 
                        "FROM View_Documentos_en_Carpeta " + 
                        "WHERE ID_Grupo = @ID_Grupo AND Nombre = '@Nombre_Carpeta'; ";

            query = query.Replace("@ID_Grupo", id_grupo.ToString())
                         .Replace("@Nombre_Carpeta", nombre_carpeta.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<DocumentosCarpeta> lista = new List<DocumentosCarpeta>();
            DocumentosCarpeta documento = null;

            while (reader.Read())
            {
                documento = new DocumentosCarpeta();
                documento.id_documento = Convert.ToInt32(reader.GetValue(0));
                documento.tamano = Convert.ToInt32(reader.GetValue(1));
                documento.fecha = reader.GetValue(2).ToString();
                lista.Add(documento);
            }
            connection.Close();
            return lista;
        }   
    }    
}

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
    public class ConsultasAdministradorRepositorio
    {
        public static List<SemestresAdministrador> semestresAdministrador(int cedula) {
            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Ano, Periodo " +
                        "FROM xtec.SEMESTRE AS S " +
                        "WHERE S.Administrador = @Cedula";

            query = query.Replace("@Cedula", cedula.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<SemestresAdministrador> lista = new List<SemestresAdministrador>();
            SemestresAdministrador semestre = null;

            while (reader.Read())
            {
                semestre = new SemestresAdministrador();
                semestre.ano = Convert.ToInt32(reader.GetValue(0));
                semestre.periodo = reader.GetValue(1).ToString();
                lista.Add(semestre);
            }

            connection.Close();
            return lista;
        }

        public static List<CursoSemestre> cursoSemestres(int id_semestre) {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT C.Codigo_Curso, C.Nombre_Curso, C.Creditos, C.Carrera " +
                        "FROM xtec.CURSO_SEMESTRE AS S JOIN xtec.CURSO AS C ON S.Codigo_Curso = C.Codigo_Curso " +
                        "WHERE S.ID_Semestre = @ID_Semestre;";

            query = query.Replace("@ID_Semestre", id_semestre.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<CursoSemestre> lista = new List<CursoSemestre>();
            CursoSemestre semestre = null;

            while (reader.Read())
            {
                semestre = new CursoSemestre();
                semestre.codigo_curso = reader.GetValue(0).ToString();
                semestre.nombre_curso = reader.GetValue(1).ToString();
                semestre.creditos = Convert.ToInt32(reader.GetValue(2));
                semestre.carrera = reader.GetValue(3).ToString();
                lista.Add(semestre);
            }
             connection.Close();
            return lista;
        }

        public static List<GruposCurso> gruposCurso(string codigo_curso)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT C.Codigo_Curso, G.ID_Grupo, G.Numero_Grupo, G.Profesor " +
                        "FROM xtec.CURSO_GRUPO AS C JOIN xtec.GRUPO AS G ON C.ID_Grupo = G.ID_Grupo " +
                        "WHERE C.Codigo_Curso = '@Codigo_Curso'; ";

            query = query.Replace("@Codigo_Curso", codigo_curso.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<GruposCurso> lista = new List<GruposCurso>();
            GruposCurso grupo = null;

            while (reader.Read())
            {
                grupo = new GruposCurso();
                grupo.codigo_curso = reader.GetValue(0).ToString();
                grupo.id_grupo = Convert.ToInt32(reader.GetValue(1));
                grupo.numero_grupo = Convert.ToInt32(reader.GetValue(2));
                grupo.profesor = Convert.ToInt32(reader.GetValue(3));
                lista.Add(grupo);
            }
            connection.Close();
            return lista;
        }
        public static List<ProfesorSemestre> profesorSemestres(int id_semestre)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT S.Ano, S.Periodo, P.Cedula "+
                        "FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre " +
                        "JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso " +
                        "JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso " +
                        "WHERE S.ID_Semestre = @ID_Semestre; ";

            query = query.Replace("@ID_Semestre", id_semestre.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<ProfesorSemestre> lista = new List<ProfesorSemestre>();
            ProfesorSemestre profe = null;

            while (reader.Read())
            {
                profe = new ProfesorSemestre();
                profe.ano = Convert.ToInt32(reader.GetValue(0));
                profe.periodo = reader.GetValue(1).ToString();
                profe.cedula = Convert.ToInt32(reader.GetValue(2));
                lista.Add(profe);
            }
            connection.Close();
            return lista;
        }
        public static List<ProfesorCurso> profesorCurso(string codigo_curso)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT U.Codigo_Curso, U.Nombre_Curso, P.Cedula " +
                        "FROM xtec.SEMESTRE AS S JOIN xtec.CURSO_SEMESTRE AS C ON S.ID_Semestre = C.ID_Semestre "+
                        "JOIN xtec.CURSO AS U ON U.Codigo_Curso = C.Codigo_Curso " +
                        "JOIN xtec.CURSO_PROFESOR AS P ON P.Codigo_Curso = C.Codigo_Curso " +
                        "WHERE P.Codigo_Curso = '@Codigo_Curso'";

            query = query.Replace("@Codigo_Curso", codigo_curso.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<ProfesorCurso> lista = new List<ProfesorCurso>();
            ProfesorCurso curso = null;

            while (reader.Read())
            {
                curso = new ProfesorCurso();
                curso.codigo_curso = reader.GetValue(0).ToString();
                curso.nombre_curso = reader.GetValue(1).ToString();
                curso.cedula = Convert.ToInt32(reader.GetValue(2));
                lista.Add(curso);
            }
            connection.Close();
            return lista;
        }
        public static bool inicioSemestre(List<InicizalizarSemestre> json)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            var query = "EXEC SP_INICIAR_SEMESTRE N@jsonDATOS";

            query = query.Replace("@jsonDATOS",json. ToString());

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

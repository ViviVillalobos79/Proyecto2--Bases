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
        public static List<CursosHabilitados> cursoSemestres() {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT Codigo_Curso, Nombre_Curso, Creditos " +
                        "FROM xtec.CURSO AS C " +
                        "WHERE C.Habilitado = 1;";

            //query = query.Replace("@ID_Semestre", id_semestre.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<CursosHabilitados> lista = new List<CursosHabilitados>();
            CursosHabilitados semestre = null;

            while (reader.Read())
            {
                semestre = new CursosHabilitados();
                semestre.codigo_curso = reader.GetValue(0).ToString();
                semestre.nombre_curso = reader.GetValue(1).ToString();
                semestre.creditos = Convert.ToInt32(reader.GetValue(2));
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

        public static List<EstudiantesSemestre> estudiantesSemestres(int id_semestre)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT S.Ano, S.Periodo, E.Carnet " +
                        "FROM xtec.SEMESTRE AS S JOIN xtec.GRUPO AS G ON S.ID_Semestre = G.Semestre " +
                        "JOIN xtec.GRUPO_ESTUDIANTE AS E ON G.ID_Grupo = E.ID_Grupo " +
                        "WHERE S.ID_Semestre = @ID_Semestre;";

            query = query.Replace("@ID_Semestre", id_semestre.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<EstudiantesSemestre> lista = new List<EstudiantesSemestre>();
            EstudiantesSemestre profe = null;

            while (reader.Read())
            {
                profe = new EstudiantesSemestre();
                profe.ano = Convert.ToInt32(reader.GetValue(0));
                profe.periodo = reader.GetValue(1).ToString();
                profe.carnet = Convert.ToInt32(reader.GetValue(2));
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
            Console.WriteLine(json);
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            /*
            List<InicizalizarSemestre> cadena = json;//new List<InicizalizarSemestre>();
            InicizalizarSemestre semestre = new InicizalizarSemestre();

            foreach (InicizalizarSemestre iniciar in json) {
                System.Diagnostics.Debug.WriteLine(json);
                semestre.Carnet = json[iniciar].Carnet;
                semestre.CodCurso = json[0].CodCurso;
                semestre.NomCurso
                semestre.Creditos
                semestre.Habilitado
                semestre.Ano
                semestre.Periodo
                semestre.NumGrupo
                semestre.CedProfe
                semestre.CedAdmin
            }
            */

            var query = "EXEC SP_INICIAR_SEMESTRE '@jsonDATOS'";

            query = query.Replace("@jsonDATOS", json.ToString());
            
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.CommandType = CommandType.StoredProcedure;
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

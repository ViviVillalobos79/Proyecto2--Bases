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
    public class SemestreRepositorio
    {
        public static List<Semestre> GetAllSemestres()
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = conexion.StringConexion;

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Semestre, Periodo, Ano, Administrador FROM xtec.SEMESTRE";

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;

            connection.Open();
            reader = sqlCmd.ExecuteReader();

            List<Semestre> listaSemestre = new List<Semestre>();
            Semestre semestre = null;
            while (reader.Read())
            {
                semestre = new Semestre();
                semestre.id_semestre = Convert.ToInt32(reader.GetValue(0));
                semestre.periodo = reader.GetValue(1).ToString();
                semestre.ano = Convert.ToInt32(reader.GetValue(2));
                semestre.administrador = Convert.ToInt32(reader.GetValue(3));
                listaSemestre.Add(semestre);
            }
            connection.Close();
            return listaSemestre;
        }

        public static List<Semestre> GetSemestre(int cedula)
        {

            Conexion conexion = new Conexion();
            SqlDataReader reader = null;
            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.CommandType = CommandType.Text;

            var query = "SELECT ID_Semestre, Periodo, Ano, Administrador " +
                "FROM xtec.SEMESTRE WHERE ID_Semestre = @ID_Semestre";
            query = query.Replace("@ID_Semestre", cedula.ToString());

            sqlCmd.CommandText = query;
            sqlCmd.Connection = connection;
            connection.Open();

            reader = sqlCmd.ExecuteReader();
            List<Semestre> listaSemestre = new List<Semestre>();
            Semestre semestre = null;

            while (reader.Read())
            {
                semestre = new Semestre();
                semestre.id_semestre = Convert.ToInt32(reader.GetValue(0));
                semestre.periodo = reader.GetValue(1).ToString();
                semestre.ano = Convert.ToInt32(reader.GetValue(2));
                semestre.administrador = Convert.ToInt32(reader.GetValue(3));
                listaSemestre.Add(semestre);
            }

            connection.Close();
            return listaSemestre;
        }

        public static bool PostSemestre(Semestre semestre)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.SEMESTRE(Periodo, Ano, Administrador) " +
                        "VALUES('@Periodo', @Ano, @Administrador)";
            query = query.Replace("@Periodo", semestre.periodo.ToString())
                         .Replace("@Ano", semestre.ano.ToString())
                         .Replace("@Administrador", semestre.administrador.ToString());
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

        public static bool UpdateSemestre(Semestre semestre, int id_semestre)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "UPDATE xtec.SEMESTRE SET Periodo = '@Periodo', Ano = @Ano, Administrador = @Administrador "+
                        "WHERE ID_Semestre = @ID_Semestre";
            query = query.Replace("@Periodo", semestre.periodo.ToString())
                         .Replace("@Ano", semestre.ano.ToString())
                         .Replace("@Administrador", semestre.administrador.ToString())
                         .Replace("@ID_Semestre", id_semestre.ToString());
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

        public static bool DeleteSemestre(int cedula)
        {
            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "DELETE FROM xtec.SEMESTRE WHERE ID_Semestre = @ID_Semestre";

            query = query.Replace("@ID_Semestre", cedula.ToString());

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

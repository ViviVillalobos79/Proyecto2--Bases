using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;

namespace WebApiSQLServer.Repositorios
{
    public class GrupoCarpetaRepositorio
    {
        public static bool PostCarpetaGrupo(GrupoCarpeta carpeta)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);
            var query = "INSERT INTO xtec.GRUPO_CARPETA VALUES (@ID_Carpeta, @ID_Grupo)";

            query = query.Replace("@ID_Grupo", carpeta.id_grupo.ToString())
                         .Replace("@ID_Grupo", carpeta.id_carpeta.ToString());
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                command.Connection = connection;
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

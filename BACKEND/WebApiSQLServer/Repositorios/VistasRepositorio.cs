using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Consultas;

namespace WebApiSQLServer.Repositorios
{
    public class VistasRepositorio
    {
        public static bool PostCarpeta(SP_grupo_carpetas carpeta)
        {

            Conexion conexion = new Conexion();

            SqlConnection connection = new SqlConnection(conexion.StringConexion);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand("SP_Grupo_Carpeta", connection);
                command.Parameters.Add("@ID_Grupo", SqlDbType.Int).Value = carpeta.id_grupo;
                command.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = carpeta.nombre;
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

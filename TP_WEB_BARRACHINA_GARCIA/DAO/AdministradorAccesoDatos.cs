using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAO
{
    
       public class AdministradorAccesoDatos

        {
            public static string RutaBaseDatos = "data source = localhost\\SQLEXPRESS; initial catalog= PROMOCION_DB; integrated security=sspi";

            private SqlConnection conexionSQL;
            private SqlCommand comandoSQL;
            private SqlDataReader lectorDatos;

            public AdministradorAccesoDatos()
            {

                conexionSQL = new SqlConnection(RutaBaseDatos);
            }

            public SqlCommand Comando
            {
                get { return comandoSQL; }
            }

            public SqlDataReader LectorDatos
            {
                get { return lectorDatos; }
            }

            public void DefinirTipoComando(string consulta)
            {

                comandoSQL = new SqlCommand();
                comandoSQL.CommandType = System.Data.CommandType.Text;
                comandoSQL.CommandText = consulta;
            }

            public void AbrirConexion()
            {

                conexionSQL.Open();
            }

            public void CerrarConexion()
            {

                conexionSQL.Close();
            }

            public void EjecutarAccion()
            {

                comandoSQL.Connection = conexionSQL;
                comandoSQL.ExecuteNonQuery();
            }

            public void EjecutarConsulta()
            {

                comandoSQL.Connection = conexionSQL;
                lectorDatos = comandoSQL.ExecuteReader();
            }

            public void CerrarReader()
            {

                lectorDatos.Close();
            }
        }
}


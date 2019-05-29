using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Dominio;


namespace Negocio
{
   public class VoucherNegocio
    {
        AdministradorAccesoDatos AccederDatos = new AdministradorAccesoDatos();

        public bool BusquedaVoucher(Voucher unVoucher)
        {

            AccederDatos.DefinirTipoComando("Select CodigoVoucher from Vouchers");
            AccederDatos.AbrirConexion();
            AccederDatos.EjecutarAccion();
            AccederDatos.EjecutarConsulta();

            while (AccederDatos.LectorDatos.Read())
            {
                if (AccederDatos.LectorDatos["CodigoVoucher"].ToString().ToUpper() == unVoucher.CodigoVoucher.ToUpper())
                {

                    AccederDatos.CerrarConexion();
                    AccederDatos.CerrarReader();
                    return true;
                }
            }

            AccederDatos.CerrarConexion();
            AccederDatos.CerrarReader();
            return false;
        }

        public void AsignacionVoucher(Voucher unVoucher) {

            AccederDatos.AbrirConexion();
            AccederDatos.DefinirTipoComando("UPDATE Vouchers SET Participante=@Participante,Estado=@Estado WHERE CodigoVoucher = '" + unVoucher.CodigoVoucher +"'");
            AccederDatos.Comando.Parameters.Clear();
            AccederDatos.Comando.Parameters.AddWithValue("@Participante", unVoucher.Participante);
            AccederDatos.Comando.Parameters.AddWithValue("@Estado", unVoucher.Estado);
            AccederDatos.EjecutarAccion();
            AccederDatos.CerrarConexion();
            
        }
    }
}

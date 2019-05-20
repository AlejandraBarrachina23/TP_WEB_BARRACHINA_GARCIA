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

            AccederDatos.DefinirTipoComando("Select CodigoVoucher from Voucher");
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
    }
}

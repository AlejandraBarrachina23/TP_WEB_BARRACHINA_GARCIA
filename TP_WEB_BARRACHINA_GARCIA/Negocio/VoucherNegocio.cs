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

        public int BusquedaVoucher(Voucher unVoucher)
        {

            AccederDatos.DefinirTipoComando("Select CodigoVoucher, Estado from Vouchers");
            AccederDatos.AbrirConexion();
            AccederDatos.EjecutarConsulta();

            while (AccederDatos.LectorDatos.Read())
            {
                if (AccederDatos.LectorDatos["CodigoVoucher"].ToString().ToUpper() == unVoucher.CodigoVoucher.ToUpper())
                {
                    if ((bool)AccederDatos.LectorDatos["Estado"]) {

                        AccederDatos.CerrarConexion(); //Voucher asignado
                        AccederDatos.CerrarReader();
                        return 1;

                    }

                    AccederDatos.CerrarConexion(); //Voucher sin asignar
                    AccederDatos.CerrarReader();
                    return 2;
                }
            }

            AccederDatos.CerrarConexion();
            AccederDatos.CerrarReader();
            return 3; //Voucher que no existe
        }

        public void AsignacionVoucher(Voucher unVoucher) {

            AccederDatos.AbrirConexion();
            AccederDatos.DefinirTipoComando("UPDATE Vouchers SET Participante=@Participante,Estado=@Estado, CodigoProducto=@CodigoProducto WHERE CodigoVoucher = '" + unVoucher.CodigoVoucher +"'");
            AccederDatos.Comando.Parameters.Clear();
            AccederDatos.Comando.Parameters.AddWithValue("@Participante", unVoucher.Participante);
            AccederDatos.Comando.Parameters.AddWithValue("@Estado", unVoucher.Estado);
            AccederDatos.Comando.Parameters.AddWithValue("@CodigoProducto", unVoucher.CodigoProducto);
            AccederDatos.EjecutarAccion();
            AccederDatos.CerrarConexion();
            
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TP_WEB_BARRACHINA_GARCIA
{
    public partial class About : Page

    {
        private Usuario unUsuario = null;
        private UsuarioNegocio unUsuarioNegocio = new UsuarioNegocio();
        private VoucherNegocio unVoucherNegocio = new VoucherNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Usuario unNuevoUsuario = new Usuario();
            Voucher unVoucher = new Voucher();
            
            unNuevoUsuario.Nombre = tboxNombre.Text;
            unNuevoUsuario.Apellido = tboxApellido.Text;
            unNuevoUsuario.DNI = tboxDNI.Text;
            unNuevoUsuario.Mail = tboxMail.Text;
            unNuevoUsuario.Direccion = tboxDireccion.Text;
            unNuevoUsuario.Ciudad = tboxCiudad.Text;
            unNuevoUsuario.CodigoPostal = tboxCP.Text;

            unVoucher = (Voucher)Session["Voucher"];
            unVoucher.Participante = unNuevoUsuario.DNI;
            unVoucher.CodigoProducto = Session["CodigoProducto"].ToString();
            unVoucher.Estado = true;

            unUsuarioNegocio.AgregarUsuario(unNuevoUsuario);
            unVoucherNegocio.AsignacionVoucher(unVoucher);

        }
        //nofunciona
        protected void tboxDNI_TextChanged(object sender, EventArgs e)
        {
            
            unUsuario = unUsuarioNegocio.BusquedaUsuario(tboxDNI.Text);

            if (unUsuario != null) {

                tboxApellido.Text = unUsuario.Apellido;
                tboxNombre.Text = unUsuario.Nombre;
                tboxApellido.Text = unUsuario.Apellido;
                tboxDNI.Text = unUsuario.DNI;
                tboxMail.Text = unUsuario.Mail;
                tboxDireccion.Text  = unUsuario.Direccion;
                tboxCiudad.Text = unUsuario.Ciudad;
                tboxCP.Text = unUsuario.CodigoPostal;
            }
        }
    }
}
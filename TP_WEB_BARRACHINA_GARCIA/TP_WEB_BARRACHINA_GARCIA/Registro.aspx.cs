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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Usuario unNuevoUsuario = new Usuario();
            Voucher unVoucher = new Voucher();
            UsuarioNegocio unUsuarioNegocio = new UsuarioNegocio();
            VoucherNegocio unVoucherNegocio = new VoucherNegocio();

            unNuevoUsuario.Nombre = tboxNombre.Text;
            unNuevoUsuario.Apellido = tboxApellido.Text;
            unNuevoUsuario.DNI = tboxDNI.Text;
            unNuevoUsuario.Mail = tboxMail.Text;
            unNuevoUsuario.Direccion = tboxDireccion.Text;
            unNuevoUsuario.Ciudad = tboxCiudad.Text;
            unNuevoUsuario.CodigoPostal = tboxCP.Text;

            unVoucher = (Voucher)Session["Voucher"];
            unVoucher.Participante = unNuevoUsuario.DNI;
            unVoucher.Estado = true;

            unUsuarioNegocio.AgregarUsuario(unNuevoUsuario);
            unVoucherNegocio.AsignacionVoucher(unVoucher);

        }
    }
}
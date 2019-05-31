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
        private UsuarioNegocio unUsuarioNegocio = new UsuarioNegocio();
        private VoucherNegocio unVoucherNegocio = new VoucherNegocio();
        private Usuario unUsuario = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Usuario unNuevoUsuario = new Usuario();
            Voucher unVoucher = new Voucher();
            unVoucher = (Voucher)Session["Voucher"];


            if (!(bool)Session["RegistroUsuario"])
            {
                unNuevoUsuario.Nombre = tboxNombre.Text;
                unNuevoUsuario.Apellido = tboxApellido.Text;
                unNuevoUsuario.DNI = tboxDNI.Text;
                unNuevoUsuario.Mail = tboxMail.Text;
                unNuevoUsuario.Direccion = tboxDireccion.Text;
                unNuevoUsuario.Ciudad = tboxCiudad.Text;
                unNuevoUsuario.CodigoPostal = tboxCP.Text;
                unUsuarioNegocio.AgregarUsuario(unNuevoUsuario);
                unVoucher.Participante = unNuevoUsuario.DNI;

            }

            else {

                unNuevoUsuario.DNI = tboxDNI.Text;
                unVoucher.Participante = unNuevoUsuario.DNI;

            }
                
                unVoucher.CodigoProducto = Session["CodigoProducto"].ToString();
                unVoucher.Estado = true;            
                unVoucherNegocio.AsignacionVoucher(unVoucher);
                
                Utilidades utilidades = new Utilidades();
                utilidades.EnviarMail("code.test.aspx@gmail.com", tboxMail.Text, "codetest1234", "Ya estas inscripto en el sorteo 'Tu Primer Instrumento'");
                Session["Mensaje"] = "GRACIAS POR PARTICIPAR.";
                Response.Redirect("Mensaje.aspx");

        }
        
        protected void tboxDNI_TextChanged(object sender, EventArgs e)
        {
            unUsuario = unUsuarioNegocio.BusquedaUsuario(tboxDNI.Text);
            bool Registrado = false;

            if (unUsuario != null)
            {

                tboxNombre.Text = unUsuario.Nombre;
                tboxApellido.Text = unUsuario.Apellido;
                tboxMail.Text = unUsuario.Mail;
                tboxDireccion.Text = unUsuario.Direccion;
                tboxCiudad.Text = unUsuario.Ciudad;
                tboxCP.Text = unUsuario.CodigoPostal;
                Registrado = true;

            }

            else {

                tboxNombre.Text = "";
                tboxApellido.Text = "";
                tboxMail.Text = "";
                tboxDireccion.Text = "";
                tboxCiudad.Text = "";
                tboxCP.Text = "";
                Registrado = false;

            }

            Session["RegistroUsuario"] = Registrado;
        }
    }
}
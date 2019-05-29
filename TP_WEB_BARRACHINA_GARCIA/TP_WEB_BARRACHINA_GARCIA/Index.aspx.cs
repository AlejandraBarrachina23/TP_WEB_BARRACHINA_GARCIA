using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TP_WEB_BARRACHINA_GARCIA
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            VoucherNegocio unVoucher = new VoucherNegocio();
            Voucher unNuevoVoucher = new Voucher();
            

            unNuevoVoucher.CodigoVoucher = tboxVoucher.Text;

            if (unVoucher.BusquedaVoucher(unNuevoVoucher) == 2)
            {
                unNuevoVoucher.CodigoVoucher = tboxVoucher.Text;
                Session["Voucher"] = unNuevoVoucher;
                Response.Redirect("Premios.aspx");
            }

            else if (unVoucher.BusquedaVoucher(unNuevoVoucher) == 3) {

                Session["Error"] = "El codigo " + tboxVoucher.Text + " no existe.";
                Response.Redirect("Error.aspx");
            }

            else
            {
                Session["Error"] = "El voucher " + tboxVoucher.Text + " ya tiene asignado un participante.";
                Response.Redirect("Error.aspx");
            }
        }
    }
}
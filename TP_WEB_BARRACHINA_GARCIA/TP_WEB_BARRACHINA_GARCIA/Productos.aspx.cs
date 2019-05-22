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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio unProductoNegocio = new ProductoNegocio();
            List<Producto> ListadoProducto = unProductoNegocio.ListadoProductos();

            lblNombreProducto.Text = ListadoProducto[0].Nombre;
            lblDescripcion.Text = ListadoProducto[0].Descripcion;

        }
    }
}
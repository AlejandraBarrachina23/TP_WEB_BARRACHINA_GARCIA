﻿using System;
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

            lblPremioUno.Text = ListadoProducto[0].Nombre;
            lblDescripcionPremioUno.Text = ListadoProducto[0].Descripcion;
            ImgPremioUno.ImageUrl = ListadoProducto[0].Imagen;
            lblPremioDos.Text = ListadoProducto[1].Nombre;
            lblDescripcionPremioDos.Text = ListadoProducto[1].Descripcion;
            ImgPremioDos.ImageUrl = ListadoProducto[1].Imagen;
            lblPremioTres.Text = ListadoProducto[2].Nombre;
            lblDescripcionPremioTres.Text = ListadoProducto[2].Descripcion;
            ImgPremioTres.ImageUrl = ListadoProducto[2].Imagen;
            lblPremioCuatro.Text = ListadoProducto[3].Nombre;
            lblDescripcionPremioCuatro.Text = ListadoProducto[3].Descripcion;
            ImgPremioCuatro.ImageUrl = ListadoProducto[3].Imagen;

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Button Boton = (Button)sender;
            string BotonActivo = Boton.ID;

            if (BotonActivo == "BtnAceptarPremioUno") Session["CodigoProducto"] = 1;
            else if (BotonActivo == "BtnAceptarPremioDos") Session["CodigoProducto"] = 2;
            else if (BotonActivo == "BtnAceptarPremioTres") Session["CodigoProducto"] = 3;
            else if (BotonActivo == "BtnAceptarPremioCuatro") Session["CodigoProducto"] = 4;

            Response.Redirect("Registro.aspx");
        }
    }
}
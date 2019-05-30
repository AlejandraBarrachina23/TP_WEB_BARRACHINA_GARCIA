using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;


namespace TP_WEB_BARRACHINA_GARCIA
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblMensajeError.Text = Session["Mensaje"].ToString();
            Response.AddHeader("REFRESH", "3;URL=Index.aspx");
           
        }
    }
}
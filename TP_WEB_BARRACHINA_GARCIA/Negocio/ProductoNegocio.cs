using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using DAO;

namespace Negocio
{
    public class ProductoNegocio
    {
        private AdministradorAccesoDatos AccesoDatos = new AdministradorAccesoDatos();

        public List<Producto> ListadoProductos() {

            List<Producto> ListadoProductos = new List<Producto>();
            AccesoDatos.AbrirConexion();
            AccesoDatos.DefinirTipoComando("SELECT * FROM Productos");
            AccesoDatos.EjecutarAccion();
            AccesoDatos.EjecutarConsulta();
           

            while (AccesoDatos.LectorDatos.Read()) {

                Producto unProducto = new Producto();
                unProducto.Nombre = AccesoDatos.LectorDatos["Nombre"].ToString();
                unProducto.Descripcion = AccesoDatos.LectorDatos["Descripcion"].ToString();
                unProducto.Imagen = AccesoDatos.LectorDatos["Imagen"].ToString();
                ListadoProductos.Add(unProducto);
            }

            AccesoDatos.CerrarReader();
            AccesoDatos.CerrarConexion();
            return ListadoProductos;
        }

    }
}

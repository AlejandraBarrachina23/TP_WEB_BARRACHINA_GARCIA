using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        private AdministradorAccesoDatos AccederDatos = new AdministradorAccesoDatos();

        public void AgregarUsuario(Usuario unUsuario) {

            AccederDatos.AbrirConexion();
            AccederDatos.DefinirTipoComando("INSERT INTO Participantes (DNI,Nombre,Apellido,Mail,Direccion,Ciudad,CodigoPostal) VALUES ('" + unUsuario.DNI + "','" + unUsuario.Nombre + "','" + unUsuario.Apellido + "'" +
                ",'" + unUsuario.Mail + "','" + unUsuario.Direccion + "','" + unUsuario.Ciudad + "','" + unUsuario.CodigoPostal + "')");
            AccederDatos.EjecutarAccion();
            AccederDatos.CerrarConexion();
        }

        public Usuario BusquedaUsuario(string NumeroDNI) {

            Usuario unUsuario = new Usuario();
            AccederDatos.AbrirConexion();
            AccederDatos.DefinirTipoComando("SELECT * FROM Participantes WHERE DNI = " + NumeroDNI);
            AccederDatos.EjecutarConsulta();
            while (AccederDatos.LectorDatos.Read()) {

                unUsuario.Nombre = AccederDatos.LectorDatos["Nombre"].ToString();
                unUsuario.Apellido = AccederDatos.LectorDatos["Apellido"].ToString();
                unUsuario.Direccion = AccederDatos.LectorDatos["Direccion"].ToString();
                unUsuario.Ciudad = AccederDatos.LectorDatos["Ciudad"].ToString();
                unUsuario.CodigoPostal = AccederDatos.LectorDatos["CodigoPostal"].ToString();
                unUsuario.Mail = AccederDatos.LectorDatos["Mail"].ToString();
                AccederDatos.CerrarConexion();
                AccederDatos.CerrarReader();
                return unUsuario;
            }

            return null;
        }
    }
}

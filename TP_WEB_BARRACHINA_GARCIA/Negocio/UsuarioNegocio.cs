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
    }
}

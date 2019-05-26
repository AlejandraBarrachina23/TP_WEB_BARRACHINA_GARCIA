<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

	<p>
		<asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
		<p>	
			<asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
		</p>
	
	<p>
		<asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</p>

	<p>
		<asp:Label ID="lblDNI" runat="server" Text="DNI:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			</p>
    </p>

	<p>
		<asp:Label ID="lblMail" runat="server" Text="E-mail:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			</p>
    </p>

	<p>
		<asp:Label ID="lblDireccion" runat="server" Text="Dirección:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
			</p>
    </p>

	<p>
		<asp:Label ID="lblCiudad" runat="server" Text="Ciudad:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
			</p>

	<p>
		<asp:Label ID="lblCP" runat="server" Text="Código Postal:"></asp:Label>
			<p>
				<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
			</p>
    </p>
	<p

	<p>
		<asp:Button ID="Button1" runat="server" Text="Registar" />
    </p>

   
</asp:Content>

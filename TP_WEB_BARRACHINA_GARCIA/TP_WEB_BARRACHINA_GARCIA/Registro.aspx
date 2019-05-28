<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h2><%: Title %>.</h2>

    <div id ="form-register">
         
        <div class="form-groups">       
		    <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
	        <asp:TextBox ID="tboxApellido" runat="server"></asp:TextBox>
		</div>
        <div class="form-groups"> 
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
		    <asp:TextBox ID="tboxNombre" runat="server"></asp:TextBox>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblDNI" runat="server" Text="DNI:"></asp:Label>
		    <asp:TextBox ID="tboxDNI" runat="server"></asp:TextBox>
        </div>
		<div class="form-groups"> 
            <asp:Label ID="lblMail" runat="server" Text="E-mail:"></asp:Label>
		    <asp:TextBox ID="tboxMail" runat="server"></asp:TextBox>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblDireccion" runat="server" Text="Dirección:"></asp:Label>
		    <asp:TextBox ID="tboxDireccion" runat="server"></asp:TextBox>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad:"></asp:Label>
		    <asp:TextBox ID="tboxCiudad" runat="server"></asp:TextBox>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCP" runat="server" Text="Código Postal:"></asp:Label>
		    <asp:TextBox ID="tboxCP" runat="server"></asp:TextBox>
		</div>
		<asp:Button ID="btnAceptar" runat="server" Text="Registar" />
    </div>

</asp:Content>

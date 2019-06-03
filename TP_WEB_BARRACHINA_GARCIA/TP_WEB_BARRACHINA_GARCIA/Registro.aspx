<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">     

    <div class ="form-register">
        <h1>3.Registrate</h1>
        <div class="form-groups"> 
		    <asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label><br />
		    <asp:TextBox ID="tboxDNI" class="input" runat="server" OnTextChanged="tboxDNI_TextChanged" AutoPostBack="true"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidadorDNIVacio" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxDNI" Text="Debe ingresar el DNI"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ValidadorSoloNumerosDNI" CssClass="errorSecundario" ControlToValidate="tboxDNI" runat="server"  ErrorMessage="Ingresa valores numéricos" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
        </div>
        <div class="form-groups">       
		    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label><br />
	        <asp:TextBox ID="tboxApellido" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidadorApellidoVacio" CssClass="errorPrincipal" runat="server" ErrorMessage="Debe ingresar el " ControlToValidate="tboxApellido" Text="Debe ingresar el Apellido" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ValidadorSoloLetrasApellido" CssClass="errorSecundario" ControlToValidate="tboxApellido" runat="server"  ErrorMessage="Solo se permiten letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

		</div>
        <div class="form-groups"> 
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label><br />
		    <asp:TextBox ID="tboxNombre" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValiadorNombreVacio" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxNombre" Text="Debe ingresar el Nombre"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ValidadorSoloLetrasNombre" CssClass="errorSecundario" ControlToValidate="tboxNombre" runat="server"  ErrorMessage="Solo se permiten letras" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
        </div>
		<div class="form-groups"> 
            <asp:Label ID="lblMail" runat="server" Text="E-mail"></asp:Label><br />
		    <asp:TextBox ID="tboxMail" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidadorMailVacio" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxMail" Text="Debe ingresar el E-mail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ValidadorFormatoMail" CssClass="errorSecundario" ControlToValidate="tboxMail" runat="server"  ErrorMessage="Formato de e-mail incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label><br />
		    <asp:TextBox ID="tboxDireccion" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidadorDireccionVacia" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxDireccion" Text="Debe ingresar La Dirección"></asp:RequiredFieldValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label><br />
		    <asp:TextBox ID="tboxCiudad" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidadorCiudadVacia" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxCiudad" Text="Debe ingresar La Ciudad"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="ValidarSoloLetrasCiudad" CssClass="errorSecundario" ControlToValidate="tboxCiudad" runat="server"  ErrorMessage="Solo se permiten letras" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCP" runat="server" Text="Código Postal"></asp:Label><br />
		    <asp:TextBox ID="tboxCP" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="ValidarCPVacio" CssClass="errorPrincipal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxCP" Text="Debe ingresar el Código Postal"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="ValidarSoloNumeros" CssClass="errorSecundario" ControlToValidate="tboxCP" runat="server"  ErrorMessage="Ingresa valores numéricos" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
		</div>
		    <asp:Button ID="btnAceptar" class="boton" runat="server" Text="Participar" ValidationGroup="form-register" OnClick="btnAceptar_Click" />
        </div>

</asp:Content>

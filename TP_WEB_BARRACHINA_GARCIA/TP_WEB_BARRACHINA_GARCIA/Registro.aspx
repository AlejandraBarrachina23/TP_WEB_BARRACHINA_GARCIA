<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <style> 
          
        body {
            background-image: url(https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);
            background-attachment: inherit;
            background-position: center;
            background-size: cover;
            color:white;
            font-family: 'Oswald', sans-serif;
                    
        }

        .form-register {
        
            margin:0 auto;
            padding:10px;
            width:30%;
            text-align:center;
            background:rgba(0,0,0,.5);
        }

        .input{

            color:black;
            width:60%;
            margin:1px;
            text-align:center;

        }

        .boton {

             background-color:#292524;
             font-size:14px;
             color:white;
             width:20%;
             padding:3px;
             margin-top: 1px;
             height:33px;
             border-style: hidden;
         }


    </style>      

    <div class ="form-register">
        <h1>3.Registrate</h1>
        <div class="form-groups"> 
		    <asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label><br />
		    <asp:TextBox ID="tboxDNI" class="input" runat="server" OnTextChanged="tboxDNI_TextChanged" AutoPostBack="true"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxDNI" Text="Debe ingresar el DNI"></asp:RequiredFieldValidator>
        </div>
        <div class="form-groups">       
		    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label><br />
	        <asp:TextBox ID="tboxApellido" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxApellido" Text="Debe ingresar el Apellido"></asp:RequiredFieldValidator>
		</div>
        <div class="form-groups"> 
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label><br />
		    <asp:TextBox ID="tboxNombre" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxNombre" Text="Debe ingresar el Nombre"></asp:RequiredFieldValidator>
        </div>
		<div class="form-groups"> 
            <asp:Label ID="lblMail" runat="server" Text="E-mail"></asp:Label><br />
		    <asp:TextBox ID="tboxMail" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxMail" Text="Debe ingresar el E-mail"></asp:RequiredFieldValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label><br />
		    <asp:TextBox ID="tboxDireccion" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxDireccion" Text="Debe ingresar La Dirección"></asp:RequiredFieldValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label><br />
		    <asp:TextBox ID="tboxCiudad" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxCiudad" Text="Debe ingresar La Ciudad"></asp:RequiredFieldValidator>
        </div>
        <div class="form-groups"> 
		    <asp:Label ID="lblCP" runat="server" Text="Código Postal"></asp:Label><br />
		    <asp:TextBox ID="tboxCP" class="input" runat="server"></asp:TextBox><br />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tboxCP" Text="Debe ingresar el Código Postal"></asp:RequiredFieldValidator>

		</div>
		    <asp:Button ID="btnAceptar" class="boton" runat="server" Text="Participar" ValidationGroup="form-register" OnClick="btnAceptar_Click" />
        </div>

</asp:Content>

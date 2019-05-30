<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>

        body {
            
            background-image: url(https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);
            background-attachment: local;
            background-position: center;
            background-size: cover;
            color:black;
            font-family: 'Oswald', sans-serif;
                    
        }

        .main-container {
            
            overflow:hidden;
        
        }

      .container-premios   {
        
            width: 250px;
            height:500px;
            padding: 10px;
            margin:10px;
            border:1px solid;
            text-align: center;
            float:left;
        
        }

      h1 {
            
            color:black;
            font-family: 'Anton', sans-serif;
            text-align:center;
                    
        }

        img {
        
            width:200px;
            height:200px;
            margin:15px;
            border: 1px solid;
        
        }

        .boton {

             background-color:#292524;
             font-size:14px;
             color:white;
             width:80px;
             padding:3px;
             margin-top: 10px;
             height:33px;
             border-style: hidden;
            
        }


    </style>    
    <h1>2.Elige el premio por el quieres participar</h1>
    <div class ="main-container">
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioUno" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioUno" runat="server"/>
            <asp:Label ID="lblDescripcionPremioUno" CssClass="texto" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioUno" class="boton" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
          <div class ="container-premios"> 
            <asp:Label ID="lblPremioDos" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioDos" runat="server"/>
            <asp:Label ID="lblDescripcionPremioDos" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioDos" class="boton" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioTres" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioTres" runat="server"/>
            <asp:Label ID="lblDescripcionPremioTres" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioTres" class="boton" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioCuatro" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioCuatro" runat="server"/>
            <asp:Label ID="lblDescripcionPremioCuatro" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioCuatro" class="boton" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
    </div>   
</asp:Content>

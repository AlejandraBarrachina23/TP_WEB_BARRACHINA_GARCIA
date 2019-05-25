<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>

        .ContenedorPrincipal {
            
            overflow:hidden;
        
        }

      .ContenedorProductos   {
        
            width: 250px;
            height:500px;
            padding: 10px;
            margin:10px;
            border:1px solid;
            text-align: center;
            float:left;
        
        }

        img {
        
            width:200px;
            height:200px;
            margin:15px;
        
        }

    </style>    

    <div class ="ContenedorPrincipal">
        <div class ="ContenedorProductos"> 
            <asp:Label ID="lblPremioUno" runat="server" Text="NombreProducto"></asp:Label>
            <p> <asp:Image ID="ImgPremioUno" runat="server" ImageUrl="~/images/2f82036a-52dc-475d-ba2a-8d1d3eb2b3f4_1.896bb387e318320e4ec0f145692305e6.jpeg"/>
                <asp:Label ID="lblDescripcionPremioUno" runat="server" Text="Label"></asp:Label>
            </p>
            <p> <asp:Button ID="BtnAceptar" runat="server" Text="Elegir" /></p>
        </div>
          <div class ="ContenedorProductos"> 
            <asp:Label ID="lblPremioDos" runat="server" Text="NombreProducto"></asp:Label>
            <p> <asp:Image ID="ImgPremioDos" runat="server" ImageUrl="~/images/61679ihvfzL._SY355_.jpg" />
                <asp:Label ID="lblDescripcionPremioDos" runat="server" Text="Label"></asp:Label>
            </p>
            <p> <asp:Button ID="Button1" runat="server" Text="Elegir" /></p>
        </div>
          <div class ="ContenedorProductos"> 
            <asp:Label ID="lblPremioTres" runat="server" Text="NombreProducto"></asp:Label>
            <p> <asp:Image ID="ImgPremioTres" runat="server" ImageUrl="~/images/81i9jD+6HLL._SY450_.jpg"/>
                <asp:Label ID="lblDescripcionPremioTres" runat="server" Text="Label"></asp:Label>
            </p>
            <p> <asp:Button ID="Button2" runat="server" Text="Elegir" /></p>
        </div>
              <div class ="ContenedorProductos"> 
            <asp:Label ID="lblPremioCuatro" runat="server" Text="NombreProducto"></asp:Label>
            <p> <asp:Image ID="ImgPremioCuatro" runat="server" />
                <asp:Label ID="lblDescripcionPremioCuatro" runat="server" Text="Label"></asp:Label>
            </p>
            <p> <asp:Button ID="Button3" runat="server" Text="Elegir" /></p>
        </div>
    </div>


       
</asp:Content>

<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>

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
        
        text-align:center;
        }

        img {
        
            width:200px;
            height:200px;
            margin:15px;
        
        }

    </style>    
    <h1>Elige tu premio</h1>
    <div class ="main-container">
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioUno" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioUno" runat="server"/>
            <asp:Label ID="lblDescripcionPremioUno" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="BtnAceptarPremioUno" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
          <div class ="container-premios"> 
            <asp:Label ID="lblPremioDos" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioDos" runat="server"/>
            <asp:Label ID="lblDescripcionPremioDos" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="BtnAceptarPremioDos" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioTres" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioTres" runat="server"/>
            <asp:Label ID="lblDescripcionPremioTres" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioTres" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
        <div class ="container-premios"> 
            <asp:Label ID="lblPremioCuatro" runat="server" Text="NombreProducto"></asp:Label>
            <asp:Image ID="ImgPremioCuatro" runat="server"/>
            <asp:Label ID="lblDescripcionPremioCuatro" runat="server" Text="Label"></asp:Label><br />
            <asp:Button ID="btnAceptarPremioCuatro" runat="server" Text="Elegir" OnClick="btnAceptar_Click"/>
        </div>
    </div>   
</asp:Content>

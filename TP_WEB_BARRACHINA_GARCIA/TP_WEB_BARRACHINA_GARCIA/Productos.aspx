<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>

      .CuadroFoto   {
        
            width: 300px;
            padding: 10px;
            margin:10px;
            border:1px solid;
        
        }

    </style>    

    <div class ="CuadroFoto"> 
        <asp:Label ID="lblNombreProducto" runat="server" Text="NombreProducto"></asp:Label>
        <p> <asp:Image ID="ImgProducto" runat="server" />
            <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label>
        </p>
        <p> <asp:Button ID="BtnAceptar" runat="server" Text="Elegir" /></p>
    </div>
       
</asp:Content>

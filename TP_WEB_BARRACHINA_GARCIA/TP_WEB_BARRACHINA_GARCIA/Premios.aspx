<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">  
    
    <div class ="main-container">
        <h1>2.Elige el premio por el quieres participar</h1>
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

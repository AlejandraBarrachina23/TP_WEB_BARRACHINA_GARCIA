<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="form-header">
        <h1>PARTICIPA DE LA PROMO</h1>
        <p>Podés participar del nuevo concurso "Mi primer instrumento" desde cualquiera de nuestras sucursales. Ingresa tu voucher, elegí un producto, completa tus datos personales y ya estas participando por fabulosos premios.</p>
    </div>  
     
    <div class ="form-voucher" >  
        <asp:Label ID="lblIngreso" runat="server" Text="01.  Ingresa el código de tu voucher"></asp:Label><br />
        <asp:TextBox ID="tboxVoucher" CssClass="inputIngreso" runat="server" placeholder ="Código Voucher"></asp:TextBox>
        <asp:Button ID="btnAceptar" class="boton"  runat="server" Text="SIGUIENTE" onClickClient="mostrar()" OnClick="btnAceptar_Click"/>
    </div>
</asp:Content>

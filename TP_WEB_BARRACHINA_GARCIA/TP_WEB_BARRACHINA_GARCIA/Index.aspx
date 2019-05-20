<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


 <h1>Index</h1>
    <asp:TextBox ID="tboxVoucher" runat="server"></asp:TextBox>
    <asp:Button ID="btnAceptar" runat="server" Text="Siguiente" OnClick="btnAceptar_Click" />

</asp:Content>

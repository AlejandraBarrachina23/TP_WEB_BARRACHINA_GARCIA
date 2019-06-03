<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mensaje.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        </style>

        <div class="mensaje">
            <asp:Label ID="lblMensajeError" class="texto" runat="server" Text="MensajeError"></asp:Label>
            <asp:Label ID="lblRedireccion" runat="server" Text="SERAS REDICCIONADOR AL INICIO."></asp:Label>
        </div>
</asp:Content>

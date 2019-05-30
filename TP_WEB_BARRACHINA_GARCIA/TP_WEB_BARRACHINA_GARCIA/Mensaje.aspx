<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mensaje.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            
            background-image: url(https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);
            background-attachment: local;
            background-position: center;
            background-size: cover;
            color:white;
            font-family: 'Oswald', sans-serif;
            
        }



        .mensaje {
        
            color:white;
            font-family: 'Anton', sans-serif;
            text-align:center;
            font-size: 30px;
            height:400px;
            margin:0 auto;
            margin-top:180px;
        
        }
       

        </style>

        <div class="mensaje">
            <asp:Label ID="lblMensajeError" class="texto" runat="server" Text="MensajeError"></asp:Label>
            <asp:Label ID="lblRedireccion" runat="server" Text="SERAS REDICCIONADOR AL INICIO."></asp:Label>
        </div>
</asp:Content>

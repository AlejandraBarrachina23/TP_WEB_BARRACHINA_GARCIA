<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP_WEB_BARRACHINA_GARCIA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>

        body {
            
            background-image: url(https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);
            background-attachment: local;
            background-position: center;
            background-size: cover;
            color:white;
            font-family: 'Oswald', sans-serif;
            
        }

        
        h1 {
            
            color:white;
            font-family: 'Anton', sans-serif;
                    
        }

        .boton {

             background-color:#292524;
             font-size:14px;
             color:white;
             width:80px;
             padding:3px;
             height:33px;
             border-style: hidden;
            
        }


        .form-header {
        
         margin:0 auto;
         margin-top:100px;
         width:350px;
         height:150px;
         text-align:center;
                  
            
        }

        .form-voucher {
            
            
            height:300px;
            text-align: center;
      
        }

        .input {
        
            color:black;
            padding:5px;
        }

        
        

    </style>

    <div class="form-header">
        <h1>PARTICIPA DE LA PROMO</h1>
        <p>Podés participar del nuevo concurso "Mi primer instrumento" desde cualquiera de nuestras sucursales, ingresar tu voucher, elegi un producto, completa tus datos personales y ya estas participando por fabulosos premios.</p>
    </div>  
     
    <div class ="form-voucher" >  
        <asp:Label ID="lblIngreso" runat="server" Text="01.  INGRESA EL CÓDIGO DE TU VOUCHER"></asp:Label><br />
        <asp:TextBox ID="tboxVoucher" CssClass="input" runat="server" placeholder ="Código Voucher"></asp:TextBox>
        <asp:Button ID="btnAceptar" class="boton"  runat="server" Text="SIGUIENTE" OnClick="btnAceptar_Click" />
    </div>
</asp:Content>

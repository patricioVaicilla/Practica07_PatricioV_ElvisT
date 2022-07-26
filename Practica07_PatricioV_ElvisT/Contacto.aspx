<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Default.Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        Contactanos
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   
            <!-- Panel para poner el título de la página-->
        <asp:Panel ID="panelTitulo" runat="server"> 
            <!-- Título de la página y su configuración -->
            <asp:Label ID="lblTitulo" runat="server" Text="Pizzeria La Cocante" BorderColor="Window" Font-Underline="true" Font-Italic="true" Font-Overline="true" ForeColor="GreenYellow" style="font-size: larger"></asp:Label>    
        </asp:Panel>
   </div>
        <div>
            <br />
            <br />
            <br />
            <!-- Panel para poner información adicional-->
               <asp:Panel ID="panelInfo" runat="server">
                   <!-- Label con numero de contacto-->
            <asp:Label ID="Labelnumero" runat="server" Text="Teléfono: 0865864687487"  ></asp:Label> 
                     <br />
                   <asp:Label ID="Lbl" runat="server" Text="Propietario: "  ></asp:Label>
                   <!-- Label con informacion del propietario-->
            <asp:Label ID="Labelpropietario" runat="server" Text="Bob Esponja" Font-Italic="true"></asp:Label>
        </asp:Panel>
        </div>
         
     
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        Selección de Orden
    </title>
    <style>
        #content {
        overflow:auto;
        }

        #left, #right {
        width: 45%;
        margin:5px;
        padding: 1em;
        }

        #left { float:left; }
        #right { float:right; }
        #frmDefault {
            text-align: center;
        }
        #max {
            margin-top: 24px;
        }
    </style>

</head>
<body>
    <form id="frmDefault" runat="server">
                <h1 >LA COCANTE</h1>
        
         <div id="content">
            <div id="left">
                   <!-- Panel para tipos de masa-->
                <asp:Panel ID="panelTipoMasa" runat="server" GroupingText="Escoja un tipo de masa:">
                    <asp:RadioButtonList ID="grupoTipos" AutoPostBack="true" OnSelectedIndexChanged="opciones_CheckedChanged" runat="server" style="text-align: justify" Width="250px" >
                        <asp:ListItem Text="Delgada     $5" Value="5"> </asp:ListItem>
                        <asp:ListItem Text="Crispy     $8" Value="8"> </asp:ListItem>
                        <asp:ListItem Text="Gruesa     $10" Value="10"> </asp:ListItem>
                    </asp:RadioButtonList>
                   
                </asp:Panel>
            </div>

            <div id ="right">
                <!-- Panel para tipos de ingredientes-->
                <asp:Panel ID="panelIngredientes" runat="server" GroupingText="Escoja los ingredientes:">
                   <asp:CheckBoxList ID="grupoIngredientes" OnSelectedIndexChanged="opciones_CheckedChanged"  AutoPostBack="true" runat="server" style="text-align: justify" Width="250px">
                        <asp:ListItem Text="Champiñones     $4" Value="4"> </asp:ListItem>
                        <asp:ListItem Text="Peperoni     $5" Value="5"> </asp:ListItem>
                        <asp:ListItem Text="Salchicha     $6" Value="6"> </asp:ListItem>
                       <asp:ListItem Text="Hornado     $3" Value="3"> </asp:ListItem>
                       <asp:ListItem Text="Coco     $2" Value="2"> </asp:ListItem>
                    </asp:CheckBoxList>
                
                </asp:Panel></div></div><div id="max">

            <br />
            <asp:Literal ID="literalSeleccionActual" runat="server" Text=" "></asp:Literal><br/>
            <asp:Label ID="Label1" runat="server" Text="Costo Total: "> </asp:Label><asp:TextBox ID="txtTotal" runat="server" ReadOnly="true"></asp:TextBox><br />
            <br />
            <asp:LinkButton ID="lnkCheckout" runat="server" OnClick="lnkCheckout_Click" Text="Click"></asp:LinkButton>
            <br />
            <asp:LinkButton ID="lnkContactos" runat="server" OnClick="lnkContactos_Click" Text="Más sobre nosotros" ForeColor="Gold"></asp:LinkButton>
                                        </div></form></body></html>
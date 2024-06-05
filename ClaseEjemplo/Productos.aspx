<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ClaseEjemplo.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         .botones{
             display: flex;
             align-items: center;
             text-align: center;
             justify-content: center;
             align-content: center;
             width: 100%;
            margin-bottom: 20px;
         }
         .letter1{
             font-family:Arial;
             font-size: 16px;
             font-weight:500;
         }
        .button1 {
background-color: #28D1D8; /* Green */
border: 1px solid black;
color: white;
padding: 12px 26px;
text-align: center;
text-decoration: none;
font-weight: 600;
display: inline-block;
font-size: 18px;
cursor: pointer;
float: left;
margin-right: 10px;
width: 200px;

}
.button1:hover {
background-color: #28D1D8;
}
.button2 {
background-color: #0099CC; /* Green */
border: 1px solid green;
color: white;
padding: 10px 20px;
text-align: center;
text-decoration: none;
font-weight: 600;
display: inline-block;
font-size: 14px;
cursor: pointer;
float: left;
border-style:hidden
}
.button2:hover {
background-color: #28D1D8;
}
        .auto-style3 {
            width: 253px;
        }
        .auto-style4 {
            width: 253px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 254px;
            height: 23px;
        }
        .auto-style7 {
            width: 254px;
        }
        .auto-style8 {
            height: 23px;
            width: 167px;
        }
        .auto-style9 {
            width: 167px;
        }
        .auto-style10 {
            width: 295px;
        }
        .auto-style11 {
            width: 263px;
        }
        .auto-style12 {
            width: 295px;
            height: 33px;
        }
        .auto-style13 {
            width: 263px;
            height: 33px;
        }
        .auto-style14 {
            height: 33px;
        }
         .auto-style15 {
             height: 23px;
             width: 100%;
         }
    </style>
    <p style="font-family: Arial; font-size: 24px; font-weight:600;">Productos</p>

    <div class="botones">
    <asp:Button ID="Button10" runat="server" CssClass="button1" OnClick="Button10_Click" Text="Alta" />
    <asp:Button ID="Button11" runat="server" CssClass="button1" OnClick="Button11_Click" Text="Edicion" />
    <asp:Button ID="Button12" runat="server" CssClass="button1" Text="Consultas" OnClick="Button12_Click" />
     </div>
    <table runat="server" id="altas" class="auto-style15">
        <tr>
            <td colspan="2" style="font-family: Arial; font-size: 20px; font-weight:600;">Registro de nuevo producto</td>
        </tr>
        <tr>
            <td class="auto-style4 letter1">Nombre</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3 letter1">Precio</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3 letter1">Cantidad en el stock</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" Text="Guardar" class="button2" OnClick="Button9_Click" />
            </td>
        </tr>
    </table>
    <table style="width:100%;" runat="server" id="edicion" class="auto-style5">
        <tr>
            <td colspan="3" style="font-family:Arial; font-size: 20px; font-weight:600">Edicion</td>
        </tr>
        <tr>
            <td class="auto-style6 letter1">Id</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button14" runat="server" Text="Consultar" class="button2" OnClick="Button14_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7 letter1">Nombre</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7 letter1">Precio</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7 letter1">Cantidad</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Button13" runat="server" Text="Modificar" class="button2" OnClick="Button13_Click" />
            </td>
            <td>
                <asp:Button ID="Button15" runat="server" Text="Eliminar" class="button2" OnClick="Button15_Click" />
            </td>
        </tr>
    </table>
    <table style="width:100%;" runat="server" class="auto-style5" id="consultar" >
        <tr>
            <td class="auto-style10 letter1">Por id</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button16" runat="server" Text="Consultar" class="button2" OnClick="Button16_Click" />
            </td>
            </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            </tr>
        <tr>
            <td class="auto-style10 letter1" >Reporte general</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="Button17" runat="server" Text="Generar" class="button2" OnClick="Button17_Click" />
            </td>
            </tr>
    </table>
&nbsp;<asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
</asp:Content>


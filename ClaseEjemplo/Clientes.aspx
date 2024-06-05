<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ClaseEjemplo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666"
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal"
        AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting" ShowFooter="True"
        OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand"
        OnRowEditing="GridView1_RowEditing">
        <columns>
            <asp:TemplateField HeaderText="Id">
                <itemtemplate>
                    <asp:Label Text='<%# Eval("idc") %>' runat="server"></asp:Label>
                </itemtemplate>
                <edititemtemplate>
                    <asp:TextBox ID="txtid" Text='<%#Eval("idc") %>'
                        runat="server">
                    </asp:TextBox>
                </edititemtemplate>
                <footertemplate>
                    <asp:TextBox runat="server" ID="txtidf" />
                </footertemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre">
                <itemtemplate>
                    <asp:Label Text='<%# Eval("nombre") %>' runat="server"></asp:Label>
                </itemtemplate>
                <edititemtemplate>
                    <asp:TextBox ID="txtnombre" Text='<%#Eval("nombre") %>'
                        runat="server">
                    </asp:TextBox>
                </edititemtemplate>
                <footertemplate>

                    <asp:TextBox ID="txtfn" runat="server" />
                </footertemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Correo">
                <itemtemplate>
                    <asp:Label Text='<%# Eval("correo") %>' runat="server"></asp:Label>
                </itemtemplate>
                <edititemtemplate>
                    <asp:TextBox ID="txtel" Text='<%#Eval("correo") %>'
                        runat="server">
                    </asp:TextBox>
                </edititemtemplate>
                <footertemplate>
                    <asp:TextBox ID="txtftel" runat="server" />
                </footertemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <itemtemplate>
                    <asp:ImageButton ImageUrl="~/images/modificar.png" runat="server"
                        CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                </itemtemplate>
                <edititemtemplate>
                    <asp:ImageButton ImageUrl="~/images/em.png" CommandName="Delete"
                        ToolTip="Delete" Width="20px" Height="20px" runat="server" />
                    <asp:ImageButton ImageUrl="~/images/actualizar.png" runat="server"
                        CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/images/close.png" runat="server"
                        CommandName="cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                </edititemtemplate>
                <footertemplate>
                    <asp:ImageButton ImageUrl="~/images/add.png" runat="server"
                        CommandName="Save" ToolTip="Save" Width="20px" Height="20px" />
                </footertemplate>
            </asp:TemplateField>
        </columns>
        <footerstyle backcolor="White" forecolor="#2DA496" />
        <headerstyle backcolor="#2DA496" font-bold="True" forecolor="White" />
        <pagerstyle backcolor="#336666" forecolor="White" horizontalalign="Center" />
        <rowstyle backcolor="White" bordercolor="White" borderstyle="None"
            borderwidth="0px" forecolor="#333333" />
        <selectedrowstyle backcolor="#339966" font-bold="True" forecolor="White" />
    </asp:GridView>
    <asp:Label ID="MensajeS" Text="" runat="server" ForeColor="Green" />
    <br />
    <asp:Label ID="MensajeM" Text="" runat="server"
        ForeColor="Red" />

</asp:Content>

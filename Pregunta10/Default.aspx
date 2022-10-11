<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style ="font-size: x-large" align:"center"> Administracion de Info de Persona 
            <table class="nav-justified">
                <tr>
                    <td style="width: 79px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 79px; height: 34px"></td>
                    <td class="modal-sm" style="width: 247px; height: 34px">Nombre</td>
                    <td style="height: 34px">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">CI</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px; height: 34px"></td>
                    <td class="modal-sm" style="width: 247px; height: 34px">Fecha Nac</td>
                    <td style="height: 34px">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">Departamento</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 79px">&nbsp;</td>
                    <td class="modal-sm" style="width: 247px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="Fuchsia" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" style="height: 28px" Text="Insertar" />
                        <asp:Button ID="Button2" runat="server" BackColor="Fuchsia" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" />
                        <asp:Button ID="Button3" runat="server" BackColor="Fuchsia" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Eliminar" />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" Width="715px">
        </asp:GridView>
        <br />
    </div>
</asp:Content>

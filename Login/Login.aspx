<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Đăng nhập</h1>
                <hr />
                <table>
                <tr>
                    <td>Tài khoản </td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mật khẩu </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td >
                        <asp:Button ID="LoginButton" runat="server" Text="Đăng nhập" OnClick="LoginButton_Click" /></td>
                    <td>
                        <asp:Literal ID="LitMsg" runat="server"></asp:Literal></td>
                </tr>
                </table>
            </center>
            
        </div>
    </form>
</body>
</html>

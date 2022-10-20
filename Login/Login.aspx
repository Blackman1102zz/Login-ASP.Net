<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="main">
            <div class ="col-right">
                <center>
                <h1>Đăng nhập</h1>
                <hr />
                    <img src ="/images/photo1.png" asp-append-version="true" style="float:left"/>
                <table>

                <tr>
                    <td>Tài khoản </td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mật khẩu </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox ></td>
                    <td />
                    <td>
                    <asp:CheckBox ID="ckShowPass" runat="server" Text="Show password" onclick="myshowp(this)" /></td>
                    <script>
                         function myshowp() {
                             ckbox = $('#ckShowPass')
                             txtBox = $('#TxtPassword')

                             if (ckbox.is(':checked')) {
                                 txtBox.attr("Type", "Text");
                             }
                             else {
                                 txtBox.attr("Type", "Password");
                             }
                         }
                     </script>
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
        </div>
    </form>
</body>

</html>

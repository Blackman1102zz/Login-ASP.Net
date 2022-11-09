<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Login.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="AddInfo" runat="server" Text="Thêm"/>
            <center>
                <asp:GridView ID="GridView1" runat="server" ></asp:GridView>
            </center>
            <table align="left">
                <tr>
                    <td>Account *:</td>
                    <td>
                        <asp:TextBox ID="txtAcc" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password *:</td>
                    <td><asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mô tả</td>
                    <td><asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Thêm" OnClick="btnInsert_Click" /></td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Xóa" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Cập nhật" OnClick="btnUpdate_Click" /></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

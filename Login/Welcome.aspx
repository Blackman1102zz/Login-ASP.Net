<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Login.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Chào mừng <asp:Label ID="Labusrname" runat="server"></asp:Label></h1><br />
            <asp:LinkButton ID="ButInfo" runat="server" OnClick="ButInfo_Click">Danh sách</asp:LinkButton><br />
            <asp:LinkButton ID="ButLogout" runat="server" OnClick="ButLogout_Click">Thoát</asp:LinkButton><br />
        </div>
    </form>
</body>
</html>

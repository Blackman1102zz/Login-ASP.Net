<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Login.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    /* Popup container */
.popup {
  position: relative;
  display: none;
  cursor: pointer;
}

/* The actual popup (appears on top) */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class when clicking on the popup container (hide and show the popup) */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
</style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button type="button" onclick="OpenPopupAdd()">Thêm</button>
                <div class="popup" id="divAdd">
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
                        <asp:Button ID="btnInsert" runat="server" Text="Thêm" OnClick="btnInsert_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Xóa" OnClick="btnDelete_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Cập nhật" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
                </table>
            </div>
            <center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                    <%-- BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />--%>

                    <Columns>
                        <asp:TemplateField HeaderText="Account">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTaikhoan" Text='<%# Eval("Taikhoan") %>' runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Taikhoan") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mô tả">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescription" Text='<%# Eval("Description") %>' runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Số điện thoại">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDienthoai" Text='<%# Eval("Phone") %>' runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Người tạo">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCreatedPerson" Text='<%# Eval("CreatedPerson") %>' runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("CreatedPerson") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green"/>
                <br />
                <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red"/>

            </center>
            
<script language="javascript" type="text/javascript">
    function OpenPopupAdd() {
        document.getElementById("divAdd").style.display = "table";
    }
</script>
        </div>
    </form>
</body>
</html>

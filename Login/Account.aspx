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
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Taikhoan") %>' runat="server" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTaikhoan" Text='<%# Eval("Taikhoan") %>' runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mô tả">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Description") %>' runat="server" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescription" Text='<%# Eval("Description") %>' runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Số điện thoại">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Phone") %>' runat="server" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDienthoai" Text='<%# Eval("Phone") %>' runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Người tạo">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("CreatedPerson") %>' runat="server" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCreatedPerson" Text='<%# Eval("CreatedPerson") %>' runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ImageURL="~/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                                <asp:ImageButton ImageURL="~/images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:ImageButton ImageURL="~/images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                                <asp:ImageButton ImageURL="~/images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                            </EditItemTemplate>

                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green"/>
                <br />
                <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red"/>

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

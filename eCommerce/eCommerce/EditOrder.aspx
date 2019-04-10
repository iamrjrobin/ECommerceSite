﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="eCommerce.EditOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                        <asp:BoundField DataField="CustomerUserName" HeaderText="CustomerUserName" SortExpression="CustomerUserName" />
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                        <asp:TemplateField HeaderText="OrderStatus" SortExpression="OrderStatus">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True">Pending</asp:ListItem>
                                    <asp:ListItem>Done</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-8U59PQN;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [OrderTable]" DeleteCommand="DELETE FROM [OrderTable] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [OrderTable] ([CustomerUserName], [ProductID], [OrderStatus]) VALUES (@CustomerUserName, @ProductID, @OrderStatus)" UpdateCommand="UPDATE [OrderTable] SET [CustomerUserName] = @CustomerUserName, [ProductID] = @ProductID, [OrderStatus] = @OrderStatus WHERE [OrderID] = @OrderID">
                    <DeleteParameters>
                        <asp:Parameter Name="OrderID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerUserName" Type="String" />
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="OrderStatus" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerUserName" Type="String" />
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="OrderStatus" Type="String" />
                        <asp:Parameter Name="OrderID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />

            </center>
        </div>
    </form>
</body>
</html>

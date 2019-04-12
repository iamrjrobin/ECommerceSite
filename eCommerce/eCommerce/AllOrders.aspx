<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllOrders.aspx.cs" Inherits="eCommerce.AllOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:GridView ID="orderView" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID,CustomerUserName,ProductID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="orderView_RowCancelingEdit" OnRowEditing="orderView_RowEditing" OnRowUpdating="orderView_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="CustomerUserName" HeaderText="CustomerUserName" ReadOnly="True" SortExpression="CustomerUserName" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="ProductCat" HeaderText="ProductCat" SortExpression="ProductCat" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                    <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" SortExpression="CustomerAddress" />
                    <asp:BoundField DataField="CustomerPhone" HeaderText="CustomerPhone" SortExpression="CustomerPhone" />
                    <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7FMHL75;Initial Catalog=ECommerce;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT OrderTable.OrderID, CustomerTable.CustomerUserName, ProductTable.ProductID,ProductTable.ProductName,ProductTable.ProductCat, ProductTable.ProductPrice, CustomerTable.CustomerAddress, CustomerTable.CustomerPhone, OrderTable.OrderStatus
                           FROM ((OrderTable
                           INNER JOIN CustomerTable ON OrderTable.CustomerUserName =CustomerTable.CustomerUserName)
                           INNER JOIN ProductTable ON OrderTable.ProductID=ProductTable.ProductID);"></asp:SqlDataSource>
                <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
                <asp:Button ID="btnSeeAllProducts" runat="server" OnClick="btnSeeAllProducts_Click" Text="See All Products" />
            </center>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

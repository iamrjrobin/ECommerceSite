<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllProducts.aspx.cs" Inherits="eCommerce.AllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            &nbsp;&nbsp;&nbsp;

            <asp:GridView ID="allProductTable" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="allProductTable_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="allProductTable_RowCancelingEdit" OnRowDeleting="allProductTable_RowDeleting" OnRowEditing="allProductTable_RowEditing" OnRowUpdating="allProductTable_RowUpdating">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ID" />


                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="70px" Width="150px"
                                ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ProductPhoto")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:BoundField DataField="ProductName" HeaderText="Name" />
                    <asp:BoundField DataField="ProductCat" HeaderText="Category" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Price" />

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

                <asp:Button ID="btnSeeAllOrders" runat="server" OnClick="btnSeeAllOrders_Click" Text="See All Orders" />

            <asp:Button ID="btnEditMode" runat="server" OnClick="btnEditMode_Click" Text="Editing Mode" />
&nbsp;<asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
&nbsp;<asp:Button ID="btnAddNewProduct" runat="server" OnClick="btnAddNewProduct_Click" Text="Add New Product" />
            <asp:GridView ID="modView" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="ProductCat" HeaderText="ProductCat" SortExpression="ProductCat" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-7FMHL75;Initial Catalog=ECommerce;Integrated Security=True" DeleteCommand="DELETE FROM [ProductTable] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [ProductTable] ([ProductName], [ProductCat], [ProductPrice]) VALUES (@ProductName, @ProductCat, @ProductPrice)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ProductID], [ProductName], [ProductCat], [ProductPrice] FROM [ProductTable]" UpdateCommand="UPDATE [ProductTable] SET [ProductName] = @ProductName, [ProductCat] = @ProductCat, [ProductPrice] = @ProductPrice WHERE [ProductID] = @ProductID">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductCat" Type="String" />
                    <asp:Parameter Name="ProductPrice" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="ProductCat" Type="String" />
                    <asp:Parameter Name="ProductPrice" Type="Int32" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </center>
        </div>
    </form>
</body>
</html>

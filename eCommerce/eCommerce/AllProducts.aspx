<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllProducts.aspx.cs" Inherits="eCommerce.AllProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
                   <asp:GridView ID="allProductTable" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="allProductTable_SelectedIndexChanged">
            <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ID" />
            
                
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="300px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ProductPhoto")) %>' />
            </ItemTemplate>
             </asp:TemplateField>

            
            <asp:BoundField DataField="ProductName" HeaderText="Name" />
            <asp:BoundField DataField="ProductCat" HeaderText="Category" />
            <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
            
            </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>

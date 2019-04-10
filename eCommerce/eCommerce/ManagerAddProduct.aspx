<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerAddProduct.aspx.cs" Inherits="eCommerce.ManagerAddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 440px">
            <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBoxProductName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblProductCategory" runat="server" Text="Product Category"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtBoxProductCategory" runat="server" Width="120px"></asp:TextBox>
            <br />
            <asp:Label ID="lblProductPrice" runat="server" Text="Product Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txtBoxProductPrice" type="text"  runat="server" onkeydown="return (!(event.keyCode>=65 && event.keyCode<=90 ) && event.keyCode!=32);" OnTextChanged="txtBoxProductPrice_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="lblPhoto" runat="server" Text="Photo"></asp:Label>
            <br />
            <asp:FileUpload ID="photoUpload1" runat="server" Width="247px" />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnProductAdd" runat="server" OnClick="btnProductAdd_Click" Text="Add Product" />
            <br />
            <asp:Button ID="btnViewAllProducts" runat="server" OnClick="btnViewAllProducts_Click" Text="See All Products" />
        </div>
    </form>
</body>
</html>

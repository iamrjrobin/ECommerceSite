<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product_view.aspx.cs" Inherits="ecommerce.Product_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="product_view_main">
        <div class="left">
           <h2 class="pTitle">Intel core i3</h2>
           <p class="pDescription">Lorem ipsum dolar sit.Lorem ipsum dolar sit.Lorem ipsum dolar sit.Lorem ipsum dolar sit.Lorem ipsum dolar sit.Lorem ipsum dolar sit.</p>
           <p class="price" >160$</p>


            <asp:Button Text="Order" runat="server" />
        </div>
        <img class="right" src="images/Capture2.PNG" alt="Alternate Text" />

        <div class="clear-float"></div>

    </div>



</asp:Content>

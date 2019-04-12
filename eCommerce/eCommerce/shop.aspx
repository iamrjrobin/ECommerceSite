<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="ecommerce.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
  <div  class="catagory">
       <div id="div1" runat="server">
       <!--
       <h1 id="cat1" class="cName">Lorem</h1>
       <div class="product">
           <img class="pImage" src="images/Capture.PNG" alt="Alternate Text"/>
           <h2 class="pTitle">Intel core i3</h2>
           <p class="pDescription">Lorem ipsum dolar sit.</p>
           <p class="price" >160$</p>
           <div class="btn-group">
            <asp:Button Class="buyBtn" Text="Buy" runat="server" />
            <asp:Button Class="buyBtn" Text="Details" runat="server" />
           <a class="buyBtn" href="~/Product_view.aspx?Pid=">Details</a>
           </div>
       </div>
       <div class="product">
           <img class="pImage" src="images/Capture.PNG" alt="Alternate Text"/>
           <h2 class="pTitle">Intel core i3</h2>
           <p class="pDescription">Lorem ipsum dolar sit.</p>
           <p class="price" >160$</p>
            <div class="btn-group">
            <asp:Button Class="buyBtn" Text="Buy" runat="server" />
            <asp:Button Class="buyBtn" Text="Details" runat="server" />
           </div>
       </div>
       <div class="product">
           <img class="pImage" src="images/Capture.PNG" alt="Alternate Text"/>
           <h2 class="pTitle">Intel core i3</h2>
           <p class="pDescription">Lorem ipsum dolar sit.</p>
           <p class="price" >160$</p>
            <div class="btn-group">
            <asp:Button Class="buyBtn" Text="Buy" runat="server" />
            <asp:Button Class="buyBtn" Text="Details" runat="server" />
           </div>
       </div>
       <div class="product">
           <img class="pImage" src="images/Capture.PNG" alt="Alternate Text"/>
           <h2 class="pTitle">Intel core i3</h2>
           <p class="pDescription">Lorem ipsum dolar sit.</p>
           <p class="price" >160$</p>
           <div class="btn-group">
            <asp:Button Class="buyBtn" Text="Buy" runat="server" />
            <asp:Button Class="buyBtn" Text="Details" runat="server" />
           </div>
       </div>
           -->
       </div>
       <a runat="server" Class="moreBtn" href="~/Catagory.aspx?cat=Processor">See more >>></a>
       <div class="line"></div>
 </div>
 <div  class="catagory">
       <div id="div2" runat="server">
       <!--
                Dynamic Elements
           -->
       </div>
       <a runat="server" Class="moreBtn" href="~/Catagory.aspx?cat=Graphics card">See more >>></a>
       <div class="line"></div>
 </div>
 <div  class="catagory">
       <div id="div3" runat="server">
       <!--
                Dynamic Elements
           -->
       </div>
       <a runat="server" Class="moreBtn" href="~/Catagory.aspx?cat=Motherboard">See more >>></a>
       <div class="line"></div>
 </div>
 <div  class="catagory">
       <div id="div4" runat="server">
       <!--
                Dynamic Elements
           -->
       </div>
       <a runat="server" Class="moreBtn" href="~/Catagory.aspx?cat=Ram">See more >>></a>
       <div class="line"></div>
 </div>
 <div  class="catagory">
       <div id="div5" runat="server">
       <!--
                Dynamic Elements
           -->
       </div>
       <a runat="server" Class="moreBtn" href="~/Catagory.aspx?cat=Storage">See more >>></a>
       <div class="line"></div>
 </div>

 
  
</asp:Content>

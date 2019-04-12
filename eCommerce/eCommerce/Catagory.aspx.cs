using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace ecommerce
{
    public partial class Catagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cat = Request.QueryString["cat"];
            string query = $"Select * from ProductTable where ProductCat = '{cat}' ";
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);


            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {

                div1.InnerHtml = $"<h1  class=\"cName\">{cat}</h1>";
                int productCounter = 0;
                while (rdr.Read() && productCounter < 4)
                {
                    string id = rdr["ProductID"].ToString();
                    string name = rdr["ProductName"].ToString(); ;
                    string price = rdr["ProductPrice"].ToString(); ;
                    string photo = rdr["productPhoto"].ToString(); ;

                    byte[] bytes = (byte[])rdr["productPhoto"];
                    string strBase64 = Convert.ToBase64String(bytes);
                    string imageUrl = "data:Image/png;base64," + strBase64;
                    //image1.Attributes.Add("src", "data:Image/png;base64,"+strBase64);

                    div1.InnerHtml += $"<div class=\"product\"><img height=\"200px\" width=\"150px\" runat=\"server\" src=\"{imageUrl}\" alt=\"Alternate Text\"/> <h2 class=\"pTitle\">{name}</h2><p class=\"pDescription\">Lorem ipsum dolar sit.</p><p class=\"price\" >{price}$</p><div class=\"btn-group\"><asp:Button Class=\"buyBtn\" Text=\"Buy\" runat=\"server\">Buy</asp:Button><asp:Button Class = \"buyBtn\" Text=\"Details\" runat=\"server\">Details</asp:Button></div></div>";
                    productCounter++;

                }
            }


        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace ecommerce
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] catagories = {"Processor", "Graphics card", "Motherboard", "Ram", "Storage" };


            /*
                        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

                        SqlConnection con = new SqlConnection(connectionString);

                        string sqlQuery = "Select * from ProductTable";
                        SqlCommand cmd = new SqlCommand(sqlQuery, con);

                        con.Open();
                        while (rdr.Read())
                        {
                            string column = rdr["ProductCat"].ToString();
                            cat1.InnerHtml = column;
                            System.Diagnostics.Debug.WriteLine(rdr);
                        }
              */

            int divCounter = 0;

            foreach(string cat in catagories)
            {
                string query = $"Select * from ProductTable where ProductCat = '{cat}' ";
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);

          
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                string divId = "div" + divCounter;
                HtmlGenericControl[] idArray = { div1, div2, div3, div4, div5 }; 
                
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {

                idArray[divCounter].InnerHtml = $"<h1  class=\"cName\">{cat}</h1>";
                int productCounter = 0; 
                    while (rdr.Read() && productCounter<4)
                    {
                        string id = rdr["ProductID"].ToString();
                        string name = rdr["ProductName"].ToString(); ;
                        string price = rdr["ProductPrice"].ToString(); ;
                        string photo = rdr["productPhoto"].ToString(); ;

                        byte[] bytes = (byte[])rdr["productPhoto"];
                        string strBase64 = Convert.ToBase64String(bytes);
                        string imageUrl = "data:Image/png;base64," + strBase64;
                        //image1.Attributes.Add("src", "data:Image/png;base64,"+strBase64);

                        idArray[divCounter].InnerHtml += $"<div class=\"product\"><img height=\"200px\" width=\"200px\" runat=\"server\" src=\"{imageUrl}\" alt=\"Alternate Text\"/> <h2 class=\"pTitle\">{name}</h2><p class=\"pDescription\">Lorem ipsum dolar sit.</p><p class=\"price\" >{price}$</p><a class=\"buyBtn\" href=\"Product_view.aspx?pid={id}\">Details</a></div>";
                        productCounter++;

                }
                }

                divCounter++;
            }




        }
    }
}
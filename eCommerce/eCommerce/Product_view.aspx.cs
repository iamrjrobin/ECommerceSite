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
    public partial class Product_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = Request.QueryString["pid"];
            string query = $"select * from ProductTable where ProductID='{pid}'";

            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    string id = rdr["ProductID"].ToString();
                    string name = rdr["ProductName"].ToString(); ;
                    string price = rdr["ProductPrice"].ToString(); ;

                    byte[] bytes = (byte[])rdr["productPhoto"];
                    string strBase64 = Convert.ToBase64String(bytes);
                    string imageUrl = "data:Image/png;base64," + strBase64;

                    elname.InnerHtml = name;
                    elprice.InnerHtml = price;
                    elimage.Src = imageUrl;
                }

            }
        }

        protected void orderBtn_Click(object sender, EventArgs e)
        {
            string pid = Request.QueryString["pid"];
            Response.Redirect("~/order.aspx?pid="+pid);
        }
    }
}
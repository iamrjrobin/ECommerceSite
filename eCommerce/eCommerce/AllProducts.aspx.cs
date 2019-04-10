using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace eCommerce
{
    public partial class AllProducts : System.Web.UI.Page
    {
        string query = "Select * from ProductTable";
        protected void Page_Load(object sender, EventArgs e)
        {
            productdis();
        }
        protected void productdis()
        {
           // DataOps dOps = new DataOps();
           // allProductTable.DataSource= dOps.GetData(query);
           // allProductTable.DataBind();
            string test = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(test);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dReader = cmd.ExecuteReader();
            allProductTable.DataSource = dReader;
            allProductTable.DataBind();
        }

        protected void allProductTable_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
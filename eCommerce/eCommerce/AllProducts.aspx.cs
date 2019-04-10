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
        string test = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        string query = "Select * from ProductTable";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                productdis();
            }
            
        }
        protected void productdis()
        {
           // DataOps dOps = new DataOps();
           // allProductTable.DataSource= dOps.GetData(query);
           // allProductTable.DataBind();
            
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

        protected void allProductTable_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void allProductTable_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void allProductTable_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void allProductTable_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        private void DeleteProduct(int ProductID)
        {
            using (SqlConnection con = new SqlConnection(test))
            {
                string query = "delete  from ProductTable where ProductID ='"+ProductID+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        
    }
}
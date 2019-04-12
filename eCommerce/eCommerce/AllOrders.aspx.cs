using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace eCommerce
{
    public partial class AllOrders : System.Web.UI.Page
    {
        string test = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void orderView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void orderView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
        }

        protected void orderView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditOrder.aspx");
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSeeAllProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllProducts.aspx");
        }
    }
}
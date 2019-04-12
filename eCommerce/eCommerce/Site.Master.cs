using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eCommerce
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cid"] == null)
            {
                login_link.InnerHtml = "<a href=\"#\">Sign in</a>";
            }
            else
            {
                login_link.InnerHtml = Session["Cname"].ToString();
            }
        }
    }
}
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

namespace eCommerce
{
    public partial class ManagerAddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblMessage.Visible = false;
            }
        }

        protected void txtBoxProductPrice_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile=photoUpload1.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int length = photoUpload1.PostedFile.ContentLength; ;
            if(fileExtension.ToLower()==".jpg"|| fileExtension.ToLower() == ".bpm"|| fileExtension.ToLower() == ".png" )
            {
                // Stream strm = postedFile.InputStream;
                // BinaryReader bReader = new BinaryReader(strm);
               // byte[] picture = new byte(length);
                    
                 DataOps dOps = new DataOps();
                //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                // SqlConnection conn = new SqlConnection(connectionString);

                // SqlCommand cmd = new SqlCommand("addProduct", conn);
                // cmd.CommandType = CommandType.StoredProcedure;
                string query = @"INSERT INTO [dbo].[ProductTable]
                          ([ProductName]
                          ,[ProductCat]
                          ,[ProductPrice]
                          ,[ProductPhoto])
                    VALUES('"+txtBoxProductName.Text+ "','" + txtBoxProductCategory.Text + "','" + txtBoxProductPrice.Text + "','" + photoUpload1.FileName+ "')";


                dOps.ManagerAddProduct(query);
                
                lblMessage.Visible = true;
                lblMessage.Text = "Added!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Only png, jpg and bmp files are allowed to be uploaded";
                lblMessage.ForeColor = System.Drawing.Color.Red; 
            }
        }
    }
}
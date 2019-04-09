using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace eCommerce
{
    public class DataOps
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        //string query = null;
        public DataTable GetData(string query) //reads/takes/shows data
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlDataAdapter da = new SqlDataAdapter(query, conn);        //takes data and closes DB
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        
        public void ManagerAddProduct(string query)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(query,conn);
            cmd.ExecuteNonQuery();
           // string r = cmd.ExecuteScalar().ToString();
        }

    }
}
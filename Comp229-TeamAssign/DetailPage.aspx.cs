using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Comp229_TeamAssign
{
    public partial class DetailPage : System.Web.UI.Page
    {
        /// <summary>
        /// Page Load function
        /// </summary>
        /// <param name="sender"> sender object </param>
        /// <param name="e"> e argument </param>
        protected void Page_Load(object sender, EventArgs e)
        {
            int shoesID = Convert.ToInt32(Request.QueryString["ShoesID"]);

            String query = "SELECT * FROM Shoes WHERE ShoesID = @shoesID";

           
            String connectionString = ConfigurationManager.ConnectionStrings["Comp229TeamAssign"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand(query, conn);

            comm.Parameters.Add("@shoesID", System.Data.SqlDbType.Int);
            comm.Parameters["@shoesID"].Value = shoesID;
            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();
            // if (reader.Read())
            {
                shoeDetails.DataSource = reader;
                shoeDetails.DataBind();

            }
            reader.Close();
            conn.Close();
        }
    }
}
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

            int shoeID = Convert.ToInt32(Request.QueryString["ShoeID"]);

            //Select all the shoes that contain the ID
            String query = "SELECT * FROM Shoes WHERE ShoeID = @shoeID";

           
            String connectionString = ConfigurationManager.ConnectionStrings["Comp229TeamAssign"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand(query, conn);

            comm.Parameters.Add("@ShoeID", System.Data.SqlDbType.Int);
            comm.Parameters["@ShoeID"].Value = shoeID;
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
        /// <summary>
        /// Rent button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void RentBtn_Click(object sender, EventArgs e)
        {
            int shoeID = Convert.ToInt32(Request.QueryString["ShoeID"]);
            int quality = 1;
            int price = 50;

            String query = "INSERT INTO Rental (CustomerID, ShoeID, Quality, Price)" +
                " VALUES (101, @shoeID, @quality, @price)";

            String connectionString = ConfigurationManager.ConnectionStrings["Comp229TeamAssign"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand(query, conn);

            comm.Parameters.Add("@ShoeID", System.Data.SqlDbType.Int);
            comm.Parameters["@ShoeID"].Value = shoeID;
            comm.Parameters.Add("@Quality", System.Data.SqlDbType.Int);
            comm.Parameters["@Quality"].Value = quality;
            comm.Parameters.Add("@Price", System.Data.SqlDbType.Int);
            comm.Parameters["@Price"].Value = price;

            try
            {
                conn.Open(); //comm.
                comm.ExecuteNonQuery();
            }
            finally
            {

                conn.Close();
            }
            Response.Redirect("Default.aspx");
        }
    }
}
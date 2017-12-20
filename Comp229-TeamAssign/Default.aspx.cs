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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "SELECT * FROM Shoes";

            String connectionString = ConfigurationManager.ConnectionStrings["Comp229TeamAssign"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand(query, conn);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            //if (reader.Read())
            {
                ItemGrid.DataSource = reader;
                ItemGrid.DataBind();
                reader.Close();
            }
            conn.Close();
        }
    }
}
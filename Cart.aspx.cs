using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Chapter33
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
                CalculateTotal();
            }
        }

        private void LoadCartItems()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT CartID, ItemName, Price, ImagePath, Description FROM Cart"; // Adjust column names here
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                rptCartItems.DataSource = reader;
                rptCartItems.DataBind();
                reader.Close();
            }
        }

        protected void DeleteCartItem_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            int cartID = Convert.ToInt32(btnDelete.CommandArgument);

            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Cart WHERE CartID = @CartID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CartID", cartID);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            LoadCartItems();
            CalculateTotal();
        }

        private void CalculateTotal()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT SUM(Price) AS TotalPrice FROM Cart";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                object result = cmd.ExecuteScalar();
                if (result != null && result != DBNull.Value)
                {
                    decimal totalPrice = Convert.ToDecimal(result);
                    lblTotal.Text = totalPrice.ToString("0.00");
                }
            }
        }
    }
}

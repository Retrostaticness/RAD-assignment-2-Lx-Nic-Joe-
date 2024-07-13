using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Chapter33
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize form fields or perform initializations if needed
            }
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            // Logic to process the order, update database, etc.
            PlaceOrder();
        }

        private void PlaceOrder()
        {
            string name = txtName.Text;
            string tableNumber = txtTableNumber.Text;
            string cardNumber = txtCardNumber.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Orders (Name, TableNumber, CardNumber) VALUES (@Name, @TableNumber, @CardNumber)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@TableNumber", tableNumber);
                cmd.Parameters.AddWithValue("@CardNumber", cardNumber);
                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Order confirmed. Thank you!'); window.location ='Menu.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Order failed. Please try again.');", true);
                }
            }
        }
    }
}

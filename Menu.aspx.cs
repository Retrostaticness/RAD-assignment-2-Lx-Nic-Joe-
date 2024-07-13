using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace Chapter33
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFoodItems();
                LoadDrinkItems();
            }
        }

        private void LoadFoodItems()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Price, ImagePath, Description FROM FoodItems";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                rptFoodItems.DataSource = reader;
                rptFoodItems.DataBind();
                reader.Close();
            }
        }

        private void LoadDrinkItems()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, Price, ImagePath, Description FROM DrinkItems";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                rptDrinkItems.DataSource = reader;
                rptDrinkItems.DataBind();
                reader.Close();
            }
        }

        protected void AddToCart_Click(object sender, CommandEventArgs e)
        {
            string[] arguments = e.CommandArgument.ToString().Split(',');
            string itemName = arguments[0];
            decimal itemPrice = Convert.ToDecimal(arguments[1]);
            string itemDescription = arguments[2];
            string itemImagePath = arguments[3];

            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Cart (ItemName, Price, Description, ImagePath) VALUES (@ItemName, @Price, @Description, @ImagePath)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ItemName", itemName);
                cmd.Parameters.AddWithValue("@Price", itemPrice);
                cmd.Parameters.AddWithValue("@Description", itemDescription);
                cmd.Parameters.AddWithValue("@ImagePath", itemImagePath);
                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    // Display success message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Item added to cart successfully.');", true);
                }
                else
                {
                    // Display failure message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to add item to cart.');", true);
                }
            }
        }

        protected void btnCustomOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomOrder.aspx");
        }
    }
}

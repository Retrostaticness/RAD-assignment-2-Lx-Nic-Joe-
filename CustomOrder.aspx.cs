using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Chapter33
{
    public partial class CustomOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddCustomOrder_Click(object sender, EventArgs e)
        {
            string coffeeType = coffeeTypeDropDown.SelectedValue;
            string milkType = milkTypeDropDown.SelectedValue;
            string sweetener = sweetenerDropDown.SelectedValue;
            string toastieFilling = toastieFillingDropDown.SelectedValue;

            string itemName = $"Custom Coffee ({coffeeType}, {milkType}, {sweetener}) & Toastie ({toastieFilling})";
            decimal itemPrice = 30.00m;

            string connectionString = ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Cart (ItemName, Price, ImagePath, Description) VALUES (@ItemName, @Price, @ImagePath, @Description)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ItemName", itemName);
                cmd.Parameters.AddWithValue("@Price", itemPrice);
                cmd.Parameters.AddWithValue("@ImagePath", "images/custom_order.jpg");
                cmd.Parameters.AddWithValue("@Description", $"Coffee: {coffeeType}, Milk: {milkType}, Sweetener: {sweetener}, Toastie: {toastieFilling}");
                con.Open();
                cmd.ExecuteNonQuery();
            }

            lblCustomOrderMessage.Visible = true;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "HideLabel", "setTimeout(function() { document.getElementById('" + lblCustomOrderMessage.ClientID + "').style.display = 'none'; }, 1000);", true);
        }
    }
}

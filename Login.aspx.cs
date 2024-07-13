using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Chapter33
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Chapter33ConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                int count = (int)command.ExecuteScalar();
                connection.Close();

                if (count == 1)
                {
                    // Login successful, redirect to menu page or user dashboard
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    // Handle login failure
                    lblMessage.Text = "Invalid username or password!";
                }
            }
        }
    }
}

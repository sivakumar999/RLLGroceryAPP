using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        { 
        }
        protected void AddButton_Click(object sender, EventArgs e)
        {
            string categoryName = CategoryNameTextBox.Text.Trim();

            if (!string.IsNullOrEmpty(categoryName))
            {
                if (CategoryExists(categoryName))
                {
                    ErrorMessageLabel.Text = "Category with this name already exists. Please enter a different name.";
                }
                else if (AddCategoryToDatabase(categoryName))
                {
                    Response.Redirect("~/Admin/Categories.aspx");
                }
                else
                {
                    ErrorMessageLabel.Text = "Failed to add the category. Please try again.";
                }
            }
        }

        private bool CategoryExists(string categoryName)
        {
            using (SqlConnection connection = new SqlConnection(conStr))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM Categories WHERE CategoryName = @CategoryName";
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@CategoryName", categoryName);
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        private bool AddCategoryToDatabase(string categoryName)
        {
            using (SqlConnection connection = new SqlConnection(conStr))
            {
                try
                {
                    connection.Open();
                    string query = "INSERT INTO Categories (CategoryName) VALUES (@CategoryName)";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@CategoryName", categoryName);
                        cmd.ExecuteNonQuery();
                        return true; // Category added successfully
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception, log the error, or perform error handling as needed
                    return false; // Failed to add the category
                }
            }
        }
    }
}
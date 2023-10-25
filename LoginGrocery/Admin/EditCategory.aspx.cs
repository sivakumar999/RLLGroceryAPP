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
    public partial class EditCategory : System.Web.UI.Page
    {
        private readonly string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["CategoryId"] != null)
                {
                    int categoryId = Convert.ToInt32(Request.QueryString["CategoryId"]);
                    LoadCategoryDetails(categoryId);
                }
            }
        }

        private void LoadCategoryDetails(int categoryId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();
                    string query = "SELECT CategoryName FROM Categories WHERE CategoryId = @CategoryId";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                    string categoryName = cmd.ExecuteScalar().ToString();
                    CategoryNameTextBox.Text = categoryName;
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                ShowErrorMessage("Failed to load category details.");
            }
        }

        protected void UpdateCategoryButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["CategoryId"] != null)
            {
                int categoryId = Convert.ToInt32(Request.QueryString["CategoryId"]);
                string newCategoryName = CategoryNameTextBox.Text.Trim();
                if (CategoryExists(newCategoryName))
                {
                    ShowErrorMessage("Category with this name already exists. Please enter a different name.");
                }
                else if (UpdateCategory(categoryId, newCategoryName))
                {
                    ShowSuccessMessage("Category updated successfully.");
                }
                else
                {
                    ShowErrorMessage("Failed to update the category.");
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

        private bool UpdateCategory(int categoryId, string newCategoryName)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();
                    string query = "UPDATE Categories SET CategoryName = @NewCategoryName WHERE CategoryId = @CategoryId";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@NewCategoryName", newCategoryName);
                    cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0; // If rowsAffected > 0, update was successful
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                return false;
            }
        }

        private void ShowSuccessMessage(string message)
        {
            SuccessMessageLabel.Text = message;
            ErrorMessageLabel.Text = string.Empty;
        }

        private void ShowErrorMessage(string message)
        {
            ErrorMessageLabel.Text = message;
            SuccessMessageLabel.Text = string.Empty;
        }
    }
}
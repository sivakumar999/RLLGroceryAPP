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
    public partial class Categories : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load categories from the database and bind to the GridView
                BindCategoriesToGridView();
            }
        }

        private void BindCategoriesToGridView()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                string query = "SELECT CategoryId, CategoryName FROM Categories";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                CategoryGridView.DataSource = reader;
                CategoryGridView.DataBind();
            }
        }

        protected void CategoryGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Handle the "Edit" button click for a category
            int categoryId = Convert.ToInt32(CategoryGridView.DataKeys[e.NewEditIndex].Value);
            Response.Redirect($"EditCategory.aspx?CategoryId={categoryId}");
        }

        protected void CategoryGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Handle the "Delete" button click for a category
            int categoryId = Convert.ToInt32(CategoryGridView.DataKeys[e.RowIndex].Value);

            if (DeleteCategory(categoryId))
            {
                // Category deleted successfully, rebind the GridView to refresh the category list
                BindCategoriesToGridView();
                ShowSuccessMessage("Category deleted successfully.");
            }
            else
            {
                // Handle the case where category deletion failed
                ShowErrorMessage("Failed to delete the category.");
            }
        }

        private void ShowSuccessMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showSuccessMessage", $"alert('{message}');", true);
        }

        private void ShowErrorMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showErrorMessage", $"alert('{message}');", true);
        }

        private bool DeleteCategory(int categoryId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    // Delete the category from the database
                    string query = "DELETE FROM Categories WHERE CategoryId = @CategoryId";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                    int rowsAffected = cmd.ExecuteNonQuery();

                    return rowsAffected > 0; // If rowsAffected > 0, deletion was successful
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur during deletion
                return false;
            }
        }

    }
}
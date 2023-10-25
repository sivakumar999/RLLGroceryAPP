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
    public partial class AddProduct : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load categories from the database and bind to the dropdown list
                BindCategoriesToDropDown();
            }
        }

        private void BindCategoriesToDropDown()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                string query = "SELECT CategoryId, CategoryName FROM Categories";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                CategoryDropDown.DataSource = reader;
                CategoryDropDown.DataTextField = "CategoryName";
                CategoryDropDown.DataValueField = "CategoryId";
                CategoryDropDown.DataBind();

                // Add a default "Select Category" item
                CategoryDropDown.Items.Insert(0, new ListItem("-- Select Category --", ""));
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            try
            {
                int categoryId = Convert.ToInt32(CategoryDropDown.SelectedValue);
                string productImage = ProductImageTextBox.Text;
                string productName = ProductNameTextBox.Text;
                decimal productPrice = Convert.ToDecimal(ProductPriceTextBox.Text);

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    // Check if a product with the same name already exists
                    string checkQuery = "SELECT COUNT(*) FROM Products WHERE ProductName = @ProductName";
                    SqlCommand checkCmd = new SqlCommand(checkQuery, con);
                    checkCmd.Parameters.AddWithValue("@ProductName", productName);
                    int productCount = (int)checkCmd.ExecuteScalar();

                    if (productCount > 0)
                    {
                        // Product with the same name already exists, show an error message
                        Response.Write("Product with this name already exists.");
                    }
                    else
                    {
                        // Insert the new product into the database
                        string query = "INSERT INTO Products (CategoryId, ProductImage, ProductName, Price) VALUES (@CategoryId, @ProductImage, @ProductName, @Price)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                        cmd.Parameters.AddWithValue("@ProductImage", productImage);
                        cmd.Parameters.AddWithValue("@ProductName", productName);
                        cmd.Parameters.AddWithValue("@Price", productPrice);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Product insertion was successful
                            Response.Redirect("Products.aspx");
                        }
                        else
                        {
                            // Product insertion failed
                            Response.Write("Failed to add the product.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error adding product: " + ex.Message);
            }
        }

    }
}
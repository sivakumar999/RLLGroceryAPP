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
    public partial class EditProducts : System.Web.UI.Page
    {
        private string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int productId = Convert.ToInt32(Request.QueryString["id"]);
                    LoadProductDetails(productId);
                }

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
            }
        }

        private void LoadProductDetails(int productId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    // Retrieve product details from the database
                    string query = "SELECT CategoryId, ProductName, Price, ProductImage FROM Products WHERE ProductId = @ProductId";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@ProductId", productId);

                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        CategoryDropDown.SelectedValue = reader["CategoryId"].ToString();
                        ProductNameTextBox.Text = reader["ProductName"].ToString();
                        ProductImageTextBox.Text = reader["ProductImage"].ToString();
                        ProductPriceTextBox.Text = reader["Price"].ToString();
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions, log them, or display an error message
                Response.Write("Error loading product details: " + ex.Message);
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    int productId = Convert.ToInt32(Request.QueryString["id"]);
                    string productName = ProductNameTextBox.Text;
                    decimal productPrice = Convert.ToDecimal(ProductPriceTextBox.Text);
                    string productImage = ProductImageTextBox.Text;
                    int categoryId = Convert.ToInt32(CategoryDropDown.SelectedValue);

                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        con.Open();

                        // Check if the ProductName is already in use by another product (excluding the current product)
                        string queryCheckName = "SELECT COUNT(*) FROM Products WHERE ProductName = @ProductName AND ProductId != @ProductId";
                        SqlCommand cmdCheckName = new SqlCommand(queryCheckName, con);
                        cmdCheckName.Parameters.AddWithValue("@ProductName", productName);
                        cmdCheckName.Parameters.AddWithValue("@ProductId", productId);

                        int productCount = (int)cmdCheckName.ExecuteScalar();

                        if (productCount > 0)
                        {
                            // ProductName is already in use by another product
                            Response.Write("Product with the same name already exists. Please choose a different name.");
                        }
                        else
                        {
                            // Update the product details in the database
                            string query = "UPDATE Products SET CategoryId = @CategoryId, ProductName = @ProductName, Price = @Price, ProductImage = @ProductImage WHERE ProductId = @ProductId";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.Parameters.AddWithValue("@ProductId", productId);
                            cmd.Parameters.AddWithValue("@CategoryId", categoryId); // Update the category ID
                            cmd.Parameters.AddWithValue("@ProductName", productName);
                            cmd.Parameters.AddWithValue("@Price", productPrice);
                            cmd.Parameters.AddWithValue("@ProductImage", productImage);

                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                // Product update was successful
                                // You can display a success message or take any additional actions
                                Response.Redirect("Products.aspx"); // Redirect to the product list page
                            }
                            else
                            {
                                // Product update failed
                                // You can display an error message or take appropriate action
                                Response.Write("Failed to update the product.");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions, log them, or display an error message
                    Response.Write("Error updating product: " + ex.Message);
                }
            }
        }
    }
}
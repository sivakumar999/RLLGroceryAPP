using LoginGrocery.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        private Functions functions = new Functions();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
                LoadProducts();
            }
        }

        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }


        protected void CategoryDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadProducts();
        }

        protected void ProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "EditProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"EditProducts.aspx?id={productId}");
            }
            else if (e.CommandName == "DeleteProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                DeleteProduct(productId);
                LoadProducts();
            }
        }

        private void LoadCategories()
        {
            try
            {
                // Define your SQL query to retrieve categories from the database
                string query = "SELECT CategoryId, CategoryName FROM Categories";

                // Create a new DataTable to store the category data
                DataTable categoriesTable = functions.GetData(query);

                // Check if there are any rows in the result
                if (categoriesTable.Rows.Count > 0)
                {
                    // Set the data source and bindings for the CategoryDropDown
                    CategoryDropDown.DataSource = categoriesTable;
                    CategoryDropDown.DataTextField = "CategoryName";
                    CategoryDropDown.DataValueField = "CategoryId";
                    CategoryDropDown.DataBind();

                    // Add an initial item (e.g., "All Categories") if needed
                    CategoryDropDown.Items.Insert(0, new ListItem("All Categories", "0"));
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions, log them, or display an error message
                Response.Write("Error loading categories: " + ex.Message);
            }
        }

        private void LoadProducts()
        {
            try
            {
                // Get the selected category from the CategoryDropDown
                int selectedCategoryId = int.Parse(CategoryDropDown.SelectedValue);

                // Define your SQL query to retrieve products based on the selected category
                string query = "SELECT ProductId, ProductName, Price, ProductImage FROM Products";

                // Add a WHERE clause to filter by the selected category if it's not "All Categories"
                if (selectedCategoryId > 0)
                {
                    query += $" WHERE CategoryId = {selectedCategoryId}";
                }

                // Create a new DataTable to store the product data
                DataTable productsTable = functions.GetData(query);

                // Set the data source for the ProductRepeater
                ProductRepeater.DataSource = productsTable;
                ProductRepeater.DataBind();
            }
            catch (Exception ex)
            {
                // Handle any exceptions, log them, or display an error message
                Response.Write("Error loading products: " + ex.Message);
            }
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            MessageLabel.Text = message;
            MessagePanel.Attributes["class"] = isSuccess ? "alert alert-success" : "alert alert-danger";
            MessagePanel.Style["display"] = "block";
        }

        private void DeleteProduct(int productId)
        {
            try
            {
                // Define your SQL query to delete the product by its ID
                string query = $"DELETE FROM Products WHERE ProductId = {productId}";

                // Execute the SQL query to delete the product
                int rowsAffected = functions.SetData(query);

                if (rowsAffected > 0)
                {
                    // Product deletion was successful
                    ShowMessage("Product deleted successfully.", true);
                }
                else
                {
                    // Product deletion failed
                    ShowMessage("Failed to delete the product.", false); 
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions, log them, or display an error message
                ShowMessage("Error deleting product: " + ex.Message, false);
            }
        }
    }
}
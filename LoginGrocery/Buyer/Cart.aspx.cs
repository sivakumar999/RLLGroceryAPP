using LoginGrocery.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery.Buyer
{
    public partial class Cart : System.Web.UI.Page
    {
        private Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Con = new Models.Functions();
                BindCartItems();
            }
        }

        protected void CartGridView_RowCommand(object source, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveFromCart")
            {
                int cartId = Convert.ToInt32(e.CommandArgument);
                RemoveFromCart(cartId);
            }
            else if (e.CommandName == "AdjustQuantity")
            {
                string[] args = e.CommandArgument.ToString().Split(',');
                if (args.Length == 2 && (args[1] == "Increase" || args[1] == "Decrease"))
                {
                    int cartId = Convert.ToInt32(args[0]);
                    TextBox quantityTextBox = (TextBox)CartGridView.Rows[cartId].FindControl("QuantityTextBox");
                    int currentQuantity = Convert.ToInt32(quantityTextBox.Text);

                    int adjustment = args[1] == "Increase" ? 1 : -1;
                    currentQuantity += adjustment;

                    if (currentQuantity < 1)
                    {
                        currentQuantity = 1;
                    }

                    quantityTextBox.Text = currentQuantity.ToString();

                    UpdateCartQuantity(cartId, currentQuantity);
                }

            }

            BindCartItems();
        }





        protected void PlaceOrderButton_Click(object sender, EventArgs e)
        {
            // Implement the logic for placing an order here
        }

        private void BindCartItems()
        {
            string userId = Session["UserId"].ToString();
            DataTable cartItems = GetCartItems(userId);
            CartGridView.DataSource = cartItems;
            CartGridView.DataBind();
        }

        private void UpdateCartQuantity(int rowIndex, int newQuantity)
        {
            try
            {
                if (Con == null)
                {
                    Con = new Models.Functions();
                }
                int cartId = Convert.ToInt32(CartGridView.DataKeys[rowIndex].Value);
                string query = $"SELECT Products.Price, Cart.Quantity FROM Products INNER JOIN Cart ON Products.ProductId = Cart.ProductId WHERE Cart.CartId = {cartId}";

                DataTable result = Con.GetData(query);
                if (result.Rows.Count > 0)
                {
                    decimal productPrice = Convert.ToDecimal(result.Rows[0]["Price"]);
                    int currentQuantity = Convert.ToInt32(result.Rows[0]["Quantity"]);

                    // Calculate the new TotalCost
                    decimal newTotalCost = productPrice * newQuantity;

                    // Update both Quantity and TotalCost in the database
                    string updateQuery = $"UPDATE Cart SET Quantity = {newQuantity}, TotalCost = {newTotalCost} WHERE CartId = {cartId}";

                    int rowsAffected = Con.SetData(updateQuery);

                    if (rowsAffected > 0)
                    {
                        // Quantity and TotalCost updated successfully
                    }
                    else
                    {
                        // Failed to update quantity and TotalCost
                    }
                }
                else
                {
                    // Handle the case where the query didn't return the expected result (e.g., item not found)
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions here
            }
        }


        private void RemoveFromCart(int cartId)
        {
            try
            {
                if (Con == null)
                {
                    Con = new Models.Functions();
                }

                string query = $"DELETE FROM Cart WHERE CartId = {cartId}";
                int rowsAffected = Con.SetData(query);

                if (rowsAffected > 0)
                {
                    // Item removed successfully
                }
                else
                {
                    // Failed to remove item
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions here
            }
        }

        private DataTable GetCartItems(string userId)
        {
            Functions functions = new Functions();

            try
            {
                string query = $"SELECT Products.ProductImage, Products.ProductName, Products.Price, Cart.Quantity, (Cart.Quantity * Products.Price) as TotalCost, Cart.CartId " +
                               $"FROM Products " +
                               $"INNER JOIN Cart ON Products.ProductId = Cart.ProductId " +
                               $"WHERE Cart.UserId = '{userId}'"; // Notice the single quotes around {userId}

                return functions.GetData(query);
            }
            catch (Exception ex)
            {
                // Handle any exceptions here (e.g., log the error)
                return null; // Or an empty DataTable, depending on your preference
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string userId = Session["UserId"].ToString();
            DataTable cartItems = GetCartItems(userId);

            // Store cart items in a session variable
            Session["CartItems"] = cartItems;

            // Redirect to the "Order" page
            Response.Redirect("Order.aspx");
        }
    }
}
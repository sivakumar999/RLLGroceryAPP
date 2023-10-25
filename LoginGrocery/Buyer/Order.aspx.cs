using LoginGrocery.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery.Buyer
{
    public partial class Order : System.Web.UI.Page
    {
        private Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PlaceOrderButton_Click(object sender, EventArgs e)
        {


            if (Page.IsValid)
            {
                string userId = Session["UserId"].ToString();
                string address = AddressTextBox.Text;
                int pinCode = int.Parse(PinCodeTextBox.Text);

                // You may need to add code for database connection, similar to what you have in your Cart page.
                // Make sure to replace "YourConnectionStringName" with your actual connection string.

                string connectionString = ConfigurationManager.ConnectionStrings["GroConnectionString"].ToString();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        connection.Open();
                        using (SqlCommand command = new SqlCommand("INSERT INTO address (UserId, Address, Pincode) VALUES (@UserId, @Address, @Pincode)", connection))
                        {
                            command.Parameters.AddWithValue("@UserId", userId);
                            command.Parameters.AddWithValue("@Address", address);
                            command.Parameters.AddWithValue("@Pincode", pinCode);

                            int rowsAffected = command.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                // Data inserted successfully
                                Response.Write("<script>alert('Order has been placed Successfully" +
                                    ".');</script>");

                                // Optionally, you can redirect to another page after successful submission.
                                // Response.Redirect("ThankYouPage.aspx");
                            }
                            else
                            {
                                // Data insertion failed
                                Response.Write("<script>alert('Data insertion failed.');</script>");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                    }
                }
            }
        }
        protected void validateAgreeToTerms(object source, ServerValidateEventArgs args)
        {
            args.IsValid = AgreeToTermsCheckBox.Checked;
        }

        protected void PinCodeTextBox_TextChanged(object sender, EventArgs e)
        {
            TextBox pinCodeTextBox = sender as TextBox;

            if (pinCodeTextBox != null)
            {
                string enteredPinCode = pinCodeTextBox.Text;

                if (enteredPinCode.Length != 6)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Pin Code should be exactly 6 digits.');", true);
                }
                // ... (other logic if needed)
            }
        }
    }
        }
    

         /*   if (Page.IsValid)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["GroConnectionString"].ToString();

                string address = AddressTextBox.Text;
                int pinCode = int.Parse(PinCodeTextBox.Text);

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string insertQuery = "INSERT INTO address (Address, Pincode) VALUES (@Address, @Pincode)";
                    SqlCommand cmd = new SqlCommand(insertQuery, connection);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@Pincode", pinCode);

                    connection.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Data inserted successfully
                        Response.Write("<script>alert('Order Placed successfully.');</script>");
                        // Optionally, you can redirect to another page after successful submission.
                        // Response.Redirect("ThankYouPage.aspx");
                    }
                    else
                    {
                        // Data insertion failed
                        Response.Write("<script>alert(' Please Order Again!.');</script>");
                    }
                }
            }
*/
            /*  protected void SubmitButton_Click(object sender, EventArgs e)
              {
                  if (Page.IsValid)
                  {
                      string connectionString = ConfigurationManager.ConnectionStrings["GroConnectionString"].ToString();

                      string address = AddressTextBox.Text;
                      int pinCode = int.Parse(PinCodeTextBox.Text);

                      using (SqlConnection connection = new SqlConnection(connectionString))
                      {
                          string insertQuery = "INSERT INTO address (Address, Pincode) VALUES (@Address, @Pincode)";
                          SqlCommand cmd = new SqlCommand(insertQuery, connection);
                          cmd.Parameters.AddWithValue("@Address", address);
                          cmd.Parameters.AddWithValue("@Pincode", pinCode);

                          connection.Open();
                          int rowsAffected = cmd.ExecuteNonQuery();

                          if (rowsAffected > 0)
                          {
                              // Data inserted successfully
                              Response.Write("<script>alert('Order Placed successfully.');</script>");
                              // Optionally, you can redirect to another page after successful submission.
                              // Response.Redirect("ThankYouPage.aspx");
                          }
                          else
                          {
                              // Data insertion failed
                              Response.Write("<script>alert(' Please Order Again!.');</script>");
                          }
                      }
                  }
              }

              protected void validateAgreeToTerms(object source, ServerValidateEventArgs args)
              {
                  args.IsValid = AgreeToTermsCheckBox.Checked;
              }*/
        
    


    



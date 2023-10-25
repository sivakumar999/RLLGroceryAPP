using System;
using System.Data.SqlClient;
using System.Configuration;
using LoginGrocery.Models; // Import the Functions class
using System.Data;

namespace LoginGrocery
{
    public partial class GiveFeedback : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select * from  Feedback";
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            d1.DataSource = ds;
            d1.DataBind();
            con.Close();
            if (!IsPostBack)
            {
                // Set the User ID and User Name using session values
                if (Session["UserId"] != null)
                {
                    string UserId = Session["UserId"].ToString();
                    /*UserIdTextBox.Text = Session["UserId"].ToString();
                    UserNameTextBox.Text = Session["UserName"].ToString();*/
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                string userId = Session["UserId"].ToString();
                int rating;
                if (int.TryParse(RatingTextBox.Text, out rating))
                {
                    string comments = CommentsTextBox.Text;

                    Functions dbFunctions = new Functions(); // Initialize Functions class
                    string query = "INSERT INTO Feedback (UserId, Rating, Comments) VALUES ('" + userId + "', " + rating + ", '" + comments + "')";

                    int rowsAffected = dbFunctions.SetData(query);

                    if (rowsAffected > 0)
                    {
                        LblMsg.Text = "Feedback submitted successfully!";
                    }
                    else
                    {
                        LblMsg.Text = "Feedback submission failed.";
                    }
                }
                else
                {
                    LblMsg.Text = "Rating must be a valid integer.";
                }
            }
            else
            {
                LblMsg.Text = "User not found. Please provide a valid user ID.";
            }
        }
    }
}

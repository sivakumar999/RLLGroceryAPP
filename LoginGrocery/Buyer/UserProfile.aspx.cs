using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
using LoginGrocery.Models;

namespace LoginGrocery.Buyer
{
    public partial class UserProfile : System.Web.UI.Page
    {
        private Functions Con;
        private string userId;

        public object UserId { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null || Session["UserId"].ToString() == "")
            {
                Response.Write("<script>alert('Not Working');</script>");
            }
            else
            {
                userId = Session["UserId"].ToString();
                if (!IsPostBack)
                {
                    GetUserData();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateUserData();
        }

        void UpdateUserData()
        {
            string password = "";
            if (NewPassword.Text.Trim() == "")
            {
                password = Password.Text.Trim();
            }
            else
            {
                password = NewPassword.Text.Trim();
            }
            try
            {
                string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand("UPDATE UserRegistration SET FirstName=@fn, LastName=@ln, ContactNumber=@cn, EmailID=@email, DateOfBirth=@dob, Password=@newpwd Where UserId=@userId", con))
                    {
                        cmd.Parameters.AddWithValue("@fn", FirstName.Text.Trim());
                        cmd.Parameters.AddWithValue("@ln", LastName.Text.Trim());
                        cmd.Parameters.AddWithValue("@cn", ContactNumber.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", Email.Text.Trim());
                        cmd.Parameters.AddWithValue("@dob", DOB.Text.Trim());
                        cmd.Parameters.AddWithValue("@newpwd", password);
                        cmd.Parameters.AddWithValue("@userId", userId);

                        int result = cmd.ExecuteNonQuery();

                        if (result == 0)
                        {
                            Response.Write("<script>alert('Update failed');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Update Successful');</script>");
                            GetUserData();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private string GetUserIdOrName()
        {
            if (Session["UserId"] != null)
            {
                return Session["UserId"].ToString();
            }
            else if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                return HttpContext.Current.User.Identity.Name;
            }
            else
            {
                // If user is not authenticated and session does not have UserId, use a placeholder value or handle as needed
                return "Guest";
            }
        }

        void GetUserData()
        {
            string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(conStr))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand("Select FirstName, LastName, ContactNumber, EmailID, DateOfBirth, UserId, Password FROM UserRegistration where UserId=@userId", con))
                    {
                        cmd.Parameters.AddWithValue("@userId", userId);
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);

                            if (dt.Rows.Count > 0)
                            {
                                FirstName.Text = dt.Rows[0]["FirstName"].ToString();
                                LastName.Text = dt.Rows[0]["LastName"].ToString();
                                ContactNumber.Text = dt.Rows[0]["ContactNumber"].ToString();
                                Email.Text = dt.Rows[0]["EmailID"].ToString();
                                DOB.Text = dt.Rows[0]["DateOfBirth"].ToString();
                            //    UserId.Text = dt.Rows[0]["UserId"].ToString();
                                Password.Text = dt.Rows[0]["Password"].ToString();
                            }
                            else
                            {
                                Response.Write("<script>alert('User not found');</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}

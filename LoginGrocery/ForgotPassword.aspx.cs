﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (UpdateNewPassword())
            {
                Response.Write("<script>alert('UserID and Contact Number must match');</script>");
            }
            else
            {
                Response.Redirect("UserLogin.aspx");
            }
        }
        bool UpdateNewPassword()
        {
            try
            {
                SqlConnection con = new SqlConnection(conStr);

                //The connection of the database will open if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE UserRegistration SET Password = @newPassword Where UserId='" + UserId.Text.Trim() + "' AND ContactNumber='" + ContactNumber.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@newPassword", NewPassword.Text.Trim());   //Trim is used to remove the spaces in front and back

                int result = cmd.ExecuteNonQuery();  //If there is nothing to return then we have to use this method


                con.Close();

                if (result == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}
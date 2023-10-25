<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GiveFeedback.aspx.cs" Inherits="LoginGrocery.GiveFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


   <style>
        body {
 background-image:url('https://admin.ecommercebrasil.com.br/wp-content/uploads/2022/05/e-grocery.jpg');
     background-repeat: no-repeat;
     background-attachment: fixed;
     background-size: 100% 100%;
     font-family: Arial, sans-serif;
 }
        .bg-light-yellow {
    background-color: #ffffcc; /* Use the color code for the light yellow you prefer */
}


     </style>


<h3 style="color: white; font-family: 'Times New Roman', Times, serif;">Happy with your visit? Have suggestions for improvement? We'd love to know. Please share your feedback with us.</h3>

 
    <br />
    <div style="text-align: center;">
    <h3 style="font-family: 'Times New Roman', Times, serif; color: white;">ToZepy's  will try to give the best for you!</h3>
</div>

    <br />
  
     <div class="container mt-4">
        <div class="card w-50 mx-auto">
            <div class="card-body bg-light-yellow">
                <h5 class="card-title">User Feedback</h5>
                <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
                <table class="table">
                    <tr>
                        <td>Rating</td>
                        <td>
                            <asp:TextBox ID="RatingTextBox" runat="server" CssClass="form-control" style="width: 50px;"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RatingRequiredValidator"
                                runat="server"
                                ControlToValidate="RatingTextBox"
                                Display="Dynamic"
                                ForeColor="Red"
                                ErrorMessage="Rating is required">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator
                                ID="RatingRangeValidator"
                                runat="server"
                                ControlToValidate="RatingTextBox"
                                Display="Dynamic"
                                ForeColor="Red"
                                Type="Integer"
                                MinimumValue="1"
                                MaximumValue="5"
                                ErrorMessage="Rating must be between 1 and 5">
                            </asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Comments</td>
                        <td>
                            <asp:TextBox ID="CommentsTextBox" runat="server" TextMode="MultiLine" CssClass="form-control" style="height: 100px;"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="CommentsRequiredValidator"
                                runat="server"
                                ControlToValidate="CommentsTextBox"
                                Display="Dynamic"
                                ForeColor="Red"
                                ErrorMessage="Comments are required">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="SubmitButton_Click" style="margin-top: 10px;" />
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ForeColor="Red" />
            </div>
        </div>
    </div>

    <h2 style="text-align:center">Welcome</h2>
    <p style="text-align:center">
    </p>    
    <asp:Repeater ID="d1" runat="server">
    <ItemTemplate>
        <div class="card" style="width:40%">
             <p><%# Eval("UserId") %></p>
            <p>Rating :<%# Eval("rating") %></p>
            <p>Comments :<%# Eval("comments") %></p>
          
            

        </div>
    </ItemTemplate>
</asp:Repeater>

</asp:Content>

<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="LoginGrocery.Buyer.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
        body {
    background-image: url('https://img.freepik.com/premium-photo/shopping-bag-with-food-groceries-table-supermarket_8087-1414.jpg?size=626&ext=jpg&ga=GA1.1.1413502914.1696896000&semt=ais');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}

    

      .card{
          margin:auto auto;
         width:580px;
         position:center;
         height:650px;
         color:black;
         background-color:mediumseagreen;
      }

  </style>

    <div class="container">
       <h2>User Profile</h2>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="FirstName" Text="First Name" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="FirstName" runat="server" placeholder="First Name" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="FirstName" ForeColor="#CC0000"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="The name must be between 3 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{3,15})$"></asp:RegularExpressionValidator>
                           
       </div>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="LastName" Text="Last Name" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="LastName" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastName" ForeColor="#CC0000"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="The name must be between 1 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{1,15})$"></asp:RegularExpressionValidator>
                           
       </div>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="ContactNumber" Text="Contact Number" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="ContactNumber" runat="server" placeholder="Contact Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="ContactNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="ContactNumber" ErrorMessage="Contact number must only contain 10 digits" ForeColor="#CC0000" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                            
       </div>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="Email" Text="Email" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="Email" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Id is required" ControlToValidate="Email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Email must contain @ and ." ForeColor="#CC0000" ValidationExpression="^[^@]+@[^@]+\.[^@]+$"></asp:RegularExpressionValidator>
                            
       </div>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="DOB" Text="Date of Birth" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="DOB" runat="server" placeholder="Date of Birth" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="DOB is Required" ControlToValidate="Dob" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            
       </div>
     <%--  <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="UserId" Text="User ID" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="UserId" runat="server" placeholder="User ID" CssClass="form-control"></asp:TextBox>
       </div>--%>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="Password" Text="Password" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>

       </div>
       <div class="form-group">
           <asp:Label runat="server" AssociatedControlID="NewPassword" Text="New Password" CssClass="control-label"></asp:Label>
           <asp:TextBox ID="NewPassword" runat="server" placeholder="New Password" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="NewPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>        
                                  
       </div>
       <div class="form-group">
           <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="btn btn-primary" />
       </div>
   </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditProducts.aspx.cs" Inherits="LoginGrocery.Admin.EditProducts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
     <style>
     body {
         background-image: url('https://j4y2v5w8.stackpathcdn.com/wp-content/uploads/2017/07/OnlineGroceryShopping.jpg');
         background-repeat: no-repeat;
         background-attachment: fixed;
         background-size: cover;
         font-family: Arial, sans-serif;

     }
    
         </style>
     <div class="container">
        <h2>Edit Product</h2>
        <br />
        Product Category:
        <asp:DropDownList ID="CategoryDropDown" runat="server" CssClass="form-control" DataTextField="CategoryName" DataValueField="CategoryId">
        </asp:DropDownList>
        <br />
        <asp:Label ID="ProductImageControl" runat="server" Text="Product Image:" AssociatedControlID="ProductImageTextBox"></asp:Label>
        <asp:TextBox ID="ProductImageTextBox" runat="server" CssClass="form-control" Placeholder="Image URL" />
        <asp:RequiredFieldValidator ID="ProductImageValidator" runat="server" ControlToValidate="ProductImageTextBox" Display="Dynamic" CssClass="text-danger" ErrorMessage="Image URL is required." /><br />

        <asp:Label ID="ProductNameLabel" runat="server" Text="Product Name:" AssociatedControlID="ProductNameTextBox"></asp:Label>
        <asp:TextBox ID="ProductNameTextBox" runat="server" CssClass="form-control" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="ProductNameTextBox"
            ValidationExpression="^(?![0-9])[a-zA-Z0-9\s]*$"
            ErrorMessage="Product Name cannot be a number."
            Display="Dynamic"
            CssClass="text-danger" />
        <asp:RequiredFieldValidator ID="ProductNameValidator" runat="server" ControlToValidate="ProductNameTextBox" InitialValue="" Display="Dynamic" CssClass="text-danger" ErrorMessage="Product Name is required." /><br />
        
        
        <asp:Label ID="ProductPriceLabel" runat="server" Text="Price:" AssociatedControlID="ProductPriceTextBox"></asp:Label>
        <asp:TextBox ID="ProductPriceTextBox" runat="server" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="ProductPriceValidator" runat="server" ControlToValidate="ProductPriceTextBox" InitialValue="0" Display="Dynamic" CssClass="text-danger" ErrorMessage="Price is required." /><br />
        
        
        <asp:Button ID="SaveButton" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="SaveButton_Click" />
    </div>
</asp:Content>

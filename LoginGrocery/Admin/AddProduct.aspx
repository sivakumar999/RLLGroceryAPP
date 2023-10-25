<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="LoginGrocery.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
 body {
     background-image: url('https://img.freepik.com/premium-photo/assorted-frozen-vegetables-toy-shopping-cart-cream-background-representing-minimalistic_908985-18569.jpg');
     background-repeat: no-repeat;
     background-attachment: fixed;
     background-size: cover;
     font-family: Arial, sans-serif;

 }
     </style>



     <div class="container">
        <h3>Add a New Product</h3>
        <hr />

        <asp:DropDownList ID="CategoryDropDown" runat="server" CssClass="form-control" DataTextField="CategoryName" DataValueField="CategoryId" AppendDataBoundItems="true">
        </asp:DropDownList>

        <div class="form-group">
            <label for="ProductImage">Product Image URL:</label>
            <asp:TextBox ID="ProductImageTextBox" runat="server" CssClass="form-control" placeholder="Product Image URL" />
        </div>

        <div class="form-group">
            <label for="ProductName">Product Name:</label>
            <asp:TextBox ID="ProductNameTextBox" runat="server" CssClass="form-control" placeholder="Product Name" />
            <asp:RegularExpressionValidator ID="ProductNameValidator" runat="server"
                ControlToValidate="ProductNameTextBox"
                ValidationExpression="^(?![0-9])[a-zA-Z0-9\s]*$"
                ErrorMessage="Product Name cannot be a number."
                Display="Dynamic"
                CssClass="text-danger" />
        </div>

        <div class="form-group">
            <label for="ProductPrice">Product Price:</label>
            <asp:TextBox ID="ProductPriceTextBox" runat="server" CssClass="form-control" placeholder="Product Price" />
        </div>
         <br />

        <div class="form-group">
            <asp:Button ID="AddButton" runat="server" Text="Add Product" OnClick="AddButton_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>

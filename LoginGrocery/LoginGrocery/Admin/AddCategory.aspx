<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="LoginGrocery.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    
    <style>
    body {
        background-image: url('https://img.freepik.com/free-photo/top-view-mix-vegetables-cutting-board-bowl-with-copy-space_23-2148369697.jpg?w=2000');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        font-family: Arial, sans-serif;

    }
        </style>
    
    
    
    <h2>Add Category</h2>

    <div>
        <asp:Label ID="CategoryLabel" runat="server" Text="Category Name:"></asp:Label>
        <asp:TextBox ID="CategoryNameTextBox" runat="server"></asp:TextBox>
        
        <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" />
        <br />
        <asp:RegularExpressionValidator ID="CategoryNameValidator" runat="server"
    ControlToValidate="CategoryNameTextBox"
    ValidationExpression="^(?![0-9])[a-zA-Z0-9\s]*$"
    ErrorMessage="Category Name cannot be a number."
    Display="Dynamic"
    ForeColor="Red" />
    </div>
    <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>

</asp:Content>

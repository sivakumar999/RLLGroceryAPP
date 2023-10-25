<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="LoginGrocery.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
     body {
         background-image: url('https://nationalssdi.com/wp-content/uploads/2022/11/AdobeStock_289181320-1-scaled.jpeg');
         background-repeat: no-repeat;
         background-attachment: fixed;
         background-size: cover;
         font-family: Arial, sans-serif;

     }
     .card-body {
  
  margin: auto;
  background-color:ivory;  
}
         </style>

    <div class="card-body">


        <asp:HyperLink ID="AddCategoryLink" runat="server" NavigateUrl="~/Admin/AddCategory.aspx" Text="Add Category"></asp:HyperLink>
    <asp:GridView ID="CategoryGridView" runat="server" AutoGenerateColumns="false" DataKeyNames="CategoryId" OnRowEditing="CategoryGridView_RowEditing" OnRowDeleting="CategoryGridView_RowDeleting" CssClass="table table-bordered">
    <Columns>
        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
        <asp:ButtonField Text="Edit" ButtonType="Link" CommandName="Edit" HeaderText="Edit" />
        <asp:ButtonField Text="Delete" ButtonType="Link" CommandName="Delete" HeaderText="Delete" />
       
    </Columns>
        
</asp:GridView>
        </div>
</asp:Content>

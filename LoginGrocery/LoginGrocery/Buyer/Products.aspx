<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LoginGrocery.Buyer.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <style>
    body {
    background-image:url('https://browntape.com/wp-content/uploads/2016/06/Online-shopping-grocery.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
        font-family: Arial, sans-serif;
    }
        </style>


    <div class="row">
        <div class="col-md-4">
            <asp:DropDownList ID="CategoryDropDown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CategoryDropDown_SelectedIndexChanged">
            </asp:DropDownList><br />
        </div>
    </div>
    <div class="row">
        <asp:Repeater ID="ProductRepeater" runat="server" OnItemCommand="ProductRepeater_ItemCommand">
            <ItemTemplate>
                <div class='col-md-3 mb-4'>
                    <div class='card h-100'>
                        <div class='card-body d-flex flex-column'>
                            <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="card-img-top" />
                            <h5 class='card-title text-center'><%# Eval("ProductName") %></h5>
                            <p class='card-text text-center'><%# Eval("Price", "{0:C}") %></p>
                            <asp:Button ID="AddToCartButton" runat="server" Text="Add to Cart" CssClass="btn btn-outline-primary mt-auto" CommandName="AddToCart" CommandArgument='<%# Eval("ProductId") %>' />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

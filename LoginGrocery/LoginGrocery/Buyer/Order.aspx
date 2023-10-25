<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="LoginGrocery.Buyer.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <p>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId" DataSourceID="SqlDataSource2">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" />
               <asp:BoundField DataField="CartId" HeaderText="CartId" SortExpression="CartId" InsertVisible="False" ReadOnly="True" />
               <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
               <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
               <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
               <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
               <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
           </Columns>
       </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @original_CartId AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))" InsertCommand="INSERT INTO [Cart] ([ProductId], [ProductName], [Quantity], [TotalCost], [UserId]) VALUES (@ProductId, @ProductName, @Quantity, @TotalCost, @UserId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [ProductId] = @ProductId, [ProductName] = @ProductName, [Quantity] = @Quantity, [TotalCost] = @TotalCost, [UserId] = @UserId WHERE [CartId] = @original_CartId AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_CartId" Type="Int32" />
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                 <asp:Parameter Name="original_UserId" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="ProductId" Type="Int32" />
                 <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="TotalCost" Type="Decimal" />
                 <asp:Parameter Name="UserId" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="ProductId" Type="Int32" />
                 <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="TotalCost" Type="Decimal" />
                 <asp:Parameter Name="UserId" Type="String" />
                 <asp:Parameter Name="original_CartId" Type="Int32" />
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                 <asp:Parameter Name="original_UserId" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Cart] WHERE [CartId] = @original_CartId AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([OrderId] = @original_OrderId) OR ([OrderId] IS NULL AND @original_OrderId IS NULL))" InsertCommand="INSERT INTO [Cart] ([ProductId], [ProductName], [Quantity], [TotalCost], [UserId], [OrderId]) VALUES (@ProductId, @ProductName, @Quantity, @TotalCost, @UserId, @OrderId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [ProductId] = @ProductId, [ProductName] = @ProductName, [Quantity] = @Quantity, [TotalCost] = @TotalCost, [UserId] = @UserId, [OrderId] = @OrderId WHERE [CartId] = @original_CartId AND (([ProductId] = @original_ProductId) OR ([ProductId] IS NULL AND @original_ProductId IS NULL)) AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([OrderId] = @original_OrderId) OR ([OrderId] IS NULL AND @original_OrderId IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_CartId" Type="Int32" />
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                 <asp:Parameter Name="original_UserId" Type="String" />
                 <asp:Parameter Name="original_OrderId" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="ProductId" Type="Int32" />
                 <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="TotalCost" Type="Decimal" />
                 <asp:Parameter Name="UserId" Type="String" />
                 <asp:Parameter Name="OrderId" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="ProductId" Type="Int32" />
                 <asp:Parameter Name="ProductName" Type="String" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="TotalCost" Type="Decimal" />
                 <asp:Parameter Name="UserId" Type="String" />
                 <asp:Parameter Name="OrderId" Type="Int32" />
                 <asp:Parameter Name="original_CartId" Type="Int32" />
                 <asp:Parameter Name="original_ProductId" Type="Int32" />
                 <asp:Parameter Name="original_ProductName" Type="String" />
                 <asp:Parameter Name="original_Quantity" Type="Int32" />
                 <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                 <asp:Parameter Name="original_UserId" Type="String" />
                 <asp:Parameter Name="original_OrderId" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
       </p>
<div>
<!-- Address Textbox -->
    <asp:Label ID="AddressLabel" runat="server" AssociatedControlID="AddressTextBox" Text="Address" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter your address" ValidationGroup="OrderValidation" required="true"></asp:TextBox>
    <asp:RequiredFieldValidator ID="AddressRequiredValidator" runat="server" ControlToValidate="AddressTextBox" Display="Dynamic" InitialValue="" ValidationGroup="OrderValidation" ErrorMessage="Address is required." ForeColor="Red" />

    <!-- Pin Code Textbox -->
    <asp:Label ID="PinCodeLabel" runat="server" AssociatedControlID="PinCodeTextBox" Text="Pin Code" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="PinCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter a 6-digit Pin Code" ValidationGroup="OrderValidation" required="true" OnTextChanged="PinCodeTextBox_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="PinCodeRequiredValidator" runat="server" ControlToValidate="PinCodeTextBox" Display="Dynamic" InitialValue="" ValidationGroup="OrderValidation" ErrorMessage="Pin Code is required." ForeColor="Red" />
    <asp:RegularExpressionValidator ID="PinCodeValidator" runat="server" ControlToValidate="PinCodeTextBox" Display="Dynamic" ValidationExpression="^\d{6}$" ValidationGroup="OrderValidation" ErrorMessage="Pin Code must be a 6-digit number." ForeColor="Red" />

    <!-- Checkbox for Agreeing to Terms and Conditions -->
    <asp:CheckBox ID="AgreeToTermsCheckBox" runat="server" ValidationGroup="OrderValidation" />
    <label for="AgreeToTermsCheckBox">I hereby confirm my agreement to the items in my orders and request to place them. </label>
    <asp:CustomValidator ID="AgreeToTermsValidator" runat="server" ClientValidationFunction="validateAgreeToTerms" Display="Dynamic" ValidationGroup="OrderValidation" ErrorMessage="You must agree to the Terms and Conditions." ForeColor="Red" />

    <!-- Place Order Button -->
    <br />
    <br />
    <table class="w-100">
        <tr>
            <td style="width: 534px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="PlaceOrderButton" runat="server" Text="Place Order" CssClass="btn btn-primary"  ValidationGroup="OrderValidation"  OnClick="PlaceOrderButton_Click" />
    <br />
    
    <br />
    <br />
</div>

<!-- JavaScript for CustomValidator -->
<script type="text/javascript">
    function validateAgreeToTerms(sender, args) {
        args.IsValid = document.getElementById('<%= AgreeToTermsCheckBox.ClientID %>').checked;
    }
</script>


</asp:Content>

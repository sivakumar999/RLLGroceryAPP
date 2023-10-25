<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signupdetails.aspx.cs" Inherits="LoginGrocery.signupdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" SortExpression="ConfirmPassword" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString2 %>" DeleteCommand="DELETE FROM [UserRegistration] WHERE [UserId] = @original_UserId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [ContactNumber] = @original_ContactNumber AND [EmailID] = @original_EmailID AND [DateOfBirth] = @original_DateOfBirth AND [Password] = @original_Password AND [ConfirmPassword] = @original_ConfirmPassword" InsertCommand="INSERT INTO [UserRegistration] ([FirstName], [LastName], [ContactNumber], [EmailID], [DateOfBirth], [UserId], [Password], [ConfirmPassword]) VALUES (@FirstName, @LastName, @ContactNumber, @EmailID, @DateOfBirth, @UserId, @Password, @ConfirmPassword)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [UserRegistration]" UpdateCommand="UPDATE [UserRegistration] SET [FirstName] = @FirstName, [LastName] = @LastName, [ContactNumber] = @ContactNumber, [EmailID] = @EmailID, [DateOfBirth] = @DateOfBirth, [Password] = @Password, [ConfirmPassword] = @ConfirmPassword WHERE [UserId] = @original_UserId AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [ContactNumber] = @original_ContactNumber AND [EmailID] = @original_EmailID AND [DateOfBirth] = @original_DateOfBirth AND [Password] = @original_Password AND [ConfirmPassword] = @original_ConfirmPassword">
    <DeleteParameters>
        <asp:Parameter Name="original_UserId" Type="String"/>
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_ContactNumber" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_ConfirmPassword" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="UserId" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="ConfirmPassword" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="ConfirmPassword" Type="String" />
        <asp:Parameter Name="original_UserId" Type="String" />
        <asp:Parameter Name="original_FirstName" Type="String" />
        <asp:Parameter Name="original_LastName" Type="String" />
        <asp:Parameter Name="original_ContactNumber" Type="String" />
        <asp:Parameter Name="original_EmailID" Type="String" />
        <asp:Parameter Name="original_DateOfBirth" Type="DateTime" />
        <asp:Parameter Name="original_Password" Type="String" />
        <asp:Parameter Name="original_ConfirmPassword" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>

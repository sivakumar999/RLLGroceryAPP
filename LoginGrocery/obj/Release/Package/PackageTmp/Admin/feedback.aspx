<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="LoginGrocery.Admin.feedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
body {
    background-image: url('https://th.bing.com/th/id/OIP.Lde7tO_T0KdrfqYcopk2jgHaE7?pid=ImgDet&rs=1');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, sans-serif;

} </style>
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Feedback" DataSourceID="SqlDataSource3">
        <Columns>
           <%-- <asp:BoundField DataField="Feedback" HeaderText="Feedback" InsertVisible="False" ReadOnly="True" SortExpression="Feedback" />--%>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
            <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString2 %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Feedback] = @original_Feedback AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))" InsertCommand="INSERT INTO [Feedback] ([UserId], [rating], [comments]) VALUES (@UserId, @rating, @comments)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [UserId] = @UserId, [rating] = @rating, [comments] = @comments WHERE [Feedback] = @original_Feedback AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Feedback" Type="Int32" />
            <asp:Parameter Name="original_UserId" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="original_Feedback" Type="Int32" />
            <asp:Parameter Name="original_UserId" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString4 %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Feedback] = @original_Feedback AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))" InsertCommand="INSERT INTO [Feedback] ([UserId], [rating], [comments]) VALUES (@UserId, @rating, @comments)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [UserId] = @UserId, [rating] = @rating, [comments] = @comments WHERE [Feedback] = @original_Feedback AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Feedback" Type="Int32" />
            <asp:Parameter Name="original_UserId" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="original_Feedback" Type="Int32" />
            <asp:Parameter Name="original_UserId" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>--%>
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroConnectionString3 %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @original_FeedbackId AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))" InsertCommand="INSERT INTO [Feedback] ([CustomerName], [rating], [comments]) VALUES (@CustomerName, @rating, @comments)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:GroConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [CustomerName] = @CustomerName, [rating] = @rating, [comments] = @comments WHERE [FeedbackId] = @original_FeedbackId AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([rating] = @original_rating) OR ([rating] IS NULL AND @original_rating IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_FeedbackId" Type="Int32" />
            <asp:Parameter Name="original_CustomerName" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="original_FeedbackId" Type="Int32" />
            <asp:Parameter Name="original_CustomerName" Type="String" />
            <asp:Parameter Name="original_rating" Type="Int32" />
            <asp:Parameter Name="original_comments" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>--%>
</p>
</asp:Content>
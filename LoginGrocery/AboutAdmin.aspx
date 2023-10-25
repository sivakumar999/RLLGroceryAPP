<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AboutAdmin.aspx.cs" Inherits="LoginGrocery.AboutAdmin" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>

 
    main 
    {
        background-image:url('https://img.freepik.com/premium-photo/administrator-supermarket-making-notes-while-standing-by-sales-assistant_274679-41681.jpg');

      background-blend-mode:normal;
      background-size:cover;
        background-repeat: no-repeat;
        padding: 250px;
        color: #fff;
        border-radius: 10px;
    }

     

 #aspnetTitle {
    color: white;
    font-size: 30px;
    font-weight: bold;
    text-align: center;
    text-transform: uppercase;
}


.about-section h1 {
    text-align: center; 
}

.about-section p {
    text-align: center; 
    font-size: 18px; 
    margin: 10px 0;
    color: seagreen ;
    font-weight: bold;


}
   
   
</style>

    <main>
   <section class="row about-section" aria-labelledby="aspnetTitle">
    <h1 id="aspnetTitle">Good day, Admin! </h1>
    <%--<p class="lead">Welcome to your one stop of Grocery and Everyday Items List.....</p>
       <p>"You hold the keys to our grocery empire. Let's keep the aisles stocked and the shopping carts rolling!"</p>
    <p>&nbsp;</p>--%>
       <p class="lead" style="color: white; font-family: 'Times New Roman', Times, serif;">Welcome to your one-stop Grocery and Everyday Items List.....</p>
<p style="color: white; font-family: 'Times New Roman', Times, serif;">"You hold the keys to our grocery empire. Let's keep the aisles stocked and the shopping carts rolling!"</p>
<p>&nbsp;</p>




</section>

    </main>   
    
</asp:Content>

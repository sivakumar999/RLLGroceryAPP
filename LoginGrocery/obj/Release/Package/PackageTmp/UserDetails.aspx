<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="LoginGrocery.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <style>
        body {
            background-image: url('https://images.unsplash.com/photo-1603380381196-148729a0c8e4?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhYmxlcyUyMGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        </style>

     <div class="container">
       <div class ="row">
           <div class ="col-md-8 mx-auto">
               <br>
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img src="Images/UserLogin.png" /width="130" height="130">
                                   

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>User Details</h3>

                               </center>
                           </div>
                       </div>                      

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col-md-6">
                              <label>First Name</label>
                               <div class="form-group">
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Last Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>

                               </div>
                           </div>
                       </div>
                       

                       <div class ="row">
                           <div class="col-md-6">
                              <label>Email ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email ID"></asp:TextBox>
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Contact Number</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                               </div>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               

                               <label>Date of Birth</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Dob" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                               </div>
                               

                              


                               <label>User ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server" placeholder="User ID"></asp:TextBox>
                               </div>
                               

                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                          
                                  
                                    &nbsp;       </div>
                               

                          
                         </div>
       </div>
       </div>
       </div>
</div>
</div>
</div>
</asp:Content>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="LoginGrocery.Buyer.WebForm1" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>WelcomeTo Dashboard</h3>
    <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label>
</asp:Content>--%>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="WelcomeLabel" runat="server" Text=""></asp:Label>
   
    <div class="body">

        <h2>Welcome To Dashboard!</h2>

        <div class ="hcard">

        </div>
        <br />
   

        <div class="cards1">
            <div class="card1">


                <h2>Categories</h2>
<div class="cards">
    <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-2_10.png');">
        <p>Up to 25% off</p>
    </div>
    <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-10.png');">
        <p1>Up to 25% off</p1>
    </div>
    <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-6_5.png');">
        <p>Up to 25% off</p>
    </div>
    <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-11.png');">
        <p1>Up to 35% off</p1>
    </div>
    <div class="card"style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-3_9.png');">
        <p1>Up to 20% off</p1>
    </div>
    <div class="card"style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-7_3.png');">
        <p1>Up to 25% off</p1>
    </div>
</div>
            </div>
        </div>
        
      
        <div class="cards">
            <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-5_4.png');">
                <p>Up to 25% off</p>
            </div>
            <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-13.png');">
                <p1>Up to 25% off</p1>
            </div>
            <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-15.png');">
                <p>Up to 25% off</p>
            </div>
            <div class="card" style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-8_4.png');">
                <p1>Up to 35% off</p1>
            </div>
            <div class="card"style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-17.png');">
                <p1>Up to 20% off</p1>
            </div>
            <div class="card"style="background-image: url('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=270/layout-engine/2022-11/Slice-18.png');">
                <p1>Up to 25% off</p1>
            </div>
        </div>
    </div>
    <style>
    /* Header Styles */
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #3e4a61;
    padding: 20px;
    color: #fff;
}

.logo img {
    width: 150px; /* Adjust the size as needed */
}

.login button {
    background-color: #ff6600;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s;
}

.login button:hover {
    background-color: #e65500; /* Darker shade on hover */
}

/* Body Styles */
.body {
    padding: 20px;
}

.cards1 {
    display: flex;
    justify-content: center;
    align-items: center;
  }

.cards {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .hcard {
    background-image: url('https://images.freekaamaal.com/post_images/1571808535.png');
    background-position: 0%;

    background-size:cover;
    height: 300px;
    margin:0 auto;
    width: 1250px;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
    padding:0px;
    margin: 20px;
   
    text-align:left;
    box-shadow: 2px 2px 7px gray;
    cursor: pointer;
}
 
.card {
    background-position: 0%;
    background-size:cover;
    height: 250px;
    width: 200px;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
    padding: 20px;
    margin: 10px;
    text-align: center;
    transition: transform 0.3s;
    box-shadow: 2px 2px 7px gray;
    cursor: pointer;
}


.card:hover {
    transform: scale(1.05); /* Slightly scale up on hover */
}

.card h2 {
    font-size: 20px;
    margin: 10px 0;
}

.card p {
    color: black;
}

.card p1 {
    color: black;
}

/* Card Styles for Categories */
.categories {
    width: 100%; /* Full width for category cards */
    margin: 0;
}

.categories .card {
    width: calc(25% - 20px); /* Adjust the width for category cards */
}

/* Footer Styles */
footer {
    display: flex;
    justify-content: space-between;
    padding: 20px;
    background-color:seagreen;
    color: #fff;
    flex-wrap: wrap;
}

.useful-links, .categories {
    flex: 1;
}

.column {
    font-size: 15px;
    width: 30%; /* Adjust the width for three columns */
    display: inline-block;
    vertical-align: top;
    padding: 0 20px;
    box-sizing: border-box;
}

.ccolumn {
    font-size: 15px;
    width: 45%; /* Adjust the width for three columns */
    display: inline-block;
    vertical-align: top;
    padding: 0 20px;
    box-sizing: border-box;
}

.useful-links ul,.categories ul {
    list-style: none;
    
  }

.useful-links h3, .categories h3 {
    font-size: 20px;
    margin: 10px 0;
    font-weight: bold;
    text-transform: uppercase;
}

.foot p{
    text-align: center;
}
        </style>

    <footer>
        <div class="useful-links">
            <h3>Useful Links</h3>
            <div class="column">
                <ul>
                    <li>About</li>
                    <li>Careers</li>
                    <li>Blog</li>
                    <li>Press</li>
                    <li>Lead</li>
                    <li>Value</li>
                </ul>
            </div>
            <div class="column">
                <ul>
                    <li>Terms</li>
                    <li>Privacy</li>
                    <li>FAQs</li>
                    <li>Security</li>
                    <li>Mobile</li>
                    <li>Contact</li>
                </ul>
            </div>
            <div class="column">
                <ul>
                    <li>Partner</li>
                    <li>Express</li>
                    <li>Seller</li>
                    <li>Spotlight</li>
                    <li>Warehouse</li>
                    <li>Deliver</li>
                </ul>
            </div>
        </div>
        <div class="categories">
            <h3>Categories</h3>
            <div class="ccolumn">
                <ul>
                    <li>Vegetables & Fruits</li>
                    <li>Dairy & Breakfast</li>
                    <li>Munchies</li>
                    <li>Cold Drinks & Juices</li>
                    <li>Instant & Frozen Food</li>
                    <li>Tea, Coffee & Health Drinks</li>
                    <li>Bakery & Biscuits</li>
                    <li>Sweet Tooth</li>
                    <li>Atta, Rice & Dal</li>
                    <li>Dry Fruits, Masala & Oil</li>
                </ul>
            </div>
            <div class="ccolumn">
                <ul>
                    <li>Sauces & Spreads</li>
                    <li>Chicken, Meat & Fish</li>
                    <li>Organic & Premium</li>
                    <li>Cleaning Essentials</li>
                    <li>Beauty & Cosmetics</li>
                    <li>Personal Care</li>
                    <li>Ice Creams & Frozen Desserts</li>
                    <li>Toys & Games</li>
                </ul>
            </div>
        </div>
        <div class="foot">
            <p>Thank you for choosing ToZepy for your grocery shopping needs! We're committed to making your life easier and your kitchen better stocked. If you have any questions, suggestions, or feedback, please don't hesitate to reach out. Happy shopping!</p>
            <p>&copy; 2023 ToZepy. All rights reserved.</p>
        </div>
        </footer>
   </asp:Content>



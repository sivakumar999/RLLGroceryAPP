<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LoginGrocery.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        body {
            background-image: url('https://img.freepik.com/free-photo/top-view-vegetables-fruits-bag_23-2148949707.jpg?w=1380&t=st=1697963707~exp=1697964307~hmac=801c62f1c225a461edfbbb6175ecbf7cf2d9bef1e2262afb3b1fad42d69c7477');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="body">
        <div class="cards1">
            <div class="card1">
            </div>
        </div>
        
        <h2>Must-Try This Week</h2>
         <div class="cards">
     <div class="card" style="background-image: url('https://img.freepik.com/free-photo/fresh-healthy-fruits-straw-basket-generative-ai_188544-11999.jpg?size=626&ext=jpg&ga=GA1.1.1710634175.1696222511&semt=sph');">
         <p1><h2>Exotic delights for you</h2></p1>
         <p1>Up to 25% off</p1>
     </div>
     <div class="card" style="background-image: url('https://cdn.shopaccino.com/refresh/articles/asre-906919_l.jpg');">
         <p1><h2>Whole spices</h2></p1>
         <p1>Up to 25% off</p1>
     </div>
     <div class="card" style="background-image: url('https://img.freepik.com/free-photo/raw-chicken-thighs-dark-wooden-surface_1150-43945.jpg?size=626&ext=jpg&ga=GA1.1.1710634175.1696222511&semt=ais');">
        <p1> <h2>Protein- must-haves</h2></p1>
         <p1>Up to 25% off</p1>
     </div>
     <div class="card" style="background-image: url('https://img.freepik.com/free-photo/abstract-shot-bathroom-items-concept-hygiene_181624-47889.jpg?size=626&ext=jpg&ga=GA1.1.1710634175.1696222511&semt=ais');">
         <p1><h2>Confident smiles start here</h2></p1>
         <p1>Up to 35% off</p1>
     </div>
     <div class="card"style="background-image: url('https://img.freepik.com/free-photo/soybean-oil-soybean-food-beverage-products-food-nutrition-concept_1150-26352.jpg?size=626&ext=jpg&ga=GA1.1.1710634175.1696222511&semt=ais');">
         <p1><h2>Healthy oil & ghee</h2></p1>
         <p1>Up to 20% off</p1>
     </div>
     <div class="card"style="background-image: url('https://img.freepik.com/free-photo/sack-rice-seed-with-white-rice-small-wooden-spoon-rice-plant_1150-35744.jpg?size=626&ext=jpg&ga=GA1.1.1710634175.1696222511&semt=ais');">
         <p1><h2>Rice & wheat</h2></p1>
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

  .card1 {
    background-image: url('https://www.cartly.ca/cdn/shop/files/Everyday_Specials_-_Banner_2000x.jpg?v=1633107773');
    background-position: 0%;
    background-size:cover;
    height: 250px;
    width: 1000px;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
    padding: 10px;
    margin: 20px;
    text-align: center;
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
    color: #666;
}

.card p1 {
    color: #ffffff;
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
    color: white;
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

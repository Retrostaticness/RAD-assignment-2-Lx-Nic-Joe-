<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Chapter33.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Menu - Chapter33 Café</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .menu-item {
            margin-bottom: 40px;
        }
        .menu-item img {
            width: 100%;
            border-radius: 5px;
        }
        .menu-item .item-info {
            padding: 15px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
        }
        .menu-item h3 {
            margin-top: 10px;
            color: #654321;
        }
        .menu-item p {
            margin-bottom: 5px;
            color: #333;
        }
        .navbar {
            background-color: #654321;
        }
        .navbar-dark .navbar-nav .nav-link {
            color: #fff !important;
        }
        .custom-order-section {
            margin-top: 50px;
            text-align: center;
        }
        .custom-order-section img {
            width: 100%;
            max-width: 400px;
            margin-bottom: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="Default.aspx">Chapter33</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="Menu.aspx">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Login.aspx">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Cart.aspx">View Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AboutUs.aspx">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-4">
            <h2>Food Items</h2>
            <hr />
            <div class="row">
                <asp:Repeater ID="rptFoodItems" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 menu-item">
                            <div>
                                <img src='<%# Eval("ImagePath") %>' alt='<%# Eval("Name") %>' class="img-fluid" />
                            </div>
                            <div class="item-info">
                                <h3><%# Eval("Name") %></h3>
                                <p><%# Eval("Description") %></p>
                                <p class="text-muted">Price: $<%# Eval("Price") %></p>
                                <asp:Button ID="btnAddToCartFood" runat="server" Text="Add to Cart" CssClass="btn btn-primary" CommandArgument='<%# Eval("Name") + "," + Eval("Price") + "," + Eval("Description") + "," + Eval("ImagePath") %>' OnCommand="AddToCart_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <h2 class="mt-5">Drink Items</h2>
            <hr />
            <div class="row">
                <asp:Repeater ID="rptDrinkItems" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 menu-item">
                            <div>
                                <img src='<%# Eval("ImagePath") %>' alt='<%# Eval("Name") %>' class="img-fluid" />
                            </div>
                            <div class="item-info">
                                <h3><%# Eval("Name") %></h3>
                                <p><%# Eval("Description") %></p>
                                <p class="text-muted">Price: $<%# Eval("Price") %></p>
                                <asp:Button ID="btnAddToCartDrink" runat="server" Text="Add to Cart" CssClass="btn btn-primary" CommandArgument='<%# Eval("Name") + "," + Eval("Price") + "," + Eval("Description") + "," + Eval("ImagePath") %>' OnCommand="AddToCart_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="custom-order-section">
                <img src="images/custom-order.jpg" alt="Custom Order" class="img-fluid" />
                <asp:Button ID="btnCustomOrder" runat="server" Text="Order Custom Coffee & Toasties" CssClass="btn btn-secondary" OnClick="btnCustomOrder_Click" />
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

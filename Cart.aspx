<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Chapter33.Cart" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>View Cart - Chapter33 Café</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Custom styles for View Cart */
        .cart-item {
            margin-bottom: 20px;
        }
        .cart-item img {
            width: 100px; /* Adjust image size as needed */
            border-radius: 5px;
        }
        .cart-item .item-details {
            padding: 10px;
        }
        .cart-item .item-details h4 {
            margin-top: 0;
            color: #654321; /* Brown color for item name */
        }
        .cart-item .item-details p {
            margin-bottom: 5px;
        }
        .cart-total {
            text-align: right;
            margin-top: 20px;
        }
        .navbar {
            background-color: #654321; /* Brown background for navbar */
        }
        .navbar-dark .navbar-nav .nav-link {
            color: #fff !important; /* White color for navbar links */
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
                            <a class="nav-link" href="Menu.aspx">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Login.aspx">Login</a>
                        </li>
                        <li class="nav-item active">
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
            <h2>Shopping Cart</h2>
            <hr />
            <asp:Repeater ID="rptCartItems" runat="server">
                <ItemTemplate>
                    <div class="card cart-item">
                        <div class="row no-gutters">
                            <div class="col-md-3">
                                <img src='<%# Eval("ImagePath") %>' class="card-img" alt='<%# Eval("ItemName") %>' />
                            </div>
                            <div class="col-md-7">
                                <div class="card-body item-details">
                                    <h4 class="card-title"><%# Eval("ItemName") %></h4>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <p class="card-text">Price: $<%# Eval("Price") %></p>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <asp:Button runat="server" CommandArgument='<%# Eval("CartID") %>' OnClick="DeleteCartItem_Click" Text="Delete" CssClass="btn btn-danger btn-sm" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="cart-total">
                <h4>Total: $<asp:Label ID="lblTotal" runat="server" Text="0.00"></asp:Label></h4>
                <a href="Checkout.aspx" class="btn btn-primary">Proceed to Checkout</a>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

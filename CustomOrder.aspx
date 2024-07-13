<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomOrder.aspx.cs" Inherits="Chapter33.CustomOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Custom Order - Chapter33 Café</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: url('your-background-image.jpg') no-repeat center center fixed; 
            background-size: cover;
        }
        .custom-order {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
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

        <div class="container custom-order">
            <h2>Customize Your Coffee & Toasties</h2>
            <hr />
            <div class="form-group">
                <label for="coffeeTypeDropDown">Coffee Type</label>
                <asp:DropDownList ID="coffeeTypeDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Espresso</asp:ListItem>
                    <asp:ListItem>Latte</asp:ListItem>
                    <asp:ListItem>Cappuccino</asp:ListItem>
                    <asp:ListItem>Americano</asp:ListItem>
                    <asp:ListItem>Mocha</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="milkTypeDropDown">Milk Type</label>
                <asp:DropDownList ID="milkTypeDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Whole Milk</asp:ListItem>
                    <asp:ListItem>Soy Milk</asp:ListItem>
                    <asp:ListItem>Almond Milk</asp:ListItem>
                    <asp:ListItem>Oat Milk</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="sweetenerDropDown">Sweetener</label>
                <asp:DropDownList ID="sweetenerDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Sugar</asp:ListItem>
                    <asp:ListItem>Honey</asp:ListItem>
                    <asp:ListItem>Stevia</asp:ListItem>
                    <asp:ListItem>No Sweetener</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="toastieFillingDropDown">Toastie Filling</label>
                <asp:DropDownList ID="toastieFillingDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>Cheese</asp:ListItem>
                    <asp:ListItem>Ham</asp:ListItem>
                    <asp:ListItem>Tomato</asp:ListItem>
                    <asp:ListItem>Chicken</asp:ListItem>
                    <asp:ListItem>Veggie</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnAddCustomOrder" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="btnAddCustomOrder_Click" />
            <asp:Label ID="lblCustomOrderMessage" runat="server" CssClass="text-success" Visible="false" Text="Custom order added to cart successfully!"></asp:Label>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                setTimeout(function () {
                    $('#<%= lblCustomOrderMessage.ClientID %>').fadeOut('slow');
                }, 1000); // 1 second
            });
        </script>
    </form>
</body>
</html>

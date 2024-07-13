<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Chapter33.AboutUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>About Us - Chapter33 Café</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('images/aboutus.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .about-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 30px;
            margin-top: 50px;
        }
        .navbar {
            background-color: #654321;
        }
        .navbar-dark .navbar-nav .nav-link {
            color: #fff !important;
        }
        h1, h2, p {
            color: #333;
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
                            <a class="nav-link active" href="AboutUs.aspx">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container about-container">
            <h1>About Us</h1>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <h2>Our Story</h2>
                    <p>
                        Welcome to Chapter33 Café! We are a locally owned café located in Penang. Our journey started in 2022 with a passion for creating the best coffee and a cozy place for people to relaxzz. We have grown and become an established favorite spot for many coffee enthusiasts and food lovers.
                    </p>
                </div>
                <div class="col-md-6">
                    <h2>Our Mission</h2>
                    <p>
                        Our mission is to provide coffee yang terbaik dalam Malaysia and delicious food in a welcoming and friendly environment. We believe in sustainability and source our coffee beans from fair trade suppliers. Our menu is crafted with love, using fresh and locally sourced ingredients to ensure the best taste and quality.
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <h2>Meet Our Team</h2>
                    <p>
                        Our team is made up of passionate and dedicated individuals who will do anything to make your experience at Chapter33 Cafe enjoyable and memorable. From our skilled baristas to our friendly staff, we are all here to serve you with a smile.
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <h2>Contact Us</h2>
                    <p>If you have any questions, comments, or just want to say hi, feel free to reach out to us. We'd love to hear from you!</p>
                    <p><strong>Address:</strong> INTI, Bayan Lepas, 11920, Pulau Pinang</p>
                    <p><strong>Phone:</strong> 013-515 3880</p>
                    <p><strong>Email:</strong> <a href="mailto:info@chapter33cafe.com">info@chapter33cafe.com</a></p>
                    <p><strong>Follow Us:</strong>
                        <a href="https://facebook.com" target="_blank">Facebook</a> |
                        <a href="https://twitter.com" target="_blank">Twitter</a> |
                        <a href="https://instagram.com" target="_blank">Instagram</a>
                    </p>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

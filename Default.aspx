<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chapter33.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Chapter33 Café</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Adjust navbar styles */
        .navbar {
            background-color: #654321; /* Navbar background color */
        }
        .navbar-brand,
        .navbar-nav .nav-link {
            color: #fff !important; /* Navbar brand and link color */
        }
        .navbar-nav {
            margin-left: auto; /* Align navbar items to the right */
        }

        /* Adjust styles for carousel */
        .carousel-item {
            height: 60vh; /* Set carousel item height */
            background-size: cover; /* Ensure the background image covers the entire item */
            background-position: center; /* Center-align the background image */
            text-align: center; /* Center-align text content */
        }
        .carousel-caption {
            position: absolute; /* Position absolute for overlaying content */
            bottom: 2rem; /* Position at the bottom */
            left: 50%; /* Center horizontally */
            transform: translateX(-50%); /* Adjust for horizontal centering */
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 15px; /* Padding for caption */
            border-radius: 5px; /* Rounded corners */
            color: #fff; /* Text color */
        }
        .carousel-caption h1 {
            font-size: 2.5rem; /* Adjust heading font size */
        }
        .carousel-caption p {
            font-size: 1.2rem; /* Adjust paragraph font size */
            margin-bottom: 0; /* Remove default margin */
        }
        .carousel-buttons .btn {
            margin-top: 20px; /* Add space between buttons */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="Default.aspx">Chapter33</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
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

        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" style="background-image: url('images/slide1.jpg');">
                    <div class="carousel-caption">
                        <h1>Welcome to Chapter33 Café</h1>
                        <p>Discover our delicious coffee and toasties</p>
                        <a href="Menu.aspx" class="btn btn-primary">Order Now</a>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url('images/slide2.jpg');">
                    <div class="carousel-caption">
                        <h1>Join Us!</h1>
                        <p>Haven't made an account yet?</p>
                        <a href="Login.aspx" class="btn btn-success">Join Us</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customize.aspx.cs" Inherits="Chapter33.Customize" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Customize Your Order</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Customize Your Coffee</h2>
            <!-- Coffee customization options -->
            <div class="form-group">
                <label for="ddlCoffeeType">Coffee Type</label>
                <asp:DropDownList ID="ddlCoffeeType" runat="server" CssClass="form-control">
                    <asp:ListItem>Espresso</asp:ListItem>
                    <asp:ListItem>Latte</asp:ListItem>
                    <asp:ListItem>Cappuccino</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="ddlSize">Size</label>
                <asp:DropDownList ID="ddlSize" runat="server" CssClass="form-control">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Medium</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                </asp:DropDownList>
            </div>

            <h2>Customize Your Toastie</h2>
            <!-- Toastie customization options -->
            <div class="form-group">
                <label for="ddlToastieType">Toastie Type</label>
                <asp:DropDownList ID="ddlToastieType" runat="server" CssClass="form-control">
                    <asp:ListItem>Cheese</asp:ListItem>
                    <asp:ListItem>Ham</asp:ListItem>
                    <asp:ListItem>Veggie</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="btnAddToCart_Click" />
            </div>
        </div>
    </form>
</body>
</html>

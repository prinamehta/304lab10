<!DOCTYPE html>
<html>
<head>
    <title>Glam & Glow Main Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h1 {
            color: #4caf50;
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            color: white;
            background-color: #4caf50;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            margin: 10px 0;
            display: inline-block;
        }
        a:hover {
            background-color: #45a049;
        }
        .menu {
            display: flex;
            flex-direction: column;
            gap: 10px;
            align-items: center;
            margin-top: 20px;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <h1>Welcome to Glam & Glow</h1>

    <div class="menu">
        <a href="login.jsp">Login</a>
        <a href="listprod.jsp">Begin Shopping</a>
        <a href="listorder.jsp">List All Orders</a>
        <a href="customer.jsp">Customer Info</a>
        <a href="admin.jsp">Administrators</a>
        <a href="logout.jsp">Log out</a>
        <a href="signup.jsp">Create Account</a>
        <a href="editAccount.jsp">Edit Account Info</a>
    </div>

    <%
        String userName = (String) session.getAttribute("authenticatedUser");
        if (userName != null) {
    %>
        <div class="footer">
            <h3>Signed in as: <%= userName %></h3>
        </div>
    <%
        }
    %>
</body>
</html>
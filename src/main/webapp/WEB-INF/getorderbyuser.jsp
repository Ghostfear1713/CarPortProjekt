<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Orders</title>
    <!-- Add Bootstrap CSS CDN link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 style="text-align: center">View orders</h1>
    <table class="table">

        <form class="example" action="result.jsp" method="POST">
            <input type="hidden" name="searchFunction" value="<%= User.getUsername() %>">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

        <%@ page import="java.io.*, java.util.*, javax.servlet.*" %>
        <%@ page import="javax.servlet.http.*" %>
        <%@ page import="dat.backend.model.entities.User" %>


        <thead>
        <tr>
            <th>Order ID</th>
            <th>Username</th>
            <th>Carport Længde</th>
            <th>Carport Bredde</th>
            <th>Carport Tag</th>
            <th>Redskabsrum Bredde</th>
            <th>Redskabsrum Længde</th>
            <th>Total Pris</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>

        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://64.226.64.92:3306/carport", "dev", "3r!DE32*/fDe");
                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM orders WHERE username = '?'");

                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
        %>

        <tr>
            <td><%= rs.getInt("id_orders") %></td>
            <td><%= rs.getString("username") %></td>
            <td><%= rs.getString("carlength") %></td>
            <td><%= rs.getInt("carwidth") %></td>
            <td><%= rs.getString("carroof") %></td>
            <td><%= rs.getString("redwidth") %></td>
            <td><%= rs.getString("redlength") %></td>
            <td><%= rs.getString("total_amount") %></td>
            <td><%= rs.getString("status") %></td>
        </tr>


        <%
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div>
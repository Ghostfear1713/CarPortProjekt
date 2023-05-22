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
    <form method="post">
    <table class="table">
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
            <th></th>
        </tr>
        </thead>
        <tbody>

        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://64.226.64.92:3306/carport", "dev", "3r!DE32*/fDe");
                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM orders");
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
            <td><button type="submit" formaction="viewitemlist">Vis stykliste</button></td>
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
    </form>
</div>

<!-- Add Bootstrap JS CDN link -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
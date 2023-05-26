<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <c:forEach var="item" items="${requestScope.orders}">

        <tr>
            <td>${item.id}</td>
            <td>${item.navn}</td>
            <td>${item.længde}</td>
            <td>${item.bredde}</td>
            <td>${item.tag}</td>
            <td>${item.redbredde}</td>
            <td>${item.redlength}</td>
            <td>${item.amount}</td>
            <td>${item.status}</td>
            <td><button type="submit" name="id" value='${item.id}' formaction="viewitemlist">Vis stykliste</button></td>
        </tr>
        </c:forEach>

        </tbody>
    </table>
    </form>
</div>

<!-- Add Bootstrap JS CDN link -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
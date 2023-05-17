<%--
  Created by IntelliJ IDEA.
  User: martinthuren
  Date: 16/05/2023
  Time: 23.39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page import="dat.backend.model.persistence.ConnectionPool" %>
<%@ page import="dat.backend.model.config.ApplicationStart" %>
<%@ page import="dat.backend.model.entities.OrderForm" %>
<%@ page import="java.util.List" %>
<%@ page import="dat.backend.model.persistence.OrderFacade" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<HTML>
<HEAD>
    <TITLE>VIEW ALL ORDERS</TITLE>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</HEAD>
<body class="bg-light" bgcolor="#ffc0cb">
<center><H1>VIEW ALL ORDERS </H1></center>
    <%
    // Get the connection pool object from ApplicationStart
    ConnectionPool connectionPool = ApplicationStart.getConnectionPool();
    Connection connection = connectionPool.getConnection();
    Statement statement = connection.createStatement();
    ResultSet resultset = statement.executeQuery("SELECT * FROM orders");

    // Create an instance of OrderFacade
    OrderFacade orderFacade = new OrderFacade();

    // Invoke the getAllOrders method to retrieve the data
    List<OrderForm> orderList = orderFacade.getAllOrders(connectionPool);

    // Check if the orderList is null or empty
    if (orderList != null && !orderList.isEmpty()) {
%>

<table class="table table-striped" width="80%">
    <%-- Iterate over the orderList and display the data in the table --%>
    <%
        for (OrderForm order : orderList) {
    %>
    <tr>
        <td><%= order.getLængde() %></td>
        <td><%= order.getBredde() %></td>
        <td><%= order.getTag() %></td>
        <td><%= order.getRedbredde() %></td>
        <td><%= order.getRedlength() %></td>
        <td><%= order.getAmount() %></td>
        <td>
            <form method="post" action="remove_order">
                <input type="hidden" name="orderID" value="<%= order.getTag() %>">
                <button type="submit" class="btn btn-danger">Remove</button>
            </form>
        </td>
    </tr>
    <% } %>
</table>

    <%
    } else {
        // Handle the case when orderList is null or empty
        System.out.println("<p>No orders found.</p>");
    }
%>
</HTML>

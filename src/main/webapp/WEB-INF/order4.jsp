<%@ page import="dat.backend.model.entities.OrderForm" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>
<%@ page session="true" %>

<t:pagetemplateorder>

  <jsp:body>

      <%
          //henter sessionscope
          request.getSession();
          OrderForm orderForm = (OrderForm) session.getAttribute("orderForm");

          //er der noget i OrderForm?
          if (orderForm != null) {

              //der skal arbejdes videre på den, ved ikke hvorfor den
              // kommer med errorbesked, tror ikke det bliver gemt rigtigt ned :(
      %>
      <h1>Opsummering og detaljer af din ordre:</h1>
      <p>Længde: <%= orderForm.getLængde() %></p>
      <p>Bredde: <%= orderForm.getBredde() %></p>
      <p>Tag: <%= orderForm.getTag() %></p>
      <p>Redskabsrum Længde: <%= orderForm.getRedlength() %></p>
      <p>Redskabsrum Bredde: <%= orderForm.getRedbredde() %></p>
      <%
          }
      %>


  </jsp:body>

</t:pagetemplateorder>
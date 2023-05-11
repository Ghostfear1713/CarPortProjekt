<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>
<%@ page session="true" %>

<t:pagetemplateorder>

  <jsp:body>

      <p>Dine valgte mål</p>
      <h2>Bredde: <%= session.getAttribute("length") %></h2>


  </jsp:body>

</t:pagetemplateorder>
<%@ page import="dat.backend.model.entities.OrderForm" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>
<%@ page session="true" %>

<t:pagetemplateorder>

  <jsp:body>


      <h1>Opsummering og detaljer af din ordre:</h1>
      <p>Længde: ${sessionScope.orderForm.længde}</p>
      <p>Bredde: ${sessionScope.orderForm.bredde}</p>
      <p>Tag: ${sessionScope.orderForm.tag}</p>
      <p>Redskabsrum Længde: ${sessionScope.orderForm.redlength}</p>
      <p>Redskabsrum Bredde: ${sessionScope.orderForm.redbredde}</p>



  </jsp:body>

</t:pagetemplateorder>
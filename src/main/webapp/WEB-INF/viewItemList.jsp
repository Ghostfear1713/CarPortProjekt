<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<t:pagetemplate>

    <jsp:attribute name="header">
         Vis stykliste
    </jsp:attribute>

    <jsp:body>

        <table>
            <thead>
            <tr>
                <th>Beskrivelse</th>
                <th>Længde</th>
                <th>Antal</th>
                <th>Enhed</th>
                <th>Beskrivelse</th>
            </tr>
            </thead>
        <c:forEach var="item" items="${requestScope.itemList.itemList}">
            <tr>
                <td>${item.materialDescription}</td>
                <td>${item.length}</td>
                <td>${item.quantity}</td>
                <td>${item.unit}</td>
                <td>${item.guidanceDescription}</td>
            </tr>

        </c:forEach>

        </table>

        <br><p>Samlet pris: ${requestScope.itemList.totalPrice},- kr</p>

    </jsp:body>
</t:pagetemplate>

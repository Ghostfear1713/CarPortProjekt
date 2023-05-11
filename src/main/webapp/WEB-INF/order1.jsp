<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>

    <jsp:body>


        <!-- Step 1: Definer mål -->
        <p class="text">Definer mål</p>
        <h2 class="center">Vælg dine mål for din carport</h2>
        <form method="POST" class="center">

            <%--@declare id="bredde"--%><%--@declare id="længde"--%><%--@declare id="tag"--%><label for="bredde">Carport bredde*</label><br>
            <SELECT name="bredde">
                <OPTION Value="240">240 cm</OPTION>
                <OPTION Value="270">270 cm</OPTION>
                <OPTION Value="300">300 cm</OPTION>
                <OPTION Value="330">330 cm</OPTION>
                <OPTION Value="360">360 cm</OPTION>
                <OPTION Value="390">390 cm</OPTION>
                <OPTION Value="420">420 cm</OPTION>
                <OPTION Value="450">450 cm</OPTION>
                <OPTION Value="480">480 cm</OPTION>
                <OPTION Value="510">510 cm</OPTION>
                <OPTION Value="540">540 cm</OPTION>
                <OPTION Value="570">570 cm</OPTION>
                <OPTION Value="600">600 cm</OPTION>
            </SELECT>
            <br><br>

                <label for="længde">Carport længde*</label><br>
                <SELECT name="length">
                    <c:forEach var="length" begin="240" end="780" step="30">
                         <OPTION
                                 <c:if test="${length == sessionScope.orderForm.længde}">
                                     selected
                                 </c:if>
                                 value=${length}>${length} cm</OPTION>
                    </c:forEach>
            </SELECT>
            <br><br>

                <label for="tag">Carport trapeztag*</label><br>
                <select name="tag">
                    <option value="u-tagplader">Uden tagplader</option>
                    <option
                            <c:if test="${sessionScope.orderForm.tag.equals('plast-plader')}">
                                selected
                            </c:if>
                            value="plast-plader">Plasttrapezplader</option>
                </select>
                <br><br>
                ${sessionScope.orderForm.tag}

                <button formaction="order?step=2" type="submit">Næste</button>
                <button formaction="order?step=3" type="submit">Til 3</button>
        </form>

    </jsp:body>

</t:pagetemplateorder>
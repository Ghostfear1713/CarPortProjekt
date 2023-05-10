<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

    <jsp:body>

        <!-- Step 1: Definer mål -->
        <p>Definer mål</p>
        <h2>Vælg dine mål for din carport</h2>
        <form action="order?step=2" method="POST">
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
                <SELECT name="længde">
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
                <OPTION Value="630">630 cm</OPTION>
                <OPTION Value="660">660 cm</OPTION>
                <OPTION Value="690">690 cm</OPTION>
                <OPTION Value="720">720 cm</OPTION>
                <OPTION Value="750">750 cm</OPTION>
                <OPTION Value="780">780 cm</OPTION>
            </SELECT>
            <br><br>

                <label for="tag">Carport trapeztag*</label><br>
                <select name="tag">
                    <option value="u-tagplader">Uden tagplader</option>
                    <option value="plast-plader">Plasttrapezplader</option>
                </select>
                <br><br>
                <button type="submit">Næste</button>
        </form>

    </jsp:body>

</t:pagetemplateorder>
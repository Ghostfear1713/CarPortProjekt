<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>

  <jsp:body>

    <!-- Step 2: Ekstra tilføjelser -->
    <p>Ekstra tilføjelser</p>
    <h2>Vælg ekstra tilføjelser her</h2>
    <p>Redskabsrum</p>
    <p>NB! Der skal beregnes 15 cm tagudhæng på hver side af redskabsrummet*</p>

    <form method="POST" action="order">
      <input type="hidden" name="step" value="3">
        <%--@declare id="redbredde"--%><%--@declare id="redlængde"--%><label for="redbredde">Redskabsrum bredde*</label><br>
      <SELECT name="redbredde">
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
      </SELECT><br><br>

      <label for="redlængde">Redskabsrum længde*</label><br>
      <SELECT name="redlængde">
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
      </SELECT><br><br>

      <textarea name="comment" form="beware">Evt bemærkninger/særlige ønsker</textarea><br><br>

      <button type="submit" formaction="order?step=1">Tilbage</button>
      <button type="submit" formaction="order?step=3">Næste</button>
    </form>


  </jsp:body>

</t:pagetemplateorder>
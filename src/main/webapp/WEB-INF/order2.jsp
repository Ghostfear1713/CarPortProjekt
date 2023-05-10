<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

  <jsp:body>

    <!-- Step 2: Ekstra tilføjelser -->
    <p>Ekstra tilføjelser</p>
    <h2>Vælg ekstra tilføjelser her</h2>
    <p>Redskabsrum</p>
    <p>NB! Der skal beregnes 15 cm tagudhæng på hver side af redskabsrummet*</p>

    <label for="længde">Redskabsrum bredde*</label><br>
    <SELECT>
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

    <label for="længde">Redskabsrum længde*</label><br>
    <SELECT>
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

    <form action="/action_page.php" id="beware">

    </form>

    <textarea name="comment" form="beware">Evt bemærkninger/særlige ønsker</textarea><br><br>

    <button type="button" onclick="prevStep()">Tilbage</button>
    <button type="button" onclick="nextStep()">Næste</button>
    </form>

  </jsp:body>

</t:pagetemplateorder>
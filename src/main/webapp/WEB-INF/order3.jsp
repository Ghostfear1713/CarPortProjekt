<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

  <jsp:body>

    <!-- Step 3: Kontaktoplysninger -->
    <p>Kontaktoplysninger</p>
    <h2>Skriv dine kontaktoplysninger her</h2>
    <form method="POST">
    <input type="hidden" name="step" value="2">
    <label for="name">Navn:</label><br>
    <input type="text" id="name" placeholder="Fornavn og efternavn" name="name"><br><br>

    <label for="adresse">Adresse:</label><br>
    <input type="adresse" id="adresse" placeholder="Adresse (vej + nummer)" name="email"><br><br>

    <label for="postnummer">Postnummer:</label><br>
    <input type="postnummer" id="postnummer" placeholder="Postnummer" name="postnummer"><br><br>

    <label for="by">By:</label><br>
    <input type="by" id="by" placeholder="Bynavn" name="by"><br><br>

    <label for="tlf">Telefon:</label><br>
    <input type="tlf" id="tlf" placeholder="Telefon nummer" name="tlf"><br><br>

    <label for="email">Email:</label><br>
    <input type="email" id="email" placeholder="Din email adresse" name="email"><br><br>

    <h5>Kontakt samtykke</h5>
    <INPUT TYPE="Checkbox" Name="kontakt" ID="C1" Value="kontakt">
    <LABEL FOR="C1">Fog må benytte de afgivne oplysninger til at kontakte mig i forbindelse med tilbud på QuickByg carport*</LABEL>
    <br><br>
    <button type="submit" formaction="order?step=2">Tilbage</button>
    <br><br>


  </jsp:body>

</t:pagetemplateorder>
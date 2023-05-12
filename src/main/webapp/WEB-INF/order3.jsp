<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>

  <jsp:body>

    <!-- Step 3: Kontaktoplysninger -->
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <h2 class="text-center mb-4">Kontaktoplysninger</h2>

          <form method="POST" action="order">
            <input type="hidden" name="step" value="4">

            <div class="form-group">
              <label for="name">Navn:</label>
              <input type="text" class="form-control" id="name" placeholder="Fornavn og efternavn" name="name" value="${sessionScope.orderForm.name}" required>
            </div>
            <div class="form-group">
              <label for="adresse">Adresse:</label>
              <input type="adresse" class="form-control" id="adresse" placeholder="Adresse (vej + nummer)" name="email" required>
            </div>
            <div class="form-group">
              <label for="postnummer">Postnummer:</label>
              <input type="postnummer" class="form-control" id="postnummer" placeholder="Postnummer" name="postnummer" required>
            </div>
            <div class="form-group">
              <label for="by">By:</label>
              <input type="by" class="form-control" id="by" placeholder="Bynavn" name="by" required>
            </div>
            <div class="form-group">
              <label for="tlf">Telefon:</label>
              <input type="tlf" class="form-control" id="tlf" placeholder="Telefon nummer" name="tlf" required>
            </div>
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Din email adresse" name="email" required>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="kontakt" name="kontakt" value="kontakt" required>
              <label class="form-check-label" for="kontakt">Fog må benytte de afgivne oplysninger til at kontakte mig i forbindelse med tilbud på QuickByg carport*</label>
            </div>
            <div class="text-center mt-4">

              <button type="submit" class="btn btn-primary mr-3" formaction="order?step=2">Tilbage</button>
              <button type="submit" class="btn btn-primary" formaction="order?step=4">Næste</button>

            </div>
          </form>
        </div>
      </div>
    </div>

  </jsp:body>

</t:pagetemplateorder>

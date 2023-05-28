<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>

  <jsp:body>

    <!-- Step 2: Ekstra tilføjelser -->
    <div class="container">
      <div class="row">
        <div class="col-md-12"><br>
          <p class="lead">Ekstra tilføjelser</p>
          <h2>Vælg ekstra tilføjelser her</h2>
          <p>Redskabsrum</p>
          <p class="text-muted">NB! Der skal beregnes 15 cm tagudhæng på hver side af redskabsrummet*</p>

          <form method="POST" action="order">
            <input type="hidden" name="step" value="3">

            <!-- jstl der gør at man gemmer carport bredden på sessionscope,
                så man kan gå tilbage til den givne side og så er oplysningerne gemt -->
            <div class="form-group">
              <label for="redbredde">Redskabsrum bredden*</label>
              <select class="form-control" name="redbredde">
                <option value="0" <c:if test="0 == sessionScope.orderForm.redbredde">selected</c:if>>0 cm</option>
                <c:forEach var="redbredde" begin="240" end="720" step="30">
                  <option <c:if test="${redbredde == sessionScope.orderForm.redbredde}">selected</c:if>
                          value="${redbredde}">${redbredde} cm</option>
                </c:forEach>
              </select>
            </div>

            <div class="form-group">
              <label for="redlength">Redskabsrum længde*</label>
              <select class="form-control" name="redlength">
                <option value="0" <c:if test="0 == sessionScope.orderForm.redlength">selected</c:if>>0 cm</option>
                <c:forEach var="redlength" begin="240" end="690" step="30">
                  <option <c:if test="${redlength == sessionScope.orderForm.redlength}">selected</c:if>
                          value="${redlength}">${redlength} cm</option>
                </c:forEach>
              </select>
            </div>


            <!--<textarea name="comment" form="beware">Evt bemærkninger/særlige ønsker</textarea><br><br>-->

            <button type="submit" class="btn btn-secondary" formaction="order?step=1">Tilbage</button>
            <button type="submit" class="btn btn-primary" formaction="order?step=3">Næste</button>
          </form>
        </div>
      </div>
    </div>

  </jsp:body>

</t:pagetemplateorder>

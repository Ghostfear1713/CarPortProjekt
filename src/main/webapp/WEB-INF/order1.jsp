<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplateorder>

<jsp:body>

    <div class="container mt-5">

        <!-- Step 1: Definer mål -->
        <p class="lead">Definer mål</p><br>
        <h2 class="text mb-4">Vælg dine mål for din carport</h2>
        <form method="POST" class="mx-auto">

                <%--@declare id="bredde"--%><%--@declare id="længde"--%><%--@declare id="tag"--%>

            <!-- jstl der gør at man gemmer carport bredden på sessionscope,
            så man kan gå tilbage til den givne side og så er oplysningerne gemt -->
            <div class="form-group">
                <label for="bredde">Carport bredden*</label>
                <select class="form-control" name="bredde">
                    <c:forEach var="bredde" begin="240" end="600" step="30">
                        <option
                                <c:if test="${bredde == sessionScope.orderForm.bredde}">
                                    selected
                                </c:if>
                                value=${bredde}>${bredde} cm</option>
                    </c:forEach>
                </select>
            </div>

            <!-- jstl der gør at man gemmer carport længden på sessionscope,
            så man kan gå tilbage til den givne side og så er oplysningerne gemt -->
            <div class="form-group">
                <label for="længde">Carport længde*</label>
                <select class="form-control" name="length">
                    <c:forEach var="length" begin="240" end="780" step="30">
                        <option
                                <c:if test="${length == sessionScope.orderForm.længde}">
                                    selected
                                </c:if>
                                value=${length}>${length} cm</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="tag">Carport trapeztag*</label>
                <select class="form-control" name="tag">
                    <option value="u-tagplader">Uden tagplader</option>
                    <option
                            <c:if test="${sessionScope.orderForm.tag.equals('plast-plader')}">
                                selected
                            </c:if>
                            value="plast-plader">Plasttrapezplader</option>
                </select>
            </div>

            <div class="form-group">
                <button class="btn btn-primary" formaction="order?step=2" type="submit">Næste</button>
            </div>
        </form>
    </div>
</jsp:body>
</t:pagetemplateorder>
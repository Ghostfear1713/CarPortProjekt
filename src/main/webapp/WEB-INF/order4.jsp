<%@ page import="dat.backend.model.entities.OrderForm" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>
<%@ page session="true" %>

<t:pagetemplateorder>
    <jsp:body>
        <form method="POST" action="order">
        <input type="hidden" name="step" value="5">
        <div class="container text-center">
            <h2 class="mb-4">Opsummering og detaljer af din ordre:</h2>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <h5 class="mb-4">Defineret mål for Carport</h5>
                    <ul class="list-unstyled">
                        <li><strong>Længde:</strong> ${sessionScope.orderForm.længde} cm</li>
                        <li><strong>Bredde:</strong> ${sessionScope.orderForm.bredde} cm</li>
                        <li><strong>Tag:</strong> ${sessionScope.orderForm.tag}</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5 class="mb-4">Ekstra tilføjelser til Carport</h5>
                    <ul class="list-unstyled">
                        <li><strong>Redskabsrum Længde:</strong> ${sessionScope.orderForm.redlength} cm</li>
                        <li><strong>Redskabsrum Bredde:</strong> ${sessionScope.orderForm.redbredde} cm</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5 class="mb-4">Kontaktoplysninger</h5>
                    <ul class="list-unstyled">
                        <li><strong>Navn:</strong> ${sessionScope.orderForm.navn}</li>
                        <li><strong>Adresse:</strong> ${sessionScope.orderForm.adresse}</li>
                        <li><strong>Postnummer:</strong> ${sessionScope.orderForm.postnummer}</li>
                        <li><strong>By:</strong> ${sessionScope.orderForm.by}</li>
                        <li><strong>Telefonnummer:</strong> ${sessionScope.orderForm.telefonnummer}</li>
                        <li><strong>Email:</strong> ${sessionScope.orderForm.email}</li>
                    </ul>

                    <button type="submit" class="btn btn-secondary" formaction="order?step=3">Tilbage</button>
                    <button type="submit" class="btn btn-primary" formaction="order?step=5">Bestil tilbud</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:pagetemplateorder>

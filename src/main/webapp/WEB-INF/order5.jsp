<%@ page import="dat.backend.model.entities.OrderForm" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>
<%@ page session="true" %>

<t:pagetemplateorder>
    <jsp:body>

        <title>Ordrebekræftelse</title>

        <style>
            .text {
                font-weight: bold
            }
        </style>

        <br>
        <a aria-label="Logo - Frontpage" href="/"><svg width="1em" height="1em" viewBox="0 0 181 181" xmlns="http://www.w3.org/2000/svg" class="css-yqm9dt e1o3ig1s0"><path fill="#003D76" d="M-2-2h183v183H-2z"></path><path fill="#FFF" d="M42.62 111.91h8.89V83.05h12.77V74.9H51.51V53.49h14.32v-8.06H42.62zM86.98 58.59c-8.89 0-14.26 5.19-14.26 14.27v25.59c0 9.07 5.37 14.27 14.26 14.27s14.26-5.2 14.26-14.27V72.86c0-9.08-5.38-14.27-14.26-14.27m5.48 39.35c0 4.69-2.18 6.93-5.48 6.93-3.3 0-5.48-2.24-5.48-6.93V73.37c0-4.69 2.17-6.93 5.48-6.93 3.31 0 5.48 2.24 5.48 6.93v24.57ZM129.73 62.86c-1-2.65-4.54-4.28-7.75-4.28-8.37 0-12.29 5.09-12.29 14.27v25.59c0 9.17 3.92 14.27 12.29 14.27 3 0 6.51-1.73 7.44-4.08v8.36c0 4.69-2.06 6.94-5.37 6.94s-5.37-2.25-5.37-6.94v-.91h-8.75v1.42c0 9.08 5.27 14.28 14.15 14.28s14.15-5.2 14.15-14.28V59.4h-8.5v3.46Zm-.31 35.07c0 4.69-2.17 6.93-5.47 6.93s-5.48-2.24-5.48-6.93V73.37c0-4.69 2.17-6.93 5.48-6.93 3.31 0 5.47 2.24 5.47 6.93v24.56ZM149.93 64.86a2 2 0 0 0-.5-.79 1.77 1.77 0 0 0-.63-.38 2 2 0 0 0 1-.51 1.45 1.45 0 0 0 .36-1 1.72 1.72 0 0 0-.15-.74 1.33 1.33 0 0 0-.45-.52 2.29 2.29 0 0 0-.74-.31 5.55 5.55 0 0 0-1-.09h-1.62a.6.6 0 0 0-.46.17.7.7 0 0 0-.16.48v5c0 .095.06.18.15.21.189.03.381.03.57 0 .185.03.375.03.56 0a.21.21 0 0 0 .12-.21v-2h.38a1 1 0 0 1 .69.2c.198.196.34.44.41.71l.29 1a.38.38 0 0 0 .08.17.21.21 0 0 0 .14.1h1.28c.06 0 .1 0 .11-.07a.21.21 0 0 0 0-.11 1.8 1.8 0 0 0-.1-.4l-.33-.91Zm-1.53-2a1.16 1.16 0 0 1-.81.22h-.66v-1.5h.65a2 2 0 0 1 .48.06.63.63 0 0 1 .32.15.51.51 0 0 1 .16.25.93.93 0 0 1 0 .29.78.78 0 0 1-.23.58"></path><path d="M152.87 61.4a5.12 5.12 0 0 0-2.86-2.82 5.93 5.93 0 0 0-2.21-.4 5.59 5.59 0 0 0-2.17.42 5.25 5.25 0 0 0-2.92 2.86 5.16 5.16 0 0 0-.43 2.12c-.01.74.13 1.475.41 2.16a5 5 0 0 0 1.13 1.7 5.23 5.23 0 0 0 1.73 1.13 5.91 5.91 0 0 0 2.2.4 5.51 5.51 0 0 0 2.16-.42 5.42 5.42 0 0 0 1.76-1.15 5.38 5.38 0 0 0 1.6-3.85 5.62 5.62 0 0 0-.4-2.15m-1.16 3.88a4.21 4.21 0 0 1-.86 1.34 4.11 4.11 0 0 1-1.34.92 4.72 4.72 0 0 1-3.43 0 3.88 3.88 0 0 1-1.34-.89 4.27 4.27 0 0 1-.88-1.38 4.91 4.91 0 0 1-.31-1.78 4.58 4.58 0 0 1 .3-1.64 4 4 0 0 1 .86-1.36c.381-.39.837-.7 1.34-.91a4.39 4.39 0 0 1 1.75-.33 4.84 4.84 0 0 1 1.68.3 3.89 3.89 0 0 1 2.21 2.31c.22.57.33 1.178.32 1.79a4.68 4.68 0 0 1-.3 1.65" fill="#FFF"></path></svg></a>
        <svg width="4em" height="4em" viewBox="0 0 181 181" xmlns="http://www.w3.org/2000/svg" class="css-yqm9dt e1o3ig1s0">
        <br>Johannes Fog A/S<br>
        Firskovvej 20<br>
        2800 Lyngby<br>
        CVR-nr. 16314439<br>

        <br>
        ${requestScope.orderdate}
        <br>
        <br><h1>Ordrebekræftlese</h1>

        <div class="col-md-6">
            <br><h5 class="mb-4">Info:</h5>
            <ul class="list-unstyled">
                <li><strong>Navn:</strong> ${sessionScope.orderForm.navn}</li>
                <li><strong>Adresse:</strong> ${sessionScope.orderForm.adresse}</li>
                <li><strong>Postnummer:</strong> ${sessionScope.orderForm.postnummer}</li>
                <li><strong>By:</strong> ${sessionScope.orderForm.by}</li>
                <li><strong>Telefonnummer:</strong> ${sessionScope.orderForm.telefonnummer}</li>
                <li><strong>Email:</strong> ${sessionScope.orderForm.email}</li>
            </ul>
        </div>




        <br><br><p style="text-align: center">Tak for din bestilling! Vi vender tilbage til dig inden for 24 timer. </p>

    </jsp:body>
</t:pagetemplateorder>

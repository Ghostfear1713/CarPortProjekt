<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
             Signup
    </jsp:attribute>

    <jsp:body>

        <section class="py-4 py-xl-5">
            <div class="card mb-5">
                <div class="card-body d-flex flex-column align-items-center">
                    <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                    </svg></div>
                    <div class="row mb-5">
                        <div class="col-9 col-sm-11 col-md-11 col-xl-12 text-center mx-auto">
                            <h2>Opret en konto</h2>
                            <p>Indtast dine oplysninger nedenfor for at oprette en konto</p>
                            <form class="text-center" method="post" action="signup">
                                <div><small class="form-text text-start float-start">Navn*</small><small class="text-start"></small>
                                    <p></p>
                                    <input class="form-control" type="email" name="username" placeholder="Indtast dit navn"><small class="form-text text-start float-start">Email*</small>
                                </div>
                                <div class="mb-3"><small class="text-start"></small>
                                    <p></p>
                                    <input class="form-control" type="email" name="email" placeholder="Indtast din email"><small class="form-text text-start float-start">Kode*</small>
                                </div>
                                <div class="mb-3">
                                    <input class="form-control" type="password" name="password" placeholder="Indtast din kode">
                                </div>
                                <div class="mb-3">
                                    <button class="btn btn-primary d-block w-100" type="submit">Opret konto</button>
                                </div>
                                <p class="text-muted">Har du allerede en konto?&nbsp;<a href="#">Log ind</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </jsp:body>
</t:pagetemplate>
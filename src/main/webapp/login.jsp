<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<!DOCTYPE html>
<html class="text-end" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>carport</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Navbar-Centered-Brand-icons.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-md py-3">
    <div class="container"><a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/index.jsp"><span class="bs-icon-sm bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center me-2 bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-bezier">
                        <path fill-rule="evenodd" d="M0 10.5A1.5 1.5 0 0 1 1.5 9h1A1.5 1.5 0 0 1 4 10.5v1A1.5 1.5 0 0 1 2.5 13h-1A1.5 1.5 0 0 1 0 11.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm10.5.5A1.5 1.5 0 0 1 13.5 9h1a1.5 1.5 0 0 1 1.5 1.5v1a1.5 1.5 0 0 1-1.5 1.5h-1a1.5 1.5 0 0 1-1.5-1.5v-1zm1.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM6 4.5A1.5 1.5 0 0 1 7.5 3h1A1.5 1.5 0 0 1 10 4.5v1A1.5 1.5 0 0 1 8.5 7h-1A1.5 1.5 0 0 1 6 5.5v-1zM7.5 4a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z"></path>
                        <path d="M6 4.5H1.866a1 1 0 1 0 0 1h2.668A6.517 6.517 0 0 0 1.814 9H2.5c.123 0 .244.015.358.043a5.517 5.517 0 0 1 3.185-3.185A1.503 1.503 0 0 1 6 5.5v-1zm3.957 1.358A1.5 1.5 0 0 0 10 5.5v-1h4.134a1 1 0 1 1 0 1h-2.668a6.517 6.517 0 0 1 2.72 3.5H13.5c-.123 0-.243.015-.358.043a5.517 5.517 0 0 0-3.185-3.185z"></path>
                    </svg><img src="assets/img/Screenshot%202023-05-04%20at%2022.55.13.png" width="56" height="56"></span><span></span></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-2">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/index.jsp"></a></li>
                <li class="nav-item"><a class="nav-link text-start" href="${pageContext.request.contextPath}/index.jsp">Byg-selv carport</a></li>
            </ul>
        </div><a class="text-end ms-md-2" role="button" href="#" style="color: rgb(163,163,163);">Log ind</a>
    </div>
</nav>
<section class="py-4 py-xl-5">
    <div class="card mb-5">
        <div class="card-body d-flex flex-column align-items-center">
            <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person">
                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
            </svg></div>
            <div class="row mb-5">
                <div class="col-9 col-sm-11 col-md-11 col-xl-12 text-center mx-auto">
                    <h2>Log ind på din konto</h2>
                    <p>Velkommen tilbage! Indtast dit Username og Password </p><small class="form-text text-start float-start">Username*</small>
                    <form action="login" method="post">
                        <div class="mb-3"><small class="text-start"></small>
                            <p></p><input class="form-control" type="text" name="username" placeholder="Indtast dit Username"><small class="form-text text-start float-start">Password*</small>
                        </div>
                        <div class="mb-3"><input class="form-control" type="password" name="password" placeholder="Indtast dit Password"></div>
                        <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit">Login</button></div>
                        <p class="text-muted">Opret en konto her!&nbsp;<a href="signup.jsp">Opret konto</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer></footer>
    <footer class="text-center py-4">
        <div class="container">
            <div class="row row-cols-1 row-cols-lg-3">
                <div class="col-lg-12">
                    <p class="text-muted my-2">Johannes Fog A/S - Firskovvej 202800 Lyngby - CVR-nr. 16314439</p>
                </div>
            </div>
        </div>
    </footer>
</section>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
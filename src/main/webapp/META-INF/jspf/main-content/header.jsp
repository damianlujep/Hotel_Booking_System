
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Spagere - Online Booking HTML Website Template</title>

    <!-- Bootstrap -->
    <link href="<c:url value="css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <!-- Main styles -->
    <link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet/less" href="<c:url value="/css/style.less"/>" type="text/css" />
    <!-- IE styles -->
    <link href="<c:url value="/css/ie.css"/>" rel="stylesheet" type="text/css"/>
    <!-- Font Awesome -->
    <link href="<c:url value="/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- OWL Carousel -->
    <link href="<c:url value="/css/owl.carousel.css"/>" rel="stylesheet" type="text/css"/>
    <!-- Jquery UI -->
    <link href="<c:url value="/css/jquery-ui.css"/>" rel="stylesheet" type="text/css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Overlay preloader-->
<div class="htlfndr-loader-overlay"></div>

<div class="htlfndr-wrapper">
    <header>
        <div class="htlfndr-top-header">
            <div class="navbar navbar-default htlfndr-blue-hover-nav">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#htlfndr-first-nav">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="htlfndr-logo navbar-brand" href="<c:url value="/"/>">
                            <img src="images/logo.png" alt="Logo" />
                            <p class="htlfndr-logo-text">Spagere <span>finder</span></p>
                        </a>
                    </div><!-- .navbar-header -->
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="htlfndr-first-nav">
                        <!-- List with sing up/sing in links -->
                        <ul class="nav navbar-nav htlfndr-singup-block">
                            <li id="htlfndr-singup-link">
                                <a href="#" data-toggle="modal" data-target="#htlfndr-sing-up"><span>registration</span></a>
                            </li>
                            <li id="htlfndr-singin-link">
                                <a href="/login" data-toggle="modal" data-target="#htlfndr-sing-in"><span>Login</span></a>
                            </li>
                        </ul><!-- .htlfndr-singup-block -->
                        <!-- List with currency and language dropdons -->
                        <ul class="nav navbar-nav htlfndr-custom-select htlfndr-currency">
                            <li>
                                <label for="htlfndr-currency" class="sr-only">Change currency</label>
                                <select name="htlfndr-currency" id="htlfndr-currency" tabindex="-1">
                                    <option value="eur">eur</option>
                                    <option value="gbp">gbp</option>
                                    <option value="jpy">jpy</option>
                                    <option value="usd">usd</option>
                                    <option value="pln" selected="selected">PLN</option>
                                </select>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav htlfndr-custom-select htlfndr-language">
                            <li id="htlfndr-dropdown-language">
                                <label for="htlfndr-language" class="sr-only">Change language</label>
                                <select name="htlfndr-language" id="htlfndr-language" tabindex="-1">
                                    <option value="eng" selected="selected">eng</option>
                                    <option value="ger">ger</option>
                                    <option value="jap">jap</option>
                                    <option value="ita">ita</option>
                                    <option value="fre">fre</option>
                                    <option value="rus" >rus</option>
                                </select>
                            </li>
                        </ul><!-- .htlfndr-top-menu-dropdowns -->
                    </div><!-- .collapse.navbar-collapse -->
                </div><!-- .container -->
            </div><!-- .navbar.navbar-default.htlfndr-blue-hover-nav-->
        </div><!-- .htlfndr-top-header -->
        <!-- Start of main navigation -->
        <div class="htlfndr-under-header">
            <nav class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#htlfndr-main-nav">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div><!-- .navbar-header -->
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="htlfndr-main-nav">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="<c:url value="/"/>">home</a>
                            </li>
                            <li>
                                <a href="blog-index.html">blog</a>
                            </li>
                            <li>
                                <a href="<c:url value="/contact"/>">contact</a>
                            </li>
                            <li>
                                <a href="<c:url value="/about"/>">about</a>
                            </li>
                            <li>
                                <a href="<c:url value="/member/profile"/>">user profile</a>
                            </li>
                        </ul>
                    </div><!-- .collapse.navbar-collapse -->
                </div><!-- .container -->
            </nav><!-- .navbar.navbar-default.htlfndr-blue-hover-nav -->
        </div><!-- .htlfndr-under-header -->
        <!-- End of main navigation -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%--TODO Header and footer--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Spagere - Search</title>

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
    <%--    [if lt IE 9]--%>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <%--    [endif]--%>
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
                        <a class="htlfndr-logo navbar-brand" href="index.html">
                            <img src="images/logo.png" alt="Logo" />
                            <p class="htlfndr-logo-text">Spagere <span>finder</span></p>
                        </a>
                    </div><!-- .navbar-header -->
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right" id="htlfndr-first-nav">
                        <!-- List with sing up/sing in links -->
                        <ul class="nav navbar-nav htlfndr-singup-block">
                            <li id="htlfndr-singup-link">
                                <a href="#" data-toggle="modal" data-target="#htlfndr-sing-up"><span>sing up</span></a>
                            </li>
                            <li id="htlfndr-singin-link">
                                <a href="#" data-toggle="modal" data-target="#htlfndr-sing-in"><span>sing in</span></a>
                            </li>
                        </ul><!-- .htlfndr-singup-block -->
                        <!-- List with currency and language dropdowns -->
                        <ul class="nav navbar-nav htlfndr-custom-select htlfndr-currency">
                            <li>
                                <label for="htlfndr-currency" class="sr-only">Change currency</label>
                                <select name="htlfndr-currency" id="htlfndr-currency" tabindex="-1">
                                    <option value="eur">eur</option>
                                    <option value="gbp">gbp</option>
                                    <option value="jpy">jpy</option>
                                    <option value="usd" selected="selected">usd</option>
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
                            <li>
                                <a href="index.html">home</a>
                            </li>
                            <li><a href="elements.html">elements</a></li>
                            <li>
                                <a href="blog-index.html">blog</a>
                            </li>
                            <li>
                                <a href="about-us.html">about</a>
                            </li>
                            <li>
                                <a href="user-page.html">user profile</a>
                            </li>
                            <li  class="dropdown">
                                <a href="#" onclick="return false;">Pages</a>
                                <ul class="dropdown-menu">
                                    <li  class="dropdown-submenu"><a href="search-result.html">Search result</a>
                                        <ul class="dropdown-menu">
                                            <li class="active"><a href="search-result.html">Search result 1</a>
                                            <li><a href="search-result-v-2.html">Search result 2</a></li>
                                            <li><a href="search-result-v-3.html">Search result 3</a></li>
                                        </ul>
                                    </li>
                                    <li  class="dropdown-submenu"><a href="Spagere-page-v1.html">Spagere page</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="Spagere-page-v1.html">Spagere page 1</a>
                                            <li><a href="Spagere-page-v2.html">Spagere page 1 Special offer</a></li>
                                            <li><a href="Spagere-page-v3.html">Spagere page 2</a></li>
                                            <li><a href="Spagere-page-v4.html">Spagere page 2 Special offer</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu"><a href="Spagere-room-page.html">Spagere Room Page</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="Spagere-room-page.html">Spagere Room Page</a>
                                            <li><a href="Spagere-room-page-special-offer.html">Spagere Room Page Special offer</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="payment.html">Payment</a></li>
                                    <li><a href="search-rooms.html">Search Rooms</a></li>
                                    <li><a href="contact-us.html">Contact Us</a></li>
                                    <li><a href="thanks-page.html">Thanks Page</a></li>
                                    <li><a href="404-page.html">404 Page</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!-- .collapse.navbar-collapse -->
                </div><!-- .container -->
            </nav><!-- .navbar.navbar-default.htlfndr-blue-hover-nav -->
        </div><!-- .htlfndr-under-header -->
        <!-- End of main navigation -->
        <noscript><h2>You have JavaScript disabled!</h2></noscript>
    </header>

    <!-- Start of main content -->
    <div class="container" style="padding-bottom: 5%">
        <!-- Progress steps -->
        <div class="htlfndr-steps">
            <ul class="htlfndr-progress">
                <li class="htlfndr-active-step">
                    <span class="htlfndr-step-number">1</span> <span class="htlfndr-step-description">results</span>
                </li>
                <li>
                    <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">Spagere</span>
                </li>
                <li>
                    <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">room</span>
                </li>
                <li>
                    <span class="htlfndr-step-number">4</span> <span class="htlfndr-step-description">payment</span>
                </li>
            </ul>
        </div><!-- .htlfndr-steps -->

        <div class="row">
            <aside class="col-sm-4 col-md-3 col-lg-3 htlfndr-sidebar htlfndr-sidebar-in-left" role="complementary">
                <div class="htlfndr-modify-search-aside widget">
                    <h3 class="widget-title">modify search</h3>
                    <div class="htlfndr-widget-content">

                        <form name="search-Spagere" id="search-Spagere">
                            <label for="htlfndr-city" class="htlfndr-input-label">Your destination</label>
                            <div id="htlfndr-input-1" class="htlfndr-input-wrapper">
                                <input type="text" name="htlfndr-city" id="htlfndr-city" class="search-hotel-input" placeholder="Enter city, region" />
                            </div><!-- #htlfndr-input-1.htlfndr-input-wrapper -->

                            <div class="htlfndr-float-input first-float">
                                <label for="htlfndr-date-in" class="htlfndr-input-label">Check in</label>
                                <div id="htlfndr-input-date-in" class="htlfndr-input-wrapper">
                                    <input type="text" name="htlfndr-date-in" id="htlfndr-date-in" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div><!-- #htlfndr-input-date-in.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                            <div class="htlfndr-float-input">
                                <label for="htlfndr-date-out" class="htlfndr-input-label">Check out</label>
                                <div id="htlfndr-input-date-out" class="htlfndr-input-wrapper">
                                    <input type="text" name="htlfndr-date-out" id="htlfndr-date-out" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div><!-- #htlfndr-input-date-out.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                                <div class="htlfndr-input-wrapper htlfndr-small-select" style="width: 55%">
                                    <label for="htlfndr-adult" class="htlfndr-input-label">Guests</label>
                                    <select name="htlfndr-adult" id="htlfndr-adult" class="htlfndr-dropdown">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select>
                                </div><!-- .htlfndr-input-wrapper .htlfndr-small-select -->
                            </section>
                                <input type="submit" value="search" class="btn-primary"/>
                        </form>
                    </div><!-- .htlfndr-widget-content -->
                </div><!-- .htlfndr-modify-search-aside-aside -->

<%--                <div class="htlfndr-search-details widget">--%>
<%--                    <h3 class="widget-title">details</h3>--%>
<%--                    <div class="htlfndr-widget-content">--%>
<%--                        <form name="search-Spagere-details" id="search-Spagere-details">--%>
<%--                            <!-- Price slider -->--%>
<%--                            <label for="htlfndr-price-show" class="htlfndr-input-label">Price</label>--%>
<%--                            <div id="htlfndr-price-slider"></div>--%>
<%--                            <!-- First 'input' does not need a 'name' attribute.--%>
<%--                             For the backend form processing use hidden fields below -->--%>
<%--                            <input type="text" id="htlfndr-price-show" readonly />--%>
<%--                            <input type="hidden" name="htlfndr-price-start" id="htlfndr-price-start" value="100"/>--%>
<%--                            <input type="hidden" name="htlfndr-price-stop" id="htlfndr-price-stop" value="1000"/>--%>

<%--                            <!-- User Star Rating -->--%>
<%--                            <p class="htlfndr-input-label">user rating</p>--%>
<%--                            <div class="htlfndr-user-rating" data-rating="3"></div>--%>
<%--                            <!-- The value of a hidden field is such as 'data-rating' attribute above -->--%>
<%--                            <input type="hidden" name="htlfndr-rating" id="htlfndr-rating" value="3"/>--%>

<%--                            <!-- Checkboxes-->--%>
<%--                            <p class="htlfndr-input-label">accomodation type</p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-apartment" name="htlfndr-check-apartment" />--%>
<%--                                <label for="htlfndr-check-apartment">apartment <span>(5)</span></label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-hostel" name="htlfndr-check-hostel" />--%>
<%--                                <label for="htlfndr-check-hostel">hostel <span>(5)</span></label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-Spagere" name="htlfndr-check-Spagere" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-Spagere">Spagere <span>(15)</span></label>--%>
<%--                            </p>--%>

<%--                            <p class="htlfndr-input-label">amenities</p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-television" name="htlfndr-check-television" />--%>
<%--                                <label for="htlfndr-check-television">television</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-wi-fi" name="htlfndr-check-wi-fi" />--%>
<%--                                <label for="htlfndr-check-wi-fi">Wi-Fi</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-swimming-pool" name="htlfndr-check-swimming-pool" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-swimming-pool">swimming pool</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-smoking-allowed" name="htlfndr-check-smoking-allowed" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-smoking-allowed">smoking allowed</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-wine-bar" name="htlfndr-check-wine-bar" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-wine-bar">wine bar</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-hot-tub" name="htlfndr-check-hot-tub" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-hot-tub">hot tub</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-air-conditioning" name="htlfndr-check-air-conditioning" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-air-conditioning">air conditioning</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-breakfast" name="htlfndr-check-breakfast" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-breakfast">breakfast</label>--%>
<%--                            </p>--%>
<%--                            <p class="htlfndr-checkbox-line">--%>
<%--                                <input type="checkbox" id="htlfndr-check-free-parking" name="htlfndr-check-free-parking" disabled="disabled" checked="checked" />--%>
<%--                                <label for="htlfndr-check-free-parking">free parking</label>--%>
<%--                            </p>--%>
<%--                        </form>--%>
<%--                    </div><!-- .htlfndr-widget-content -->--%>
<%--                </div><!-- .htlfndr-search-details -->--%>
            </aside><!-- .htlfndr-sidebar .htlfndr-sidebar-in-left -->

            <main class="col-sm-8 col-md-9 col-lg-9 htlfndr-search-result htlfndr-row-view" role="main">
                <h2 class="htlfndr-search-result-title"><span>${hotelFoundList.size()}</span> result(s) found</h2>
                <!-- Sorting navigation section -->
                <div class="htlfndr-search-result-sorting row">
                    <div class="col-md-12">

                        <!-- Sorting elements -->
<%--                        <div class="dropdown htlfndr-sort">--%>
<%--                            <a class="dropdown-toggle" id="htlfndr-sort-1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="button">--%>
<%--                                Sort by--%>
<%--                            </a>--%>
<%--                            <ul class="dropdown-menu" aria-labelledby="htlfndr-sort-1">--%>
<%--                                <li><a href="#" id="htlfndr-sort-by-price">price</a></li>--%>
<%--                                <li><a href="#" id="htlfndr-sort-by-rating">rating</a></li>--%>
<%--                                <li><a href="#" id="htlfndr-sort-by-popular">popular</a></li>--%>
<%--                            </ul>--%>
<%--                        </div><!-- .dropdown .htlfndr-sort -->--%>

                        <!-- Change number hotels to show -->
<%--                        <div class="dropdown htlfndr-show-number-hotels">--%>
<%--                            <a class="dropdown-toggle" id="htlfndr-sort-2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" role="button">--%>
<%--                                Show <span>9 items</span>--%>
<%--                            </a>--%>
<%--                            <ul class="dropdown-menu" aria-labelledby="htlfndr-sort-2">--%>
<%--                                <li><a href="#" id="htlfndr-show-9" data-number="9">9 items</a></li>--%>
<%--                                <li><a href="#" id="htlfndr-show-18" data-number="18">18 items</a></li>--%>
<%--                                <li><a href="#" id="htlfndr-show-27" data-number="27">27 items</a></li>--%>
<%--                            </ul>--%>
<%--                        </div><!-- .dropdown .htlfndr-show-number-hotels -->--%>

                        <!-- Change view buttons -->
                        <div class="htlfndr-view">
                            <button id="htlfndr-grid" data-toggle="tooltip" data-placement="top" title="Grid view" role="button">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <button id="htlfndr-row" class="htlfndr-active" data-toggle="tooltip" data-placement="top" title="Row view" role="button">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div><!-- .htlfndr-view -->

                    </div><!-- .col-md-12 -->
                </div><!-- .htlfndr-search-result-sorting .row -->

                <section class="row htlfndr-search-result-content">
                    <c:forEach items="${hotelFoundList}" var="hotelAvailable">
                    <div class="htlfndr-hotel-post-wrapper col-md-12">
                        <div class="htlfndr-hotel-post">
                            <a href="Spagere-page-v1.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title"><a href="Spagere-page-v1.html">${hotelAvailable.name}</a></h2>
                                    <div class="htlfndr-rating-stars" data-rating="5">
                                        <i class="fa fa-star htlfndr-star-color"></i>&nbsp;
                                        <i class="fa fa-star htlfndr-star-color"></i>&nbsp;
                                        <i class="fa fa-star htlfndr-star-color"></i>&nbsp;
                                        <i class="fa fa-star htlfndr-star-color"></i>&nbsp;
                                        <i class="fa fa-star htlfndr-star-color"></i>&nbsp;
                                        <p class="htlfndr-hotel-reviews">(<span>188</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${hotelAvailable.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/hotel/${hotelAvailable.id}"/>" role="button" class="htlfndr-select-hotel-button">select</a>
<%--                                <div class="htlfndr-hotel-price">--%>
<%--                                    <span class="htlfndr-from">from</span> <span class="htlfndr-cost">$ 100</span> <span class="htlfndr-per-night">per night</span>--%>
<%--                                    <span class="cost">100</span>--%>
<%--                                </div><!-- .htlfndr-Spagere-price -->--%>
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                    </c:forEach>

                </section><!-- .row .htlfndr-search-result-content -->

                <!-- Pagination -->
<%--                <nav class="htlfndr-pagination">--%>
<%--                    <ul class="pagination">--%>
<%--                        <li class="htlfndr-left">--%>
<%--                            <a href="#" aria-label="Previous">--%>
<%--                                <span aria-hidden="true" class="fa fa-angle-left"></span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="current"><a href="#">1</a></li>--%>
<%--                        <li><a href="#">2</a></li>--%>
<%--                        <li><a href="#">3</a></li>--%>
<%--                        <li><a href="#">4</a></li>--%>
<%--                        <li class="htlfndr-right">--%>
<%--                            <a href="#" aria-label="Next">--%>
<%--                                <span aria-hidden="true" class="fa fa-angle-right"></span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </nav><!-- .htlfndr-pagination -->--%>
            </main><!-- .htlfndr-search-result -->
        </div><!-- .row -->
    </div><!-- .container -->
    <!-- End of main content -->

    <!-- Start of the Footer -->
    <footer class="htlfndr-footer">
        <button class="htlfndr-button-to-top"><span>Back to top</span></button><!-- Button "To top" -->

        <div class="widget-wrapper">
            <div class="container">
                <div class="row">
                    <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                        <div class="widget">
                            <a class="htlfndr-logo navbar-brand" href="#">
                                <img src="images/logo.png" height="20" width="30" alt="Logo" />
                                <p class="htlfndr-logo-text">Spagere <span>finder</span></p>
                            </a>
                            <hr />
                            <p>Suspendisse sed sollicitudin nisl, at dignissim libero. Sed porta tincidunt ipsum, vel volutpat.</p>
                            <br />
                            <p>Nunc ut fringilla urna. Cras vel adipiscing ipsum. Integer dignissim nisl eu lacus interdum facilisis. Aliquam erat volutpat. Nulla</p>
                        </div><!-- .widget -->
                    </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                    <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                        <div class="widget">
                            <h3 class="widget-title">contact info</h3>
                            <h5>address</h5>
                            <p>Spagere	<br />120 CA 15th Avenue-Suite 214, USA</p>
                            <hr />
                            <h5>phone number</h5>
                            <p>1-555-5555-5555</p>
                            <hr />
                            <h5>email address</h5>
                            <p>support@Spagere.zendesk.com.com</p>
                        </div><!-- .widget -->
                    </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                    <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                        <div class="widget">
                            <h3 class="widget-title">pages</h3>
                            <ul class="menu">
                                <li class="menu-item"><a href="index.html">home</a></li>
                                <li class="menu-item"><a href="elements.html">elements</a></li>
                                <li class="menu-item"><a href="blog-index.html">blog</a></li>
                                <li class="menu-item"><a href="about-us.html">about</a></li>
                                <li class="menu-item"><a href="user-page.html">user profile</a></li>
                            </ul>
                        </div><!-- .widget -->
                    </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                    <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                        <div class="widget">
                            <h3 class="widget-title">follow us</h3>
                            <!-- Start of Follow Us buttons -->
                            <div class="htlfndr-follow-plugin">
                                <a href="https://www.facebook.com/Spagere/" target="_blank" class="htlfndr-follow-button button-facebook"></a>
                                <a href="https://twitter.com/Spagere" target="_blank" class="htlfndr-follow-button button-twitter"></a>
                                <a href="https://plus.google.com/+Spagere" target="_blank" class="htlfndr-follow-button button-google-plus"></a>
                                <a href="https://www.linkedin.com/company/Spagere/" target="_blank" class="htlfndr-follow-button button-linkedin"></a>
                                <a href="#" class="htlfndr-follow-button button-pinterest"></a>
                                <a href="https://www.youtube.com/Spagere" target="_blank" class="htlfndr-follow-button button-youtube"></a>
                            </div><!-- .htlfndr-follow-plugin -->
                            <!-- End of Follow Us buttons -->
                            <hr />
                            <h3 class="widget-title">mailing list</h3>
                            <p>Sign up for our mailing list to get latest updates and offers</p>
                            <form action="/">
                                <input type="email" placeholder="Your E-mail" />
                                <input type="submit" />
                            </form>
                        </div><!-- .widget -->
                    </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .widget-wrapper -->

        <div class="htlfndr-copyright">
            <div class="container" role="contentinfo">
                <p>Copyright 2017 | Spagere | All Rights Reserved | Designed by Spagere</p>
            </div><!-- .container -->
        </div><!-- .htlfndr-copyright -->
    </footer>
</div><!-- .htlfndr-wrapper -->
<div id="htlfndr-sing-up">
    <div class="htlfndr-content-card">
        <div class="htlfndr-card-title clearfix">
            <h2 class="pull-left">Sing up</h2>
        </div>
        <form id="htlfndr-sing-up-form" method="post">
            <div class="row">
                <div class="col-md-6">
                    <h4>first name</h4>
                    <input id="htlfndr-sing-up-name" class="htlfndr-input " type="text" name="htlfndr-sing-up-name">
                </div>
                <div class="col-md-6">
                    <h4>last name</h4>
                    <input id="htlfndr-sing-up-last-name" class="htlfndr-input " type="text" name="htlfndr-sing-up-last-name">
                </div>
            </div>
            <h4>E-mail adress</h4>
            <input id="htlfndr-sing-up-email" class="htlfndr-input " type="text" name="htlfndr-sing-up-email">
            <h4>Password</h4>
            <input id="htlfndr-sing-up-pass" class="htlfndr-input " type="text" name="htlfndr-sing-up-pass">
            <h4>Confirm Password</h4>
            <input id="htlfndr-sing-up-pass-conf" class="htlfndr-input " type="text" name="htlfndr-sing-up-pass-conf">
            <div class="clearfix">
					<span>Have an Account?
				<a data-target="#htlfndr-sing-in" data-toggle="modal" href="#">
					<span>Sing in</span>
				</a>
			</span>
                <input type="submit" value="Sing up" class="pull-right">
            </div>
        </form>
    </div>
</div>
<div id="htlfndr-sing-in">
    <div class="htlfndr-content-card">
        <div class="htlfndr-card-title clearfix">
            <h2 class="pull-left">Sing in</h2>
        </div>
        <form id="htlfndr-sing-in-form" method="post">
            <h4>E-mail adress</h4>
            <input id="htlfndr-sing-in-email" class="htlfndr-input " type="text" name="htlfndr-sing-in-emal">
            <h4>Password</h4>
            <input id="htlfndr-sing-in-pass" class="htlfndr-input " type="text" name="htlfndr-sing-in-pass">
            <div class="clearfix">
					<span>Don't Have an Account?
				<a data-target="#htlfndr-sing-up" data-toggle="modal" href="#">
					<span>Sing up</span>
				</a>
			</span>
                <input type="submit" value="Sing in" class="pull-right">
            </div>
        </form>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<!-- Include Jquery UI script file -->
<script src="<c:url value="/js/jquery-ui.min.js"/>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- Include Query UI Touch Punch is a small hack that enables the use
of touch events on sites using the jQuery UI user interface library. -->
<script src="<c:url value="/js/jquery.ui.touch-punch.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<!-- Include Owl Carousel script file -->
<script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
<!-- Include main script file -->
<script src="<c:url value="/js/script.js"/>"></script>

<script src="<c:url value="/js/less.min.js"/>" ></script>
<script src="<c:url value="/js/starrr.min.js"/>"></script>
<script src="<c:url value="/js/jquery.ui.touch-punch.min.js"/>"></script>
<script src=<c:url value="/js/tinysort.js"/>></script>

<script src="<c:url value="/js/less.min.js"/>" ></script>
<script src="<c:url value="/js/jquery.responsiveTabs.min.js"/>" ></script>
<script src="<c:url value="/js/jquery.responsiveTabs.js"/>" ></script>
</body>
</html>
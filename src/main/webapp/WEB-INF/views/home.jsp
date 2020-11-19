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
<%--    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>--%>
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
                                <a href="#" data-toggle="modal" data-target="#htlfndr-sing-in"><span>Login</span></a>
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

        <!-- Start of slider section -->
        <section class="htlfndr-slider-section">
            <div class="owl-carousel">
                <div class="htlfndr-slide-wrapper">
                    <img src="http://placehold.it/1824x565" alt="img-1" />
                    <div class="htlfndr-slide-data container">
                        <div class="htlfndr-slide-rating-stars">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div><!-- .htlfndr-slide-rating-stars -->
                        <h1 class="htlfndr-slider-title">find your perfect hotel</h1>
                        <div class="htlfndr-slider-under-title-line"></div>
                    </div><!-- .htlfndr-slide-data.container -->
                </div><!-- .htlfndr-slide-wrapper-->
                <div class="htlfndr-slide-wrapper">
                    <img src="http://placehold.it/1824x565" alt="img-2" />
                    <div class="htlfndr-slide-data container">
                        <div class="htlfndr-slide-rating-stars">
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o"></i>
                        </div><!-- .htlfndr-slide-rating-stars -->
                        <h1 class="htlfndr-slider-title">find your perfect hotel</h1>
                        <div class="htlfndr-slider-under-title-line"></div>
                    </div><!-- .htlfndr-slide-data.container -->
                </div><!-- .htlfndr-slide-wrapper-->
                <div class="htlfndr-slide-wrapper">
                    <img src="http://placehold.it/1824x565" alt="img-3" />
                    <div class="htlfndr-slide-data container">
                        <div class="htlfndr-slide-rating-stars">
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o htlfndr-star-color"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div><!-- .htlfndr-slide-rating-stars -->
                        <h1 class="htlfndr-slider-title">find your perfect hotel</h1>
                        <div class="htlfndr-slider-under-title-line"></div>
                    </div><!-- .htlfndr-slide-data.container -->
                </div><!-- .htlfndr-slide-wrapper-->
            </div>

            <!-- Search form aside start -->
            <aside class="htlfndr-form-in-slider htlfndr-search-form-inline">
                <div class="container">
                    <h5>Where are you going?</h5>
                    <form action="search-result.html" name="search-hotel" id="search-hotel" class="htlfndr-search-form">
                        <div id="htlfndr-input-1" class="htlfndr-input-wrapper">
                            <input type="text" name="htlfndr-city" id="htlfndr-city" class="search-hotel-input" placeholder="Enter city, region or district" />
<%--                            <p class="htlfndr-search-checkbox">--%>
<%--                                <input type="checkbox" id="htlfndr-checkbox" name="htlfndr-checkbox" value="no-dates" />--%>
<%--                                <label for="htlfndr-checkbox">I don't have specific dates yet</label>--%>
<%--                            </p>--%>
                        </div><!-- #htlfndr-input-1.htlfndr-input-wrapper -->

                        <div id="htlfndr-input-date-in" class="htlfndr-input-wrapper">
                            <label for="htlfndr-date-in" class="sr-only">Date in</label>
                            <input type="text" name="htlfndr-date-in" id="htlfndr-date-in" class="search-hotel-input" />
                            <button type="button" class="htlfndr-clear-datepicker"></button>
                        </div><!-- #htlfndr-input-date-in.htlfndr-input-wrapper -->

                        <div id="htlfndr-input-date-out" class="htlfndr-input-wrapper">
                            <label for="htlfndr-date-out" class="sr-only">Date out</label>
                            <input type="text" name="htlfndr-date-out" id="htlfndr-date-out" class="search-hotel-input" />
                            <button type="button" class="htlfndr-clear-datepicker"></button>
                        </div><!-- #htlfndr-input-date-out.htlfndr-input-wrapper -->

                        <div id="htlfndr-input-4" class="htlfndr-input-wrapper">
                            <label for="htlfndr-dropdown" class="sr-only">The number of people in room</label>
                            <select name="htlfndr-dropdown" id="htlfndr-dropdown" class="htlfndr-dropdown">
                                <option value="1 adult">1 adult</option>
                                <option value="2 adults in 1 room">2 adults in 1 room</option>
                                <option value="3 adults in 1 room">3 adults in 1 room</option>
                                <option value="4 adults in 1 room">4 adults in 1 room</option>
                                <option value="2 adults in 2 room">2 adults in 2 room</option>
                                <option value="need more">Need more?</option>
                            </select>
                        </div><!-- #htlfndr-input-4.htlfndr-input-wrapper -->

                        <div id="htlfndr-input-5">
                            <input type="submit" value="search"/>
                        </div><!-- #htlfndr-input-5.htlfndr-input-wrapper -->
                    </form>
                </div><!-- .container -->
            </aside><!-- .htlfndr-form-in-slider.container-fluid -->
            <!-- Search form aside stop -->

        </section><!-- .htlfndr-slider-section -->
        <!-- End of slider section -->
        <noscript><h2>You have JavaScript disabled!</h2></noscript>
    </header>

    <!-- Start of main content -->
    <main role="main">
        <!-- Section with popular destinations -->
        <section class="container htlfndr-top-destinations">
            <h2 class="htlfndr-section-title">our destinations</h2>
            <div class="htlfndr-section-under-title-line"></div>
            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4 ">
                    <article class="htlfndr-top-destination-block">
                        <div class="htlfndr-content-block">
                            <img src="http://placehold.it/501x294" alt="room-1" />
                            <div class="htlfndr-post-content">
                                <p class="htlfndr-the-excerpt">A modern hotel room in Star Hotel Nunc tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.
                                    <a class="htlfndr-read-more-arrow" href="hotel-room-page.html"><i class="fa fa-angle-right"></i></a>
                                </p>
                                <div class="htlfndr-services">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Free WI-FI</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Incl. breakfast</div><!-- .col-sm-6 -->
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Private balcony</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Bathroom</div><!-- .col-sm-6 -->
                                    </div><!-- .row -->
                                </div><!-- .htlfndr-services -->
                            </div><!-- .htlfndr-post-content -->
                        </div><!-- .htlfndr-content-block -->
                        <footer class="entry-footer">
                            <div class="htlfndr-left-side-footer">
                                <h5 class="entry-title">King Size Bedroom</h5>
                                <div class="htlfndr-entry-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-slide-rating-stars -->
                            </div><!-- .htlfndr-left-side-footer -->
                            <div class="htlfndr-right-side-footer">
                                <span class="htlfndr-cost">$ 100</span>
                                <span class="htlfndr-per-night">per night</span>
                            </div><!-- .htlfndr-right-side-footer -->
                        </footer>
                    </article><!-- .htlfndr-top-destination-block -->
                </div><!-- .col-sm-4.col-xs-12 -->

                <div class="col-xs-12 col-sm-4 col-md-4 ">
                    <article class="htlfndr-top-destination-block">
                        <div class="htlfndr-content-block">
                            <img src="http://placehold.it/501x294" alt="room-2" />
                            <div class="htlfndr-post-content">
                                <p class="htlfndr-the-excerpt">A modern hotel room in Star Hotel Nunc tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.
                                    <a class="htlfndr-read-more-arrow" href="hotel-room-page.html"><i class="fa fa-angle-right"></i></a>
                                </p>
                                <div class="htlfndr-services">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Free WI-FI</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Incl. breakfast</div><!-- .col-sm-6 -->
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Private balcony</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Bathroom</div><!-- .col-sm-6 -->
                                    </div><!-- .row -->
                                </div><!-- .htlfndr-services -->
                            </div><!-- .htlfndr-post-content -->
                        </div><!-- .htlfndr-content-block -->
                        <footer class="entry-footer">
                            <div class="htlfndr-left-side-footer">
                                <h5 class="entry-title">Awesome Suits</h5>
                                <div class="htlfndr-entry-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-slide-rating-stars -->
                            </div><!-- .htlfndr-left-side-footer -->
                            <div class="htlfndr-right-side-footer">
                                <span class="htlfndr-cost">$ 250</span>
                                <span class="htlfndr-per-night">per night</span>
                            </div><!-- .htlfndr-right-side-footer -->
                        </footer>
                    </article><!-- .htlfndr-top-destination-block -->
                </div><!-- .col-sm-4.col-xs-12 -->

                <div class="col-xs-12 col-sm-4 col-md-4 ">
                    <article class="htlfndr-top-destination-block">
                        <div class="htlfndr-content-block">
                            <img src="http://placehold.it/501x294" alt="room-3" />
                            <div class="htlfndr-post-content">
                                <p class="htlfndr-the-excerpt">A modern hotel room in Star Hotel Nunc tempor erat in magna pulvinar fermentum. Pellentesque scelerisque at leo nec vestibulum. malesuada metus.
                                    <a class="htlfndr-read-more-arrow" href="hotel-room-page.html"><i class="fa fa-angle-right"></i></a>
                                </p>
                                <div class="htlfndr-services">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Free WI-FI</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Incl. breakfast</div><!-- .col-sm-6 -->
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Private balcony</div><!-- .col-sm-6 -->
                                        <div class="col-sm-6 col-xs-6 htlfndr-service">Bathroom</div><!-- .col-sm-6 -->
                                    </div><!-- .row -->
                                </div><!-- .htlfndr-services -->
                            </div><!-- .htlfndr-post-content -->
                        </div><!-- .htlfndr-content-block -->
                        <footer class="entry-footer">
                            <div class="htlfndr-left-side-footer">
                                <h5 class="entry-title">Single Room</h5>
                                <div class="htlfndr-entry-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-slide-rating-stars -->
                            </div><!-- .htlfndr-left-side-footer -->
                            <div class="htlfndr-right-side-footer">
                                <span class="htlfndr-cost">$ 150</span>
                                <span class="htlfndr-per-night">per night</span>
                            </div><!-- .htlfndr-right-side-footer -->
                        </footer>
                    </article><!-- .htlfndr-top-destination-block -->
                </div><!-- .col-sm-4.col-xs-12 -->
            </div><!-- .row -->
        </section><!-- .container.htlfndr-top-destinations -->

        <!-- Section called USP section -->
        <section class="container-fluid htlfndr-usp-section">
            <h2 class="htlfndr-section-title htlfndr-lined-title"><span>USP section</span></h2><!-- You need <span> and 'htlfndr-lined-title' class for both side line -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 htlfndr-icon-box">
                        <img class="htlfndr-icon icon-drinks" src="images/icon-ups-drinks.png" height="100" width="100" alt="icon" />
                        <h5 class="htlfndr-section-subtitle">beverages included</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum eleifend augue, quis rhoncus purus fermentum.</p>
                        <a href="#" class="htlfndr-read-more-button">read more</a>
                    </div><!-- .col-sm-4.htlfndr-icon-box -->

                    <div class="col-sm-4 htlfndr-icon-box">
                        <img class="htlfndr-icon icon-drinks" src="images/icon-ups-card.png" height="100" width="100" alt="icon" />
                        <h5 class="htlfndr-section-subtitle">best deals</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum eleifend augue, quis rhoncus purus fermentum.</p>
                        <a href="#" class="htlfndr-read-more-button">read more</a>
                    </div><!-- .col-sm-4.htlfndr-icon-box -->

                    <div class="col-sm-4 htlfndr-icon-box">
                        <img class="htlfndr-icon icon-drinks" src="images/icon-ups-check.png" height="100" width="100" alt="icon" />
                        <h5 class="htlfndr-section-subtitle">guarantee</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum eleifend augue, quis rhoncus purus fermentum.</p>
                        <a href="#" class="htlfndr-read-more-button">read more</a>
                    </div><!-- .col-sm-4.htlfndr-icon-box -->
                </div><!-- .row -->
            </div><!-- .container -->
        </section><!-- .container-fluid .htlfndr-usp-section -->

        <!-- Section with categories -->
        <section class="container-fluid htlfndr-categories-portfolio">
            <h2 class="htlfndr-section-title bigger-title">discover the world</h2>
            <div class="htlfndr-section-under-title-line"></div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)"><!-- The "onclick" is using for Safari (IOS)
								 that recognizes the 'div' element as a clickable element -->
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-germany"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">berlin</h2>
                                <a href="#" class="htlfndr-category-permalink"></a><!-- This link will be displayed to "block" and
										 will overlay to whole box by hovering on large desktop and will be a circle link on small devices -->
                                <h5 class="category-name">germany</h5>
                                <p class="category-properties"><span>374</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->

                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)">
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-britain"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">london</h2>
                                <a href="#" class="htlfndr-category-permalink"></a>
                                <h5 class="category-name">britain</h5>
                                <p class="category-properties"><span>185</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->

                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)">
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-italy"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">rom</h2>
                                <a href="#" class="htlfndr-category-permalink"></a>
                                <h5 class="category-name">italy</h5>
                                <p class="category-properties"><span>98</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->

                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)">
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-france"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">paris</h2>
                                <a href="#" class="htlfndr-category-permalink"></a>
                                <h5 class="category-name">france</h5>
                                <p class="category-properties"><span>281</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->

                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)">
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-russia"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">moscow</h2>
                                <a href="#" class="htlfndr-category-permalink"></a>
                                <h5 class="category-name">russia</h5>
                                <p class="category-properties"><span>38</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->

                    <div class="col-sm-4 col-xs-6">
                        <div class="htlfndr-category-box" onclick="void(0)">
                            <img src="http://placehold.it/360x310" height="311" width="370" alt="category-img" />
                            <div class="category-description">
                                <div class="htlfndr-icon-flag-border"><i class="htlfndr-icon-flag flag-japan"></i></div><!-- .htlfndr-icon-flag-border -->
                                <h2 class="subcategory-name">tokio</h2>
                                <a href="#" class="htlfndr-category-permalink"></a>
                                <h5 class="category-name">japan</h5>
                                <p class="category-properties"><span>318</span> properties</p>
                            </div><!-- .category-description -->
                        </div><!-- .htlfndr-category-box -->
                    </div><!-- .col-sm-4.col-xs-6 -->
                </div><!-- .row -->
            </div>
        </section><!-- .container-fluid.htlfndr-categories-portfolio -->

        <!-- Section with visitors cards -->
        <section class="container-fluid htlfndr-visitors-cards">
            <h2 class="htlfndr-section-title bigger-title">visitors experienced</h2>
            <div class="htlfndr-section-under-title-line"></div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12 htlfndr-visitor-column">
                        <div class="htlfndr-visitor-card">
                            <div class="visitor-avatar-side">
                                <div class="visitor-avatar">
                                    <img src="http://placehold.it/90x90" height="90" width="90" alt="user avatar" />
                                </div><!-- .visitor-avatar -->
                            </div><!-- .visitor-avatar-side -->
                            <div class="visitor-info-side">
                                <h5 class="visitor-user-name">Sara Connor</h5>
                                <h6 class="visitor-user-firm">Travel Magazine</h6>
                                <p class="visitor-user-text">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam nar...</p>
                            </div><!-- .visitor-info-side -->
                        </div><!-- .htlfndr-visitor-card -->
                    </div><!-- .col-sm-4.col-xs-12.htlfndr-visitor-column -->

                    <div class="col-sm-4 col-xs-12 htlfndr-visitor-column">
                        <div class="htlfndr-visitor-card">
                            <div class="visitor-avatar-side">
                                <div class="visitor-avatar">
                                    <img src="http://placehold.it/90x90" height="90" width="90" alt="user avatar" />
                                </div><!-- .visitor-avatar -->
                            </div><!-- .visitor-avatar-side -->
                            <div class="visitor-info-side">
                                <h5 class="visitor-user-name">Mira Young</h5>
                                <h6 class="visitor-user-firm">Hotel Manager</h6>
                                <p class="visitor-user-text">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam nar...</p>
                            </div><!-- .visitor-info-side -->
                        </div><!-- .htlfndr-visitor-card -->
                    </div><!-- .col-sm-4.col-xs-12.htlfndr-visitor-column -->

                    <div class="col-sm-4 col-xs-12 htlfndr-visitor-column">
                        <div class="htlfndr-visitor-card">
                            <div class="visitor-avatar-side">
                                <div class="visitor-avatar">
                                    <img src="http://placehold.it/90x90" height="90" width="90" alt="user avatar" />
                                </div><!-- .visitor-avatar -->
                            </div><!-- .visitor-avatar-side -->
                            <div class="visitor-info-side">
                                <h5 class="visitor-user-name">John Smith</h5>
                                <h6 class="visitor-user-firm">Hotel Manager</h6>
                                <p class="visitor-user-text">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam nar...</p>
                            </div><!-- .visitor-info-side -->
                        </div><!-- .htlfndr-visitor-card -->
                    </div><!-- .col-sm-4.col-xs-12.htlfndr-visitor-column -->
                </div><!-- .row -->
            </div><!-- .container -->
        </section><!-- .container-fluid.htlfndr-visitors-cards -->
    </main>
    <!-- End of main content -->

    <!-- Start of the Footer -->
    <footer class="htlfndr-footer">

        <button class="htlfndr-button-to-top" role="button"><span>Back to top</span></button><!-- Button "To top" -->

        <div class="widget-wrapper">
            <div class="container">
                <div class="row">
                    <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                        <div class="widget">
                            <a class="htlfndr-logo navbar-brand" href="#">
                                <img src="images/logo.png" height="20" width="30" alt="Logo" />
                                <p class="htlfndr-logo-text">hotel <span>finder</span></p>
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
                                <li class="menu-item active"><a href="index.html">home</a></li>
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
                            <form>
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

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--Head, header and Navigation Content for website--%>
<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

<noscript><h2>You have JavaScript disabled!</h2></noscript>
</header>

<!-- Start of main content -->
<div class="container">
    <!-- Progress steps -->
    <div class="htlfndr-steps">
        <ul class="htlfndr-progress">
            <li>
                <span class="htlfndr-step-number">1</span> <span class="htlfndr-step-description">results</span>
            </li>
            <li><a href="javascript: window.history.go(-2)">
                <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">hotel</span></a>
            </li>
            <li class="htlfndr-active-step">
                <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">room</span>
            </li>
            <li>
                <span class="htlfndr-step-number">4</span> <span class="htlfndr-step-description">payment</span>
            </li>
        </ul>
    </div><!-- .htlfndr-steps -->

    <div class="row htlfndr-page-content htlfndr-room-page">
        <main id="htlfndr-main-content" class="col-sm-12 col-md-8 col-lg-9 htlfndr-hotel-single-content" role="main">
            <article class="post htlfndr-room-post">
                <header>
                    <h1 class="htlfndr-entry-title">Double room </h1><a
                        href="hotel-page-v1.html"><span>/${newBookingInProcess.hotel.name}</span></a><br/>
                    <div class="alert alert-danger" style="font-weight: bold"> <i class="fa fa-info"></i>10% of discount just for members </div>
                </header>
                <!-- Article slider -->
                <div id="htlfndr-room-slider" class="owl-carousel">
                    <div class="htlfndr-room-slide-wrapper">
                        <img src="http://placehold.it/845x495" alt="room picture" />
                    </div><!-- .htlfndr-room-slide-wrapper -->
                    <div class="htlfndr-room-slide-wrapper">
                        <img src="http://placehold.it/845x495" alt="room picture" />
                    </div><!-- .htlfndr-room-slide-wrapper -->
                    <div class="htlfndr-room-slide-wrapper">
                        <img src="http://placehold.it/845x495" alt="room picture" />
                    </div><!-- .htlfndr-room-slide-wrapper -->
                    <div class="htlfndr-room-slide-wrapper">
                        <img src="http://placehold.it/845x495" alt="room picture" />
                    </div><!-- .htlfndr-room-slide-wrapper -->
                    <div class="htlfndr-room-slide-wrapper">
                        <img src="http://placehold.it/845x495" alt="room picture" />
                    </div><!-- .htlfndr-room-slide-wrapper -->
                </div><!-- #htlfndr-room-slider -->

                <div class="htlfndr-entry-content">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis mi at purus consequat tristique vitae vitae nibh. Maecenas lacinia augue ex, volutpat ultricies diam molestie vel. Donec arcu velit, aliquam consectetur sollicitudin sit amet, maximus ac arcu. Proin ut commodo erat. Donec id hendrerit arcu. Fusce sed ornare nulla, sit amet vulputate est. Phasellus aliquet dictum ligula ut efficitur. Vestibulum augue libero, cursus sed volutpat quis, aliquam et mi. Fusce finibus, ligula eu efficitur tempor, magna mi aliquet nisl, eu commodo metus est non eros. Quisque eu magna volutpat, facilisis velit eget, semper libero. Quisque finibus rutrum leo, vel convallis dolor gravida vel. Pellentesque ac odio ex. Praesent ac nunc ante.</p>
                    <p>Curabitur sit amet sem et leo pellentesque maximus sed a ligula. Fusce fermentum justo et arcu elementum, id dapibus urna eleifend. Ut ut libero a augue volutpat tincidunt in id arcu.</p>
                </div><!-- .htlfndr-entry-content -->

                <footer>
                    <div class="htlfndr-blue-title">more availability rooms</div>
                    <div class="htlfndr-more-avilability-rooms">
                        <div class="htlfndr-available-room htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-room-page.html"><img src="http://placehold.it/110x75" alt="avilable room"/></a>
                            </div><!-- .htlfndr-hotel-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <h6 class="htlfndr-post-title"><a href="hotel-room-page.html">Classic Room</a></h6>
                                <p>per night</p>
                                <span class="htlfndr-cost-normal">$ 150</span>
                            </div><!-- .htlfndr-hotel-info -->
                        </div><!-- .htlfndr-available-room -->
                        <hr />
                        <div class="htlfndr-available-room htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-room-page.html"><img src="http://placehold.it/110x75" alt="avilable room"/></a>
                            </div><!-- .htlfndr-hotel-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <h6 class="htlfndr-post-title"><a href="hotel-room-page.html">Twin Room</a></h6>
                                <p>per night</p>
                                <span class="htlfndr-cost-normal">$ 200</span>
                            </div><!-- .htlfndr-hotel-info -->
                        </div><!-- .htlfndr-available-room -->
                        <hr />
                        <div class="htlfndr-available-room htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-room-page.html"><img src="http://placehold.it/110x75" alt="avilable room"/></a>
                            </div><!-- .htlfndr-hotel-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <h6 class="htlfndr-post-title"><a href="hotel-room-page.html">Family Suite</a></h6>
                                <p>per night</p>
                                <span class="htlfndr-cost-normal">$ 400</span>
                            </div><!-- .htlfndr-hotel-info -->
                        </div><!-- .htlfndr-available-room -->
                    </div><!-- .htlfndr-more-avilability-rooms -->
                </footer>
            </article><!-- .post .htlfndr-room-post -->
        </main><!-- .htlfndr-hotel-single-content -->

        <aside id="htlfndr-right-sidebar" class="col-sm-12 col-md-4 col-lg-3 htlfndr-sidebar htlfndr-sidebar-in-right" role="complementary">

            <div class="widget htlfndr-hotel-visit-card special-offer">
                <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                    <div class="htlfndr-hotel-logo">
                        <img src="http://placehold.it/105x75" alt="Hotel logo" />
                    </div><!-- .htlfndr-hotel-logo -->
                    <div class="htlfndr-hotel-price">
                        <c:forEach items="${averagePrices}" var="averagePrice">
                            <c:if test="${averagePrice.key.equals('DOUBLE_MEMBERS_STANDARD')}">
                                 <span class="htlfndr-cost" style="font-size: 40px">${averagePrice.value} zł</span>
                             </c:if>
                        </c:forEach><br/>
                        <div>
                            <span style="padding-top: 10px">price</span> <span>  for 1 night</span>
                        </div>
                    </div> <!-- .htlfndr-hotel-price -->
                </div><!-- .htlfndr-widget-main-content -->
            </div><!-- .widget .htlfndr-hotel-visit-card -->

            <%--  Form to PayAndConfirm Booking form--%>
            <form:form action="/members/booking/payment" method="POST">
                <input name="roomAndRateKey" id="roomAndRateKey" value="DOUBLE_MEMBERS_STANDARD" type="hidden">
                <c:forEach items="${averagePrices}" var="averagePrice">
                    <c:if test="${averagePrice.key.equals('DOUBLE_MEMBERS_STANDARD')}">
                         <input name="avgPricePerNight" id="avgPricePerNight" value="${averagePrice.value}" type="hidden">
                    </c:if>
                </c:forEach>
                <input class="htlfndr-book-now-button" type="submit" value="book now" style="margin-bottom: 0"/>
            </form:form>
            <%--END -  Form to PayAndConfirm Booking form--%>

            <div>
                <button type="button" class="btn btn-primary btn-lg btn btn-danger" onclick="history.back()" style="width: 100%; margin-bottom: 15%; height: 50px ">back</button>
            </div>
            <div class="widget htlfndr-room-details">
                <div id="htlfndr-accordion-1" class="htlfndr-widget-main-content htlfndr-widget-padding">
                    <h2 class="widget-title htlfndr-accordion-title">room details</h2>
                    <div class="htlfndr-accordion-inner">
                        <p class="htlfndr-details"><span>beds:</span> <span>1 double bed</span></p>
                        <p class="htlfndr-details"><span>floor area:</span> <span>19 m<sup>2</sup></span></p>
                        <p class="htlfndr-details"><span>max guests:</span> <span>7</span></p>
                        <p class="htlfndr-details"><span>max kids:</span> <span>3</span></p>
                        <ul class="htlfndr-details-list">
                            <li>Free wired Internet</li>
                            <li>Coffee/tea maker</li>
                            <li>Air conditioning</li>
                            <li>Cable TV service</li>
                            <li>Free newspaper</li>
                            <li>Hair dryer</li>
                        </ul>
                    </div><!-- .htlfndr-accordion-inner -->
                </div><!-- .htlfndr-widget-main-content .htlfndr-accordion -->
            </div><!-- .widget .htlfndr-room-details -->

        </aside><!-- .htlfndr-sidebar-in-right -->
    </div><!-- .row .htlfndr-page-content -->
</div><!-- .container -->
<!-- End of main content -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
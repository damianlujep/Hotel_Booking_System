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
                    <span class="htlfndr-step-number">1</span> <span class="htlfndr-step-description">results</span></a>
                </li>
                <li><a href="javascript: window.history.go(-1)">
                    <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">Hotel</span></a>
                </li>
                <li  class="htlfndr-active-step">
                    <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">rooms and rates</span>
                </li>
                <li>
                    <span class="htlfndr-step-number">4</span> <span class="htlfndr-step-description">payment</span>
                </li>
            </ul>
        </div><!-- .htlfndr-steps -->

        <div class="row htlfndr-room-page htlfndr-search-rooms">
            <main id="htlfndr-main-content" class="col-sm-12 col-md-9 col-lg-9 htlfndr-search-result htlfndr-grid-view" role="main">
                <h2 class="htlfndr-search-result-title"><span>${roomsAvailableList.size() * 4}</span> room offers found</h2>
                <h4 class="htlfndr-hotel-title"><a href="javascript: window.history.go(-1)">/${newBookingInProcess.hotel.name}</a></h4>

                <h4 >Arrival Date: <span style="color: #f457a1; padding-right: 1cm">${newBookingInProcess.arrivalDate}</span>
                Departure Date: <span style="color:#f457a1;">${newBookingInProcess.departureDate}</span></h4>

                <c:if test="${roomsAvailableList.size() > 0}">

                <!-- Sorting navigation section -->
                <div class="htlfndr-search-result-sorting row">
                    <div class="col-md-12">
                        <!-- Change view buttons -->
                        <div class="htlfndr-view">
                            <button id="htlfndr-grid" class="htlfndr-active" data-toggle="tooltip" data-placement="top" title="Grid view" role="button">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <button id="htlfndr-row" data-toggle="tooltip" data-placement="top" title="Row view" role="button">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div><!-- .htlfndr-view -->

                    </div><!-- .col-md-12 -->
                </div><!-- .htlfndr-search-result-sorting .row -->

                <section class="row htlfndr-search-result-content">
                    <c:forEach items="${roomsAvailableList}" var="roomType">
                        <c:if test="${roomType.name.equals('Twin room')}">
                    <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post">
                            <a href="hotel-room-page.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title"><a href="hotel-room-page.html">Twin Room</a></h2>
                                    <div class="htlfndr-rating-stars" data-rating="5">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>188</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/1"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('TWIN_STANDARD')}">
                                        <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Double room')}">
                    <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post">
                            <a href="hotel-room-page.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title"><a href="hotel-room-page.html">Double Room</a></h2>
                                    <div class="htlfndr-rating-stars" data-rating="5">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>188</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/1"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('DOUBLE_STANDARD')}">
                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Twin room')}">
                    <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post special-offer">
                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title">
                                        <a href="hotel-room-page.html">Twin Room</a></h2>
                                    <span style="color: #f457a1">NON-REFUNDABLE OFFER</span>
                                    <div class="htlfndr-rating-stars" data-rating="3">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/2"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('TWIN_PROMOTIONAL')}">
                                        <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Double room')}">
                    <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post special-offer">
                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title">
                                        <a href="hotel-room-page.html">Double Room</a></h2>
                                    <span style="color: #f457a1">NON-REFUNDABLE OFFER</span>
                                    <div class="htlfndr-rating-stars" data-rating="3">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/2"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('DOUBLE_PROMOTIONAL')}">
                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                </c:forEach>

                </section><!-- .row .htlfndr-search-result-content -->

                <h3 class="htlfndr-search-result-title">
                    <span style="color: #f457a1 ">10%</span> of discount for <span>MEMBERS</span></h3>
                <p></p>

                <section class="row htlfndr-search-result-content">

                    <c:forEach items="${roomsAvailableList}" var="roomType">
                        <c:if test="${roomType.name.equals('Twin room')}">
                        <div class="col-md-4 htlfndr-hotel-post-wrapper">
                                        <div class="htlfndr-hotel-post special-offer">
                                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                                <img src="http://placehold.it/260x155" alt="pic" />
                                            </a>
                                            <div class="htlfndr-hotel-description">
                                                <div class="htlfndr-description-content">
                                                    <h2 class="htlfndr-entry-title"><a href="hotel-room-page.html">Twin Room</a></h2>
                                                    <div class="htlfndr-rating-stars" data-rating="3">
                                                        <i class="fa fa-star htlfndr-star-color"></i>
                                                        <i class="fa fa-star htlfndr-star-color"></i>
                                                        <i class="fa fa-star htlfndr-star-color"></i>
                                                        <i class="fa fa-star htlfndr-star-color"></i>
                                                        <i class="fa fa-star htlfndr-star-color"></i>
                                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                                    </div><!-- .htlfndr-rating-stars -->
                                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                                </div><!-- .htlfndr-description-content -->
                                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/3"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                                <div class="htlfndr-hotel-price">
                                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                                        <c:if test="${averagePrice.key.equals('TWIN_MEMBERS_STANDARD')}">
                                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </div><!-- .htlfndr-Spagere-price -->
                                            </div><!-- .htlfndr-Spagere-description -->
                                        </div><!-- .htlfndr-Spagere-post -->
                                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Double room')}">
                        <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post special-offer">
                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title"><a href="hotel-room-page.html">Double Room</a></h2>
                                    <div class="htlfndr-rating-stars" data-rating="3">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/3"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('DOUBLE_MEMBERS_STANDARD')}">
                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Twin room')}">
                        <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post special-offer">
                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title">
                                        <a href="hotel-room-page.html">Twin Room</a></h2>
                                    <span style="color: #f457a1">NON-REFUNDABLE OFFER</span>
                                    <div class="htlfndr-rating-stars" data-rating="3">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/4"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('TWIN_MEMBERS_PROMOTIONAL')}">
                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>

                        <c:if test="${roomType.name.equals('Double room')}">
                        <div class="col-md-4 htlfndr-hotel-post-wrapper">
                        <div class="htlfndr-hotel-post special-offer">
                            <a href="hotel-room-page-special-offer.html" class="htlfndr-hotel-thumbnail">
                                <img src="http://placehold.it/260x155" alt="pic" />
                            </a>
                            <div class="htlfndr-hotel-description">
                                <div class="htlfndr-description-content">
                                    <h2 class="htlfndr-entry-title">
                                        <a href="hotel-room-page.html">Double Room</a></h2>
                                    <span style="color: #f457a1">NON-REFUNDABLE OFFER</span>
                                    <div class="htlfndr-rating-stars" data-rating="3">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <p class="htlfndr-hotel-reviews">(<span>118</span> reviews)</p>
                                    </div><!-- .htlfndr-rating-stars -->
                                    <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>${newBookingInProcess.city}</a></h5>
                                    <p class="htlfndr-last-booking">Last booking: <span>14</span> hours ago</p>
                                </div><!-- .htlfndr-description-content -->
                                <a href="<c:url value="/booking/roomAndRate/${roomType.id}/4"/>" role="button" class="htlfndr-select-hotel-button">select</a>
                                <div class="htlfndr-hotel-price">
                                    <c:forEach items="${averagePrices}" var="averagePrice">
                                        <c:if test="${averagePrice.key.equals('DOUBLE_MEMBERS_PROMOTIONAL')}">
                                            <span class="htlfndr-cost">${averagePrice.value} zł</span> <span class="htlfndr-per-night">per night</span>
                                        </c:if>
                                    </c:forEach>
                                </div><!-- .htlfndr-Spagere-price -->
                            </div><!-- .htlfndr-Spagere-description -->
                        </div><!-- .htlfndr-Spagere-post -->
                    </div><!-- .col-md-4.htlfndr-Spagere-post-wrapper -->
                        </c:if>
                    </c:forEach>
                </section>
                </c:if>
            </main><!-- .htlfndr-search-result -->

            <aside id="htlfndr-right-sidebar" class="col-sm-12 col-md-3 col-lg-3 htlfndr-sidebar htlfndr-sidebar-in-right" role="complementary">
                <div class="widget htlfndr-hotel-visit-card htlfndr-modify-search-aside">
                    <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                        <div class="htlfndr-hotel-logo">
                            <img src="http://placehold.it/105x75" alt="hotel logo" />
                        </div><!-- .htlfndr-Spagere-logo -->

                        <form:form modelAttribute="roomsSearching" method="POST" action="/booking/updateArrivalAndDepartureDates">
                            <form:input path="city" value="${roomsSearching.city}" type="hidden"/>

                            <div class="htlfndr-float-input first-float">
                                <label for="htlfndr-date-in" class="htlfndr-input-label">Check in</label>
                                <div id="htlfndr-input-date-in" class="htlfndr-input-wrapper">
                                    <form:input path="arrivalDate" type="text" name="htlfndr-date-in" id="htlfndr-date-in" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div><!-- #htlfndr-input-date-in.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                            <div class="htlfndr-float-input">
                                <label for="htlfndr-date-out" class="htlfndr-input-label">Check out</label>
                                <div id="htlfndr-input-date-out" class="htlfndr-input-wrapper">
                                    <form:input path="departureDate" type="text" name="htlfndr-date-out" id="htlfndr-date-out" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div><!-- #htlfndr-input-date-out.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                            <!-- Section with selects -->
                            <section class="htlfndr-select-block">
                                <div class="htlfndr-input-wrapper htlfndr-small-select" style="width: 55%">
                                    <label for="htlfndr-adult" class="htlfndr-input-label">Guests</label>
                                    <form:select path="guestsQuantity" name="htlfndr-adult" id="htlfndr-adult" class="htlfndr-dropdown">
                                        <form:option value="1">1</form:option>
                                        <form:option value="2">2</form:option>
                                    </form:select>
                                </div><!-- .htlfndr-input-wrapper .htlfndr-small-select -->

                            </section>
                            <div class="clearfix"></div>
                            <input type="submit" value="search"/>
                        </form:form>
                    </div><!-- .htlfndr-widget-main-content -->
                </div><!-- .widget .htlfndr-Spagere-visit-card -->
                <div class="widget htlfndr-widget-help">
                    <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                        <h3 class="widget-title">need our help</h3>
                        <span>24/7 dedicated customer support</span>
                        <p class="htlfndr-phone">+48 123 456 789</p>
                        <p class="htlfndr-mail">support@hotelbookingsystem.pl</p>
                    </div><!-- .htlfndr-widget-main-content .htlfndr-widget-padding -->
                </div><!-- .widget .htlfndr-widget-help -->
            </aside><!-- .htlfndr-sidebar-in-right -->
        </div><!-- .row -->
    </div><!-- .container -->
    <!-- End of main content -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
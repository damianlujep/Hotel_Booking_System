<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--Head, header and Navigation Content for website--%>
<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

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
                    <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">hotel</span>
                </li>
                <li>
                    <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">rooms and rates</span>
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

                        <form:form method="POST" action="/booking/results" modelAttribute="hotelSearching" name="search-hotel" id="search-hotel">
                            <label for="htlfndr-city" class="htlfndr-input-label">Your destination</label>
                            <div id="htlfndr-input-1" class="htlfndr-input-wrapper">
                                <form:select path="city" items="${allCitiesList}" id="htlfndr-city" class="htlfndr-dropdown"
                                             placeholder="Enter city, region or district"/>
                            </div>
                            <!-- #htlfndr-input-1.htlfndr-input-wrapper -->

                            <div class="htlfndr-float-input first-float">
                                <label for="htlfndr-date-in" class="htlfndr-input-label">Check in</label>
                                <div id="htlfndr-input-date-in" class="htlfndr-input-wrapper">
                                    <label for="htlfndr-date-in" class="sr-only">Date in</label>
                                    <form:input path="arrivalDate" type="text" name="htlfndr-date-in" id="htlfndr-date-in" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div>
                                <!-- #htlfndr-input-date-in.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                            <div class="htlfndr-float-input">
                                <label for="htlfndr-date-out" class="htlfndr-input-label">Check out</label>
                                <div id="htlfndr-input-date-out" class="htlfndr-input-wrapper">
                                    <form:input path="departureDate" type="text" name="htlfndr-date-out" id="htlfndr-date-out" class="search-hotel-input"/>
                                    <button type="button" class="htlfndr-clear-datepicker"></button>
                                </div>
                                <!-- #htlfndr-input-date-out.htlfndr-input-wrapper -->
                            </div><!-- .htlfndr-float-input -->

                                <div class="htlfndr-input-wrapper htlfndr-small-select" style="width: 55%">
                                    <label for="htlfndr-adult" class="htlfndr-input-label">Guests</label>
                                    <form:select path="guestsQuantity" name="htlfndr-dropdown" id="htlfndr-adult" class="htlfndr-dropdown" style="height: auto">
                                        <form:option value="1">1</form:option>
                                        <form:option value="2">2</form:option>
                                    </form:select>
                                </div><!-- .htlfndr-input-wrapper .htlfndr-small-select -->
                            </section>
                                <input type="submit" value="search" class="btn-primary"/>
                        </form:form>
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
                <h2 class="htlfndr-search-result-title">
                    <span style="color: #f457a1">${hotelFoundList.size()}</span>
                    result(s) found in
                    <span>Kraków</span>
                    from <span style="color: #f457a1">2020-12-01</span>
                    to <span style="color:#f457a1;">2020-12-02</span></h2>
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

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                <li><a href="javascript: window.history.go(-3)">
                    <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">Hotel</span></a>
                </li>
                <li><a href="javascript: window.history.go(-1)">
                    <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">room</span></a>
                </li>
                <li class="htlfndr-active-step">
                    <span class="htlfndr-step-number">4</span> <span class="htlfndr-step-description">payment</span>
                </li>
            </ul>
        </div><!-- .htlfndr-steps -->

        <div class="row htlfndr-payment-page">
            <main id="htlfndr-main-content" class="col-sm-12 col-md-8 col-lg-8" role="main">
                <form:form action="/booking/confirmReservation" id="htlfndr-payment-form" method="POST" modelAttribute="payAndConfirmForm">
                    <section class="htlfndr-form-section">
                        <header>
                            <h2 class="htlfndr-form-section-title">Your personal <span>information</span></h2>
                            <c:if test="${currentAdminLogged == null}">
                            <h5 class="htlfndr-form-section-description"><a href="<c:url value="/login"/>" data-toggle="modal">
                                <span class="htlfndr-sing-in-link">Sing in</span></a> for fast booking or enter your personal information</h5>
                            </c:if>
                        </header>
                        <hr />
                        <div class="htlfndr-form-block">
                            <div class="htlfndr-form-block-inner">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-name" class="htlfndr-required htlfndr-top-label">First name</label>
                                        <form:input path="payerFirstName" type="text" id="htlfndr-personal-name" name="htlfndr-personal-name" class="htlfndr-input"
                                               placeholder="Enter your first name" cssStyle="margin-bottom: 10px" />
                                        <form:errors path="payerFirstName" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-last-name" class="htlfndr-required htlfndr-top-label">Last name</label>
                                        <form:input path="payerLastName" type="text" id="htlfndr-personal-last-name" name="htlfndr-personal-last-name" class="htlfndr-input"
                                               placeholder="Enter your last name" cssStyle="margin-bottom: 10px" />
                                        <form:errors path="payerLastName" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-email" class="htlfndr-required htlfndr-top-label">Email</label>
                                        <form:input path="payerEmail" type="text" id="htlfndr-personal-email" name="htlfndr-personal-email" class="htlfndr-input"
                                               placeholder="Enter your email" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="payerEmail" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-birth-day" class="htlfndr-required htlfndr-top-label">Date of birth</label>
                                        <div class="htlfndr-select htlfndr-input-wrapper">
                                            <form:input path="payerDateOfBirth" type="date" class="htlfndr-input" id="htlfndr-personal-birth-day" cssStyle="margin-bottom: 10px"/>
                                            <form:errors path="payerDateOfBirth" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-email" class="htlfndr-required htlfndr-top-label">Phone number</label>
                                        <form:input path="payerPhoneNumber" type="text" id="htlfndr-personal-phone" name="htlfndr-personal-phone" class="htlfndr-input"
                                                    placeholder="Enter your phone number" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="payerPhoneNumber" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div><!-- .row -->
                            </div><!-- .htlfndr-form-block-inner -->
                        </div><!-- .htlfndr-form-block -->
                    </section><!-- .htlfndr-form-section -->

                    <section class="htlfndr-form-section">
                        <header>
                            <h2 class="htlfndr-form-section-title">Your Card <span>information</span></h2>
                            <h5 class="htlfndr-form-section-description">Please enter the details of your payment card</h5>
                        </header>
                        <hr />
                        <div class="htlfndr-form-block">
                            <div class="htlfndr-form-block-inner">
                                <label class="htlfndr-top-label">Credit Card Type</label>
                                <div id="htlfndr-radio-card">
                                    <label for="htlfndr-visa"></label>
                                    <form:radiobutton path="creditCardType" name="htlfndr-card" id="htlfndr-visa" value="visa" />
                                    <label for="htlfndr-paypal"></label>
                                    <form:radiobutton path="creditCardType" name="htlfndr-card" id="htlfndr-paypal" value="paypal" />
                                    <label for="htlfndr-mastercard"></label>
                                    <form:radiobutton path="creditCardType" name="htlfndr-card" id="htlfndr-mastercard" value="mastercard" />
                                    <label for="htlfndr-amex"></label>
                                    <form:radiobutton path="creditCardType" name="htlfndr-card" id="htlfndr-amex" value="american-express" />

                                </div><!-- .htlfndr-radio-card -->
                                <form:errors path="creditCardType" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-card-number" class="htlfndr-required htlfndr-top-label">Card number</label>
                                        <form:input path="creditCardNumber" type="text" id="htlfndr-card-number" name="htlfndr-card-number" class="htlfndr-input"
                                               placeholder="Enter your card number" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="creditCardNumber" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-card-holder" class="htlfndr-required htlfndr-top-label">Card holder name</label>
                                        <form:input path="cardHolder" type="text" id="htlfndr-card-holder" name="htlfndr-card-holder" class="htlfndr-input"
                                               placeholder="Enter your card holder name" cssStyle="margin-bottom: 10px" />
                                        <form:errors path="cardHolder" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="htlfndr-top-label htlfndr-required">Expiration date</label>
                                        <div class="htlfndr-small-select htlfndr-input-wrapper">
                                            <label for="htlfndr-card-month" class="sr-only">card expiration month</label>
                                            <form:select path="creditCardExpirationMonth" name="htlfndr-card-month" id="htlfndr-card-month" class="htlfndr-dropdown">
                                                <form:option value="0" disabled="disabled" selected="selected">Month</form:option>
                                                <form:option value="1">January</form:option>
                                                <form:option value="2">February</form:option>
                                                <form:option value="3">March</form:option>
                                                <form:option value="4">April</form:option>
                                                <form:option value="5">May</form:option>
                                                <form:option value="6">June</form:option>
                                                <form:option value="7">July</form:option>
                                                <form:option value="8">August</form:option>
                                                <form:option value="9">September</form:option>
                                                <form:option value="10">October</form:option>
                                                <form:option value="11">November</form:option>
                                                <form:option value="12">December</form:option>
                                            </form:select>
                                            <form:errors path="creditCardExpirationMonth" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
                                        <div class="htlfndr-small-select htlfndr-input-wrapper">
                                            <label for="htlfndr-card-year" class="sr-only">card expiration year</label>
                                            <form:select path="creditCardExpirationYear" name="htlfndr-card-year" id="htlfndr-card-year" class="htlfndr-dropdown">
                                                <form:option value="0" disabled="disabled" selected="selected">Year</form:option>
                                                <form:option value="2020">2020</form:option>
                                                <form:option value="2021">2021</form:option>
                                                <form:option value="2022">2022</form:option>
                                                <form:option value="2023">2023</form:option>
                                                <form:option value="2024">2024</form:option>
                                                <form:option value="2025">2025</form:option>
                                                <form:option value="2026">2026</form:option>
                                                <form:option value="2027">2027</form:option>
                                                <form:option value="2028">2028</form:option>
                                                <form:option value="2029">2029</form:option>
                                                <form:option value="2030">2030</form:option>
                                            </form:select>
                                            <form:errors path="creditCardExpirationYear" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3">
                                        <label for="htlfndr-card-code" class="htlfndr-required htlfndr-top-label">Security code</label>
                                        <form:input path="securityCode" type="text" id="htlfndr-card-code" name="htlfndr-card-code" class="htlfndr-input"
                                               placeholder="xxx" maxlength="3" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="securityCode" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div><!-- .row -->
                            </div><!-- .htlfndr-form-block-inner -->
                        </div><!-- .htlfndr-form-block -->
                    </section><!-- .htlfndr-form-section -->

                    <section class="htlfndr-form-section">
                        <header>
                            <h2 class="htlfndr-form-section-title">Billing <span>Address</span></h2>
                            <h5 class="htlfndr-form-section-description">Please enter the details of your address</h5>
                        </header>
                        <hr />
                        <div class="htlfndr-form-block">
                            <div class="htlfndr-form-block-inner">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="htlfndr-city" class="htlfndr-required htlfndr-top-label">City</label>
                                        <form:input path="city" type="text" id="htlfndr-city" name="htlfndr-city" class="htlfndr-input"
                                               placeholder="Enter city name" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="city" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label for="htlfndr-country" class="htlfndr-required htlfndr-top-label">Country</label>
                                        <form:input path="country" type="text" id="htlfndr-country" name="htlfndr-country" class="htlfndr-input"
                                               placeholder="Enter country" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="country" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="htlfndr-postal-code" class="htlfndr-required htlfndr-top-label">Postal code</label>
                                        <form:input path="postalCode" type="text" id="htlfndr-postal-code" name="htlfndr-postal-code" class="htlfndr-input"
                                               placeholder="xxxxx" maxlength="8" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="postalCode" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-bil-address" class="htlfndr-required htlfndr-top-label">Billing Address</label>
                                        <form:input path="billingAddress" type="text" id="htlfndr-bil-address" name="htlfndr-bil-address" class="htlfndr-input"
                                               placeholder="Enter billing address" cssStyle="margin-bottom: 10px"/>
                                        <form:errors path="billingAddress" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                                    </div>
                                </div>
                            </div><!-- .htlfndr-form-block-inner -->
                        </div><!-- .htlfndr-form-block -->
                    </section><!-- .htlfndr-form-section -->

                    <section class="htlfndr-form-section htlfndr-form-review-section">
                        <header>
                            <h2 class="htlfndr-form-section-title">Review and <span>book your Trip</span></h2>
                        </header>
                        <hr />
                        <c:if test="${isNonRefOffer.equals(true)}">
                            <h3 class="htlfndr-attention">Attention! Please read important booking information!</h3>
                            <ul class="htlfndr-list">
                                <li>This special discounted rate is non-refundable. If you choose to change or cancel this booking you will not be refunded any of the payment.</li>
                            </ul>
                        </c:if>
                        <p class="htlfndr-long-checkbox">
                            <form:checkbox path="acceptRulesAndRestrictions" name="htlfndr-accept" id="htlfndr-accept" cssStyle="margin-bottom: 5px"/>
                            <label for="htlfndr-accept" id="htlfndr-accept-label">By selecting to complete this booking I acknowledge that I have read and accept the
                                <a href="#" class="htlfndr-rules">Rules & Restrictions</a></label>
                            <form:errors path="acceptRulesAndRestrictions" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto;"/>
                        </p>
<%--                        <div class="htlfndr-warning-message">--%>
<%--                            <i class="fa fa-exclamation-triangle"></i>--%>
<%--                            <p>some fields are filled incorrectly!</p>--%>
<%--                        </div><!-- .htlfndr-warning-message -->--%>

                        <input type="submit" class="htlfndr-payment-submit" value="complete booking">
                    </section><!-- .htlfndr-form-section -->
                </form:form>
            </main><!-- #htlfndr-main-content -->

            <aside id="htlfndr-right-sidebar" class="col-sm-12 col-md-4 col-lg-offset-1 col-lg-3 htlfndr-sidebar htlfndr-sidebar-in-right" role="complementary">
                <div class="htlfndr-booking-details">
                    <div class="widget">
                        <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                            <h3 class="widget-title">booking details</h3>
                            <div class="htlfndr-widget-block htlfndr-table-view">
                                <div class="htlfndr-hotel-thumbnail">
                                    <a href="Spagere-page-v1.html">
                                        <img src="http://placehold.it/110x75" alt="Hotel picture" />
                                    </a>
                                </div><!-- .htlfndr-Spagere-logo -->
                                <div class="htlfndr-hotel-info">
                                    <a href="Spagere-page-v1.html"><h3>${newBookingInProcess.hotel.name}</h3></a>
                                    <div class="htlfndr-rating-stars">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                    </div> <!-- .htlfndr-rating-stars -->
                                    <p class="htlfndr-location">${newBookingInProcess.hotel.city}</p>
                                </div>
                            </div><!-- .htlfndr-widget-block -->
                            <div class="htlfndr-widget-block htlfndr-bigger-font">
                                <p class="htlfndr-details"><span>1 room:</span> <a href="Spagere-room-page.html"><span>${selectedRoomType}</span></a></p>
                                <p class="htlfndr-details"><span>check-in:</span> <span>${newBookingInProcess.arrivalDate}</span></p>
                                <p class="htlfndr-details"><span>check-out:</span> <span>${newBookingInProcess.departureDate}</span></p>
                                <p class="htlfndr-details"><span>persons:</span> <span>${newBookingInProcess.guestsQuantity}</span></p>
                            </div><!-- .htlfndr-widget-block -->
                            <div class="htlfndr-widget-block htlfndr-bigger-font">
                                <p class="htlfndr-room-cost"><span>Avg. price per night</span> <span>${newBookingInProcess.avgPricePerNight} zł</span></p>
                                <p class="htlfndr-room-cost"><span>Extra fees</span> <span>0 zł</span></p>
                            </div><!-- .htlfndr-widget-block -->
                            <p class="htlfndr-total-price">total price:</p>
                            <div class="htlfndr-hotel-price">
                                <span class="htlfndr-cost" style="font-size: 23px; margin: 0">${newBookingInProcess.totalPrice} zł</span>
                            </div><!-- .htlfndr-Spagere-price -->
                        </div><!-- .htlfndr-widget-main-content -->
                    </div><!-- .widget -->
                </div><!-- .htlfndr-booking-details -->
                <div class="widget htlfndr-widget-help">
                    <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                        <h3 class="widget-title">need our help</h3>
                        <span>24/7 dedicated customer support</span>
                        <p class="htlfndr-phone">+(000) 000-000-000</p>
                        <p class="htlfndr-mail">support@Spagere.zendesk.com</p>
                    </div><!-- .htlfndr-widget-main-content .htlfndr-widget-padding -->
                </div><!-- .widget .htlfndr-widget-help -->
            </aside><!-- .htlfndr-sidebar-in-right -->
        </div><!-- .row .htlfndr-payment-page-->
    </div><!-- .container -->
    <!-- End of main content -->

    <!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
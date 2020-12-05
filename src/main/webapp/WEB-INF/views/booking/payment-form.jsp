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
                <li><a href="javascript: window.history.go(-2)">
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
                <form action="thanks-page.html" id="htlfndr-payment-form" method="post">
                    <section class="htlfndr-form-section">
                        <header>
                            <h2 class="htlfndr-form-section-title">Your personal <span>information</span></h2>
                            <h5 class="htlfndr-form-section-description"><a href="#" data-toggle="modal" data-target="#htlfndr-sing-in"><span class="htlfndr-sing-in-link">Sing in</span></a> for fast booking or enter your personal information</h5>
                        </header>
                        <hr />
                        <div class="htlfndr-form-block">
                            <div class="htlfndr-form-block-inner">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-name" class="htlfndr-required htlfndr-top-label">First name</label>
                                        <input type="text" id="htlfndr-personal-name" name="htlfndr-personal-name" class="htlfndr-input"
                                               placeholder="Enter your first name" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-last-name" class="htlfndr-required htlfndr-top-label">Last name</label>
                                        <input type="text" id="htlfndr-personal-last-name" name="htlfndr-personal-last-name" class="htlfndr-input"
                                               placeholder="Enter your last name" />
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-email" class="htlfndr-required htlfndr-top-label">Email</label>
                                        <input type="text" id="htlfndr-personal-email" name="htlfndr-personal-email" class="htlfndr-input"
                                               placeholder="Enter your email" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-personal-birth-day" class="htlfndr-required htlfndr-top-label">Date of birth</label>
                                        <div class="htlfndr-select htlfndr-input-wrapper">
                                            <input type="date" class="htlfndr-input" id="htlfndr-personal-birth-day">
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
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
                                    <input type="radio" name="htlfndr-card" id="htlfndr-visa" value="visa" />
                                    <label for="htlfndr-paypal"></label>
                                    <input type="radio" name="htlfndr-card" id="htlfndr-paypal" value="paypal" />
                                    <label for="htlfndr-mastercard"></label>
                                    <input type="radio" name="htlfndr-card" id="htlfndr-mastercard" value="mastercard" />
                                    <label for="htlfndr-amex"></label>
                                    <input type="radio" name="htlfndr-card" id="htlfndr-amex" value="american-express" />
                                </div><!-- .htlfndr-radio-card -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-card-number" class="htlfndr-required htlfndr-top-label">Card number</label>
                                        <input type="text" id="htlfndr-card-number" name="htlfndr-card-number" class="htlfndr-input"
                                               placeholder="Enter your card number" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-card-holder" class="htlfndr-required htlfndr-top-label">Card holder name</label>
                                        <input type="text" id="htlfndr-card-holder" name="htlfndr-card-holder" class="htlfndr-input"
                                               placeholder="Enter your card holder name" />
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="htlfndr-top-label htlfndr-required">Expiration date</label>
                                        <div class="htlfndr-small-select htlfndr-input-wrapper">
                                            <label for="htlfndr-card-month" class="sr-only">card expiration month</label>
                                            <select name="htlfndr-card-month" id="htlfndr-card-month" class="htlfndr-dropdown">
                                                <option value="" disabled="disabled" selected="selected">Month</option>
                                                <option value="1">January</option>
                                                <option value="2">February</option>
                                                <option value="3">March</option>
                                                <option value="4">April</option>
                                                <option value="5">May</option>
                                                <option value="6">June</option>
                                                <option value="7">July</option>
                                                <option value="8">August</option>
                                                <option value="9">September</option>
                                                <option value="10">October</option>
                                                <option value="11">November</option>
                                                <option value="12">December</option>
                                            </select>
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
                                        <div class="htlfndr-small-select htlfndr-input-wrapper">
                                            <label for="htlfndr-card-year" class="sr-only">card expiration year</label>
                                            <select name="htlfndr-card-year" id="htlfndr-card-year" class="htlfndr-dropdown">
                                                <option value="" disabled="disabled" selected="selected">Year</option>
                                                <option value="1999">1999</option>
                                                <option value="1998">1998</option>
                                                <option value="1997">1997</option>
                                                <option value="1996">1996</option>
                                                <option value="1995">1995</option>
                                                <option value="1994">1994</option>
                                                <option value="1993">1993</option>
                                                <option value="1992">1992</option>
                                                <option value="1991">1991</option>
                                                <option value="1990">1990</option>
                                                <option value="1989">1989</option>
                                                <option value="1988">1988</option>
                                                <option value="1987">1987</option>
                                                <option value="1986">1986</option>
                                                <option value="1985">1985</option>
                                                <option value="1984">1984</option>
                                                <option value="1983">1983</option>
                                                <option value="1982">1982</option>
                                                <option value="1981">1981</option>
                                                <option value="1980">1980</option>
                                                <option value="1979">1979</option>
                                                <option value="1978">1978</option>
                                                <option value="1977">1977</option>
                                                <option value="1976">1976</option>
                                                <option value="1975">1975</option>
                                                <option value="1974">1974</option>
                                                <option value="1973">1973</option>
                                                <option value="1972">1972</option>
                                                <option value="1971">1971</option>
                                                <option value="1970">1970</option>
                                                <option value="1969">1969</option>
                                                <option value="1968">1968</option>
                                                <option value="1967">1967</option>
                                                <option value="1966">1966</option>
                                                <option value="1965">1965</option>
                                                <option value="1964">1964</option>
                                                <option value="1963">1963</option>
                                                <option value="1962">1962</option>
                                                <option value="1961">1961</option>
                                                <option value="1960">1960</option>
                                                <option value="1959">1959</option>
                                                <option value="1958">1958</option>
                                                <option value="1957">1957</option>
                                                <option value="1956">1956</option>
                                                <option value="1955">1955</option>
                                                <option value="1954">1954</option>
                                                <option value="1953">1953</option>
                                                <option value="1952">1952</option>
                                                <option value="1951">1951</option>
                                                <option value="1950">1950</option>
                                                <option value="1949">1949</option>
                                                <option value="1948">1948</option>
                                                <option value="1947">1947</option>
                                                <option value="1946">1946</option>
                                                <option value="1945">1945</option>
                                                <option value="1944">1944</option>
                                                <option value="1943">1943</option>
                                                <option value="1942">1942</option>
                                                <option value="1941">1941</option>
                                                <option value="1940">1940</option>
                                                <option value="1939">1939</option>
                                                <option value="1938">1938</option>
                                                <option value="1937">1937</option>
                                                <option value="1936">1936</option>
                                                <option value="1935">1935</option>
                                                <option value="1934">1934</option>
                                                <option value="1933">1933</option>
                                                <option value="1932">1932</option>
                                                <option value="1931">1931</option>
                                                <option value="1930">1930</option>
                                                <option value="1929">1929</option>
                                                <option value="1928">1928</option>
                                                <option value="1927">1927</option>
                                                <option value="1926">1926</option>
                                                <option value="1925">1925</option>
                                                <option value="1924">1924</option>
                                                <option value="1923">1923</option>
                                                <option value="1922">1922</option>
                                                <option value="1921">1921</option>
                                                <option value="1920">1920</option>
                                                <option value="1919">1919</option>
                                                <option value="1918">1918</option>
                                                <option value="1917">1917</option>
                                                <option value="1916">1916</option>
                                                <option value="1915">1915</option>
                                                <option value="1914">1914</option>
                                                <option value="1913">1913</option>
                                                <option value="1912">1912</option>
                                                <option value="1911">1911</option>
                                                <option value="1910">1910</option>
                                                <option value="1909">1909</option>
                                                <option value="1908">1908</option>
                                                <option value="1907">1907</option>
                                                <option value="1906">1906</option>
                                                <option value="1905">1905</option>
                                                <option value="1904">1904</option>
                                                <option value="1903">1903</option>
                                                <option value="1902">1902</option>
                                                <option value="1901">1901</option>
                                                <option value="1900">1900</option>
                                            </select>
                                        </div><!-- .htlfndr-small-select .htlfndr-input-wrapper -->
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3">
                                        <label for="htlfndr-card-code" class="htlfndr-required htlfndr-top-label">Security code</label>
                                        <input type="text" id="htlfndr-card-code" name="htlfndr-card-code" class="htlfndr-input"
                                               placeholder="xxx" maxlength="3" />
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
                                        <input type="text" id="htlfndr-city" name="htlfndr-city" class="htlfndr-input"
                                               placeholder="Enter city name" />
                                    </div>
                                    <div class="col-md-5">
                                        <label for="htlfndr-country" class="htlfndr-required htlfndr-top-label">Country</label>
                                        <input type="text" id="htlfndr-country" name="htlfndr-country" class="htlfndr-input"
                                               placeholder="Enter country" />
                                    </div>
                                    <div class="col-md-3">
                                        <label for="htlfndr-postal-code" class="htlfndr-required htlfndr-top-label">Postal code</label>
                                        <input type="text" id="htlfndr-postal-code" name="htlfndr-postal-code" class="htlfndr-input"
                                               placeholder="xxxxx" maxlength="8" />
                                    </div>
                                </div><!-- .row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="htlfndr-bil-address" class="htlfndr-required htlfndr-top-label">Billing Address</label>
                                        <input type="text" id="htlfndr-bil-address" name="htlfndr-bil-address" class="htlfndr-input"
                                               placeholder="Enter billing address" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="htlfndr-bil-address-2" class="htlfndr-top-label">Billing Address</label>
                                        <input type="text" id="htlfndr-bil-address-2" name="htlfndr-bil-address-2" class="htlfndr-input" />
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
                        <h3 class="htlfndr-attention">Attention! Please read important booking information!</h3>
                        <ul class="htlfndr-list">
                            <li>This special discounted rate is non-refundable. If you choose to change or cancel this booking you will not be refunded any of the payment.</li>
                        </ul>
                        <p class="htlfndr-long-checkbox">
                            <input type="checkbox" name="htlfndr-accept" id="htlfndr-accept" checked="checked" />
                            <label for="htlfndr-accept" id="htlfndr-accept-label">By selecting to complete this booking I acknowledge that I have read and accept the
                                <a href="#" class="htlfndr-rules">Rules & Restrictions</a></label>
                        </p>
                        <div class="htlfndr-warning-message">
                            <i class="fa fa-exclamation-triangle"></i>
                            <p>some fields are filled incorrectly!</p>
                        </div><!-- .htlfndr-warning-message -->

                        <input type="submit" class="htlfndr-payment-submit" value="complete booking">
                    </section><!-- .htlfndr-form-section -->
                </form>
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
                                    <a href="Spagere-page-v1.html"><h3>Hilton Spagere</h3></a>
                                    <div class="htlfndr-rating-stars">
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                        <i class="fa fa-star htlfndr-star-color"></i>
                                    </div> <!-- .htlfndr-rating-stars -->
                                    <p class="htlfndr-location">san francisco, usa</p>
                                </div>
                            </div><!-- .htlfndr-widget-block -->
                            <div class="htlfndr-widget-block htlfndr-bigger-font">
                                <p class="htlfndr-details"><span>1 room:</span> <a href="Spagere-room-page.html"><span>King Guest Room</span></a></p>
                                <p class="htlfndr-details"><span>check-in:</span> <span>Mon, Apr 15</span></p>
                                <p class="htlfndr-details"><span>check-out:</span> <span>Mon, Apr 17</span></p>
                                <p class="htlfndr-details"><span>persons:</span> <span>2</span></p>
                            </div><!-- .htlfndr-widget-block -->
                            <div class="htlfndr-widget-block htlfndr-bigger-font">
                                <p class="htlfndr-room-cost"><span>1 night price</span> <span>$100</span></p>
                                <p class="htlfndr-room-cost"><span>taxes & fees</span> <span>$30</span></p>
                            </div><!-- .htlfndr-widget-block -->
                            <p class="htlfndr-total-price">total price:</p>
                            <div class="htlfndr-hotel-price">
                                <span class="htlfndr-cost">$ 130</span>
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
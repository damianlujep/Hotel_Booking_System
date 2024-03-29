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
            <li class="htlfndr-active-step">
                <span class="htlfndr-step-number">2</span> <span class="htlfndr-step-description">Hotel</span>
            </li>
            <li>
                <span class="htlfndr-step-number">3</span> <span class="htlfndr-step-description">rooms and rates</span>
            </li>
            <li>
                <span class="htlfndr-step-number">4</span> <span class="htlfndr-step-description">payment</span>
            </li>
        </ul>
    </div><!-- .htlfndr-steps -->

    <div class="row htlfndr-page-content">
        <main id="htlfndr-main-content" class="col-sm-12 col-md-8 col-lg-9 post htlfndr-hotel-single-content" role="main">
            <section id="htlfndr-gallery-and-map-tabs">
                <ul>
                    <li><a href="#htlfndr-gallery-tab-1">photo</a></li>
                    <li><a href="#htlfndr-gallery-tab-2">map</a></li>
                </ul>
                <!-- Start of Spagere slider
                Must be two blocks with same class and same pictures in it -->
                <div id="htlfndr-gallery-tab-1" class="htlfndr-hotel-gallery">
                    <div id="htlfndr-gallery-synced-1" class="htlfndr-gallery-carousel">
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/845x565" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                    </div><!-- .htlfndr-gallery-synced-1 .htlfndr-Spagere-gallery-->
                    <div id="htlfndr-gallery-synced-2" class="htlfndr-gallery-carousel">
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                        <div class="htlfndr-gallery-item">
                            <img src="http://placehold.it/140x95" alt="Spagere img"/>
                        </div><!-- .htlfndr-gallery-item -->
                    </div><!-- .htlfndr-gallery-synced-2 .htlfndr-Spagere-gallery-->
                </div><!-- #htlfndr-gallery-tab-1 .htlfndr-Spagere-gallery -->
                <!-- End of Spagere slider -->
                <div id="htlfndr-gallery-tab-2">
                    <div class="htlfndr-iframe-wrapper">
                        <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4461.6570805764695!2d-122.42764988684334!3d37.74624140010288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2z0KHQsNC9LdCk0YDQsNC90YbQuNGB0LrQviwg0JrQsNC70LjRhNC-0YDQvdC40Y8sINCh0KjQkA!5e0!3m2!1sru!2sua!4v1438339854639"
                                allowfullscreen></iframe>
                    </div><!-- .htlfndr-iframe-wrapper -->
                </div><!-- #htlfndr-gallery-tab-2 -->
            </section><!-- #htlfndr-gallery-and-map-tabs -->

            <section id="htlfndr-hotel-description-tabs">
                <ul>
                    <li class="active" data-number="0"><a href="#htlfndr-hotel-description-tab-1">description</a></li>
                    <li data-number="1"><a href="#htlfndr-hotel-description-tab-2">availability</a></li>
                    <li data-number="2"><a href="#htlfndr-hotel-description-tab-3">amenities</a></li>
                    <li data-number="3"><a href="#htlfndr-hotel-description-tab-4">reviews</a></li>
                    <li data-number="4"><a href="#htlfndr-hotel-description-tab-5">write a review</a></li>
                </ul>
                <div id="htlfndr-hotel-description-tab-1" class="htlfndr-hotel-description-tab">
                    <div class="row">
                        <div class="col-md-5 htlfndr-description-table">
                            <table>
                                <tr>
                                    <th scope="row">type:</th>
                                    <td>Hotel</td>
                                </tr>
                                <tr>
                                    <th scope="row">rating stars:</th>
                                    <td>4 stars</td>
                                </tr>
                                <tr>
                                    <th scope="row">country:</th>
                                    <td>usa</td>
                                </tr>
                                <tr>
                                    <th scope="row">city:</th>
                                    <td>san francisco</td>
                                </tr>
                                <tr>
                                    <th scope="row">address:</th>
                                    <td>Giudeca 810 st.</td>
                                </tr>
                                <tr>
                                    <th scope="row">phone no:</th>
                                    <td>1-800-123-0000</td>
                                </tr>
                                <tr>
                                    <th scope="row">check in:</th>
                                    <td>12-00 pm</td>
                                </tr>
                                <tr>
                                    <th scope="row">check out:</th>
                                    <td>12-00 am</td>
                                </tr>
                                <tr>
                                    <th scope="row">minimum stay:</th>
                                    <td>2 days</td>
                                </tr>
                            </table>
                        </div><!-- .htlfndr-description-table -->
                        <div class="col-md-7 htlfndr-description-right-side">
                            <!-- Using Bootstrap media object class-->
                            <div class="media">
                                <div class="media-left">
                                    <img class="media-object" src="http://placehold.it/90x90" alt="client" />
                                </div><!-- .media-left -->
                                <div class="media-body">
                                    <h5>Hotel manager</h5>
                                    <h4 class="media-heading">Mela Trix</h4>
                                </div><!-- .media-body -->
                            </div><!-- .media -->
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, dolores eveniet laboriosam maxime molestias nulla quidem similique. Amet asperiores at esse expedita iusto magni, nam perferendis sequi? Molestias possimus, quasi. Amet asperiores at esse expedita iusto magni, nam perferendis sequi? Molestias possimus, quasi.</p>
                            </blockquote>
                        </div><!-- .htlfndr-description-right-side -->
                    </div><!-- .row -->
                </div><!-- #htlfndr-Spagere-description-tab-1 .htlfndr-Spagere-description-tab-->
                <div id="htlfndr-hotel-description-tab-2" class="htlfndr-hotel-description-tab">
                    <aside class="htlfndr-sidebar-in-top htlfndr-short-form">
                        <form name="search-hotel" id="search-hotel" class="htlfndr-search-form">
                            <div id="htlfndr-input-date-in" class="htlfndr-input-wrapper">
                                <label for="htlfndr-date-in" class="sr-only">Date in</label>
                                <input type="text" name="htlfndr-date-in" id="htlfndr-date-in" class="search-hotel-input" />
                                <button type="button" class="htlfndr-clear-datepicker"></button>
                            </div><!-- #htlfndr-input-date-in .htlfndr-input-wrapper -->
                            <div id="htlfndr-input-date-out" class="htlfndr-input-wrapper">
                                <label for="htlfndr-date-out" class="sr-only">Date out</label>
                                <input type="text" name="htlfndr-date-out" id="htlfndr-date-out" class="search-hotel-input" />
                                <button type="button" class="htlfndr-clear-datepicker"></button>
                            </div><!-- #htlfndr-input-date-out .htlfndr-input-wrapper -->
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
                            </div><!-- #htlfndr-input-4 .htlfndr-input-wrapper -->
                            <div id="htlfndr-input-5" class="htlfndr-input-wrapper">
                                <input type="submit" value="update" class="btn-default"/>
                            </div><!-- #htlfndr-input-5 .htlfndr-input-wrapper -->
                            <div class="clearfix"></div>
                        </form>
                        <!-- .widget -->
                    </aside><!-- .htlfndr-sidebar .htlfndr-sidebar-in-top -->

                    <section class="htlfndr-available-rooms-section">
                        <header>
                            <h3>available rooms</h3>
                        </header>
                        <article class="htlfndr-tab-article htlfndr-second-tab-post">
                            <div>
                                <div class="htlfndr-post-thumbnail">
                                    <img src="http://placehold.it/230x135" alt="room pic"/>
                                </div>
                                <!-- .htlfndr-post-thumbnail -->
                                <div class="htlfndr-post-wrapper">
                                    <header>
                                        <h2 class="htlfndr-post-title">King Family Suite</h2>
                                    </header>
                                    <h6 class="htlfndr-post-info">max Guests: <span class="htlfndr-guests">7</span> max Kids: <span
                                            class="htlfndr-kids">3</span></h6>
                                    <p class="htlfndr-post-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus
                                        alias beatae debitis deserunt eius esse, explicabo facilis hic!</p>
                                    <p class="htlfndr-button-block"><a class="htlfndr-select-hotel-button" role="button"
                                                                       href="hotel-room-page.html">select</a></p>
                                </div>
                            </div>
                            <div>
                                <div class="htlfndr-post-thumbnail">
                                    <img src="http://placehold.it/230x135" alt="room pic"/>
                                </div>
                                <!-- .htlfndr-post-thumbnail -->

                                <div class="htlfndr-post-wrapper">
                                    <header>
                                        <h2 class="htlfndr-post-title">Twin Room</h2>
                                    </header>
                                    <h6 class="htlfndr-post-info">max Guests: <span class="htlfndr-guests">7</span> max Kids: <span
                                            class="htlfndr-kids">3</span></h6>
                                    <p class="htlfndr-post-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus
                                        alias beatae debitis deserunt eius esse, explicabo facilis hic!</p>
                                    <p class="htlfndr-button-block"><a class="htlfndr-select-hotel-button" role="button"
                                                                       href="hotel-room-page.html">select</a></p>
                                </div>
                            </div>
                            <a href="search-rooms.html">
                                <i class="fa fa-eye"></i>View all avaliable rooms
                            </a>
                        </article><!-- .htlfndr-tab-article .htlfndr-second-tab-post -->
                    </section><!-- .htlfndr-available-rooms-section -->
                </div><!-- #htlfndr-Spagere-description-tab-2 .htlfndr-Spagere-description-tab-->
                <div id="htlfndr-hotel-description-tab-3" class="htlfndr-hotel-description-tab">
                    <article class="htlfndr-tab-article htlfndr-third-tab-post">
                        <header>
                            <h3>amenities of hilton</h3>
                        </header>
                        <p class="htlfndr-post-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium amet, animi consequatur deleniti dignissimos eligendi error esse ex illum iusto officia quos unde! Dolore illum iusto optio, porro rerum voluptates! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis dolorem expedita impedit laboriosam minus nemo nulla numquam similique voluptatem! Distinctio magnam nesciunt sequi. Error eum molestias neque sunt veritatis voluptates!</p>
                        <footer class="row htlfndr-amenities">
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-wifi"></i>
                                </div>
                                <p>Wi-Fi internet</p>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-gamepad"></i>
                                </div>
                                <p>game zone</p>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-life-ring"></i>
                                </div>
                                <p>pool</p>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-cutlery"></i>
                                </div>
                                <p>room service</p>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-wheelchair"></i>
                                </div>
                                <p>wheelchair access</p>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="htlfndr-amenities-icon">
                                    <i class="fa fa-spoon"></i>
                                </div>
                                <p>kitchen</p>
                            </div>
                        </footer>
                    </article><!-- .htlfndr-tab-article .htlfndr-third-tab-post -->
                </div><!-- #htlfndr-Spagere-description-tab-3 .htlfndr-Spagere-description-tab-->
                <div id="htlfndr-hotel-description-tab-4" class="htlfndr-hotel-description-tab">
                    <div class="htlfndr-hotel-marks">
                        <div class="htlfndr-overview-rating">
                            <div class="htlfndr-rating-stars">
                                <i class="fa fa-star htlfndr-star-color"></i>
                                <i class="fa fa-star htlfndr-star-color"></i>
                                <i class="fa fa-star htlfndr-star-color"></i>
                                <i class="fa fa-star htlfndr-star-color"></i>
                                <i class="fa fa-star htlfndr-star-color"></i>
                            </div> <!-- .htlfndr-rating-stars -->
                            <dl>
                                <dt><span>4.8</span> out of 5</dt>
                                <dd>based on <span>123</span> Reviews</dd>
                            </dl>
                        </div><!-- .htlfndr-overview-rating -->
                        <div class="htlfndr-detailed-rating">
                            <table>
                                <tr>
                                    <th>room cleanliness</th>
                                    <td class="htlfndr-meter-cell">
                                        <meter class="htlfndr-meter" value="0.75" min="0" max="1">
                                            <div class="meter-gauge">
                                                <span style="width: 75.00%;"></span>
                                            </div>
                                        </meter>
                                    </td>
                                    <td class="htlfndr-rating-cell">4.5</td>
                                </tr>
                                <tr>
                                    <th>service & staff</th>
                                    <td class="htlfndr-meter-cell">
                                        <meter class="htlfndr-meter" value="0.6" min="0" max="1">
                                            <div class="meter-gauge">
                                                <span style="width: 60.00%;"></span>
                                            </div>
                                        </meter>
                                    </td>
                                    <td class="htlfndr-rating-cell">3</td>
                                </tr>
                                <tr>
                                    <th>room comfort</th>
                                    <td class="htlfndr-meter-cell">
                                        <meter class="htlfndr-meter" value="0.9" min="0" max="1">
                                            <div class="meter-gauge">
                                                <span style="width: 90.00%;"></span>
                                            </div>
                                        </meter>
                                    </td>
                                    <td class="htlfndr-rating-cell">4.8</td>
                                </tr>
                                <tr>
                                    <th>Spagere condition</th>
                                    <td class="htlfndr-meter-cell">
                                        <meter class="htlfndr-meter" value="0.75" min="0" max="1">
                                            <div class="meter-gauge">
                                                <span style="width: 75.00%;"></span>
                                            </div>
                                        </meter>
                                    </td>
                                    <td class="htlfndr-rating-cell">4.5</td>
                                </tr>
                            </table>
                        </div><!-- .htlfndr-detailed-rating -->
                    </div><!-- .htlfndr-Spagere-marks -->

                    <div class="clearfix"></div>

                    <div class="htlfndr-visitor-review">
                        <div class="htlfndr-review-left-side">
                            <div class="htlfndr-visitor-avatar">
                                <img src="http://placehold.it/120x120" alt="visitor photo" />
                            </div><!-- .htlfndr-visitor-avatar -->
                            <div class="htlfndr-visitor-flag">
                                <img src="../../../../../resources/static/images/icon-flag-ukraine.png" alt="visitor flag">
                            </div><!-- .htlfndr-visitor-flag -->
                            <dl>
                                <dt>john doe</dt>
                                <dd>kiev, ukraine</dd>
                            </dl>
                        </div><!-- .htlfndr-review-left-side -->
                        <div class="htlfndr-review-right-side">
                            <article class="htlfndr-visitor-post">
                                <header>
                                    <h3>"Tempus vestibulum mus imperdiet nibh sem"</h3>
                                    <h6>posted 12 May 2015 </h6>
                                </header>
                                <div class="htlfndr-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                </div> <!-- .htlfndr-rating-stars -->
                                <p>Pharetra quis netus vel vehicula class vestibulum nisl donec hendrerit fermentum magna sed amet purus sit nec class sit fringilla tellus volutpat per eget molestie Platea suspendisse eget tortor pharetra magna nam senectus tristique cursus ut odio sollicitudin venenatis natoque dis maecenas magna dignissim sociosqu et sociis accumsan interdum dictum netus quis enim phasellus suscipit nunc donec purus dui himenaeos nulla sociosqu rhoncus dictumst fusce ultricies congue sapien porttitor maecenas fringilla ipsum nam lorem aliquam rhoncus elit himenaeos</p>
                                <footer>
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-5 htlfndr-review-footer-marks">
                                            <h3>room cleanliness</h3>
                                            <p><span class="htlfndr-round-mark">4</span>&emsp;out of 5</p>
                                        </div><!-- .htlfndr-review-footer-marks -->
                                        <div class="col-xs-6 col-sm-6 col-md-7 htlfndr-review-footer-marks">
                                            <h3>room comfort</h3>
                                            <p><span class="htlfndr-round-mark">3</span>&emsp;out of 5</p>
                                        </div><!-- .htlfndr-review-footer-marks -->
                                        <div class="clearfix"></div>
                                        <div class="col-xs-6 col-sm-6 col-md-5 htlfndr-review-footer-marks">
                                            <h3>service & staff</h3>
                                            <p><span class="htlfndr-round-mark">2</span>&emsp;out of 5</p>
                                        </div><!-- .htlfndr-review-footer-marks -->
                                        <div class="col-xs-6 col-sm-6 col-md-7 htlfndr-review-footer-marks">
                                            <h3>Spagere condition</h3>
                                            <p><span class="htlfndr-round-mark">4</span>&emsp;out of 5</p>
                                        </div><!-- .htlfndr-review-footer-marks -->
                                    </div>
                                </footer>
                            </article>
                        </div><!-- .htlfndr-review-right-side -->
                    </div><!-- .htlfndr-visitor-review -->
                </div><!-- #htlfndr-Spagere-description-tab-4 .htlfndr-Spagere-description-tab-->
                <div id="htlfndr-hotel-description-tab-5" class="htlfndr-hotel-description-tab">
                    <form method="get" class="htlfndr-review-form">
                        <div class="htlfndr-form-left-side">
                            <label for="review-title">review title</label>
                            <input type="text" name="review-title" id="review-title" class="htlfndr-review-form-input"/>
                            <label for="review-text">review text</label>
                            <textarea name="review-text" id="review-text" class="htlfndr-review-form-input"></textarea>
                        </div><!-- .htlfndr-form-left-side -->
                        <div class="htlfndr-form-right-side">
                            <div class="htlfndr-radio-set">
                                <h3>room cleanliness</h3>
                                <label for="htlfndr-review-radio-1">1</label>
                                <input type="radio" name="htlfndr-review-radio-cleanliness" id="htlfndr-review-radio-1" value="1" />
                                <label for="htlfndr-review-radio-2">2</label>
                                <input type="radio" name="htlfndr-review-radio-cleanliness" id="htlfndr-review-radio-2" value="2" />
                                <label for="htlfndr-review-radio-3">3</label>
                                <input type="radio" name="htlfndr-review-radio-cleanliness" id="htlfndr-review-radio-3" value="3" />
                                <label for="htlfndr-review-radio-4">4</label>
                                <input type="radio" name="htlfndr-review-radio-cleanliness" id="htlfndr-review-radio-4" value="4" />
                                <label for="htlfndr-review-radio-5">5</label>
                                <input type="radio" name="htlfndr-review-radio-cleanliness" id="htlfndr-review-radio-5" value="5" checked="checked" />
                            </div><!-- #htlfndr-radio-set -->
                            <div class="htlfndr-radio-set">
                                <h3>service & staff</h3>
                                <label for="htlfndr-review-radio-2-1">1</label>
                                <input type="radio" name="htlfndr-review-radio-service" id="htlfndr-review-radio-2-1" value="1" />
                                <label for="htlfndr-review-radio-2-2">2</label>
                                <input type="radio" name="htlfndr-review-radio-service" id="htlfndr-review-radio-2-2" value="2" />
                                <label for="htlfndr-review-radio-2-3">3</label>
                                <input type="radio" name="htlfndr-review-radio-service" id="htlfndr-review-radio-2-3" value="3" />
                                <label for="htlfndr-review-radio-2-4">4</label>
                                <input type="radio" name="htlfndr-review-radio-service" id="htlfndr-review-radio-2-4" value="4" checked="checked" />
                                <label for="htlfndr-review-radio-2-5">5</label>
                                <input type="radio" name="htlfndr-review-radio-service" id="htlfndr-review-radio-2-5" value="5" />
                            </div><!-- #htlfndr-radio-set -->
                            <div class="htlfndr-radio-set">
                                <h3>room comfort</h3>
                                <label for="htlfndr-review-radio-3-1">1</label>
                                <input type="radio" name="htlfndr-review-radio-comfort" id="htlfndr-review-radio-3-1" value="1" />
                                <label for="htlfndr-review-radio-3-2">2</label>
                                <input type="radio" name="htlfndr-review-radio-comfort" id="htlfndr-review-radio-3-2" value="2" />
                                <label for="htlfndr-review-radio-3-3">3</label>
                                <input type="radio" name="htlfndr-review-radio-comfort" id="htlfndr-review-radio-3-3" value="3" />
                                <label for="htlfndr-review-radio-3-4">4</label>
                                <input type="radio" name="htlfndr-review-radio-comfort" id="htlfndr-review-radio-3-4" value="4" checked="checked" />
                                <label for="htlfndr-review-radio-3-5">5</label>
                                <input type="radio" name="htlfndr-review-radio-comfort" id="htlfndr-review-radio-3-5" value="5" />
                            </div><!-- #htlfndr-radio-set -->
                            <div class="htlfndr-radio-set">
                                <h3>Spagere condition</h3>
                                <label for="htlfndr-review-radio-4-1">1</label>
                                <input type="radio" name="htlfndr-review-radio-condition" id="htlfndr-review-radio-4-1" value="1" />
                                <label for="htlfndr-review-radio-4-2">2</label>
                                <input type="radio" name="htlfndr-review-radio-condition" id="htlfndr-review-radio-4-2" value="2" />
                                <label for="htlfndr-review-radio-4-3">3</label>
                                <input type="radio" name="htlfndr-review-radio-condition" id="htlfndr-review-radio-4-3" value="3" checked="checked" />
                                <label for="htlfndr-review-radio-4-4">4</label>
                                <input type="radio" name="htlfndr-review-radio-condition" id="htlfndr-review-radio-4-4" value="4" />
                                <label for="htlfndr-review-radio-4-5">5</label>
                                <input type="radio" name="htlfndr-review-radio-condition" id="htlfndr-review-radio-4-5" value="5" />
                            </div><!-- #htlfndr-radio-set -->
                        </div><!-- .htlfndr-form-right-side -->
                        <div class="clearfix"></div>
                        <input type="submit" value="Leave a Review" class="btn-default"/>
                    </form>
                </div><!-- #htlfndr-Spagere-description-tab-5 .htlfndr-Spagere-description-tab-->
            </section><!-- #htlfndr-Spagere-description-tabs -->
        </main><!-- .post .htlfndr-Spagere-single-content -->

        <aside id="htlfndr-right-sidebar" class="col-sm-12 col-md-4 col-lg-3 htlfndr-sidebar htlfndr-sidebar-in-right" role="complementary">
            <p class="htlfndr-add-to-wishlist"><a href="#"><i class="fa fa-plus"></i> Add to Wishlist</a></p>

            <div class="widget htlfndr-hotel-visit-card">
                <div class="htlfndr-widget-main-content htlfndr-widget-padding">
                    <div class="htlfndr-hotel-logo">
                        <img src="http://placehold.it/105x75" alt="Hotel logo" />
                    </div><!-- .htlfndr-Spagere-logo -->
                    <div class="htlfndr-hotel-description">
                        <h2>Hotel Barcelona</h2>
                        <div class="htlfndr-rating-stars">
                            <i class="fa fa-star htlfndr-star-color"></i>
                            <i class="fa fa-star htlfndr-star-color"></i>
                            <i class="fa fa-star htlfndr-star-color"></i>
                            <i class="fa fa-star htlfndr-star-color"></i>
                            <i class="fa fa-star htlfndr-star-color"></i>
                        </div> <!-- .htlfndr-rating-stars -->
                        <h5 class="htlfndr-hotel-location"><a href="#"><i class="fa fa-map-marker"></i>Barcelona</a></h5>
                    </div><!-- .htlfndr-Spagere-description -->
                    <div class="htlfndr-hotel-price">
                        <span class="htlfndr-from">from</span>
                        <p></p>
                        <span class="htlfndr-cost" style="font-size: 35px">${lowestHotelRate} zł</span>
                        <span class="htlfndr-per-night">/ night</span></div>
                    <!-- .htlfndr-Spagere-price -->
                </div><!-- .htlfndr-widget-main-content -->
                <a href="<c:url value="/booking/roomsAvailable"/>" class="htlfndr-book-now-button" role="button">Rooms available</a>
                <div class="htlfndr-widget-padding">
                    <div class="htlfndr-hotel-contacts">
                        <p class="htlfndr-mail"><a href="mailto:example@mail.com" >example@mail.com</a></p>
                        <p class="htlfndr-url"><a href="#">example.com</a></p>
                        <p class="htlfndr-phone"><a href="#">000-000-000-000</a></p>
                        <p class="htlfndr-reviews">123 (Reviews)</p>
                    </div><!-- .htlfndr-Spagere-contacts -->
                </div><!-- .htlfndr-widget-padding -->
            </div><!-- .widget .htlfndr-Spagere-visit-card -->

            <div class="widget htlfndr-near-properties">
                <div class="htlfndr-widget-main-content">
                    <h3 class="widget-title">properties	near</h3>
                    <div class="htlfdr-hotel-post">
                        <div class="htlfndr-post-inner htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-page-v1.html">
                                    <img src="http://placehold.it/110x75" alt="Hotel pic"/>
                                </a>
                            </div>
                            <!-- .htlfndr-Spagere-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <a href="hotel-page-v1.html"><h6>Ruzzini Palace Spagere</h6></a>
                                <div class="htlfndr-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                </div><!-- .htlfndr-rating-stars -->
                                <p class="htlfndr-hotel-price"><span>per night</span>
                                    <span class="htlfndr-cost-normal">$150</span>
                                </p>
                            </div><!-- .htlfndr-Spagere-info -->
                        </div><!-- .htlfndr-post-inner -->
                    </div><!-- .htlfdr-Spagere-post -->

                    <div class="htlfdr-hotel-post">
                        <div class="htlfndr-post-inner htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="Spagere-page-v2.html">
                                    <img src="http://placehold.it/110x75" alt="Hotel pic"/>
                                </a>
                            </div><!-- .htlfndr-Spagere-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <a href="Hotel-page-v2.html"><h6>Foscari Palace</h6></a>
                                <div class="htlfndr-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-rating-stars -->
                                <p class="htlfndr-hotel-price"><span>per night</span> <span class="htlfndr-cost-normal">$200</span></p>
                            </div><!-- .htlfndr-Spagere-info -->
                        </div><!--.htlfndr-post-inner-->
                    </div><!-- .htlfdr-Spagere-post -->

                    <div class="htlfdr-hotel-post">
                        <div class="htlfndr-post-inner htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-page-v3.html">
                                    <img src="http://placehold.it/110x75" alt="Hotel pic"/>
                                </a>
                            </div><!-- .htlfndr-Spagere-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <a href="hotel-page-v3.html"><h6>Carnival Spagere</h6></a>
                                <div class="htlfndr-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-rating-stars -->
                                <p class="htlfndr-hotel-price"><span>per night</span> <span class="htlfndr-cost-normal">$400</span>
                                </p>
                            </div><!-- .htlfndr-Spagere-info -->
                        </div><!-- .htlfndr-post-inner -->
                    </div><!-- .htlfdr-Spagere-post -->
                    <div class="htlfdr-hotel-post">
                        <div class="htlfndr-post-inner htlfndr-table-view">
                            <div class="htlfndr-hotel-thumbnail">
                                <a href="hotel-page-v4.html">
                                    <img src="http://placehold.it/110x75" alt="Hotel pic"/>
                                </a>
                            </div><!-- .htlfndr-Spagere-thumbnail -->
                            <div class="htlfndr-hotel-info">
                                <a href="hotel-page-v4.html"><h6>Hilton Molino</h6></a>
                                <div class="htlfndr-rating-stars">
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star htlfndr-star-color"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div><!-- .htlfndr-rating-stars -->
                                <p class="htlfndr-hotel-price"><span>per night</span> <span class="htlfndr-cost-normal">$350</span>
                                </p>
                            </div><!-- .htlfndr-Spagere-info -->
                        </div><!-- .htlfndr-post-inner -->
                    </div><!-- .htlfdr-Spagere-post -->
                </div><!-- .htlfndr-widget-main-content .htlfndr-widget-padding -->
            </div><!-- .widget .htlfndr-near-properties -->
        </aside><!-- .htlfndr-sidebar-in-right -->
    </div><!-- .row .htlfndr-page-content -->
</div><!-- .container -->
<!-- End of main content -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
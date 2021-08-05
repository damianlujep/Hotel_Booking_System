<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Start of the Footer -->
<footer class="htlfndr-footer">

    <button class="htlfndr-button-to-top" role="button"><span>Back to top</span></button>
    <!-- Button "To top" -->

    <div class="widget-wrapper">
        <div class="container">
            <div class="row">
                <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                    <div class="widget">
                        <a class="htlfndr-logo navbar-brand" href="#">
                            <img src="<c:url value="/images/logo.png"/>" height="20" width="30" alt="Logo" />
                            <p class="htlfndr-logo-text" style="font-size: 21px">Hotel <span>Booking</span> System</p>
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
                        <p>Poland	<br />Hotels Avenue 16, Cracow</p>
                        <hr />
                        <h5>phone number</h5>
                        <p>+48 123 456 789</p>
                        <hr />
                        <h5>email address</h5>
                        <p>support@hotelbookingsystem.pl</p>
                    </div><!-- .widget -->
                </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                    <div class="widget">
                        <h3 class="widget-title">pages</h3>
                        <ul class="menu">
                            <li class="menu-item active"><a href="<c:url value="/"/>">home</a></li>
<%--                            <li class="menu-item"><a href="<c:url value="/contact"/>">Contact</a></li>--%>
<%--                            <li class="menu-item"><a href="<c:url value="/about"/>">about</a></li>--%>
<%--                            <li class="menu-item"><a href="user-page.html">user profile</a></li>--%>
                        </ul>
                    </div><!-- .widget -->
                </aside><!-- .col-xs-12.col-sm-6.col-md-3.htlfndr-widget-column -->
                <aside class="col-xs-12 col-sm-6 col-md-3 htlfndr-widget-column">
                    <div class="widget">
                        <h3 class="widget-title">follow us</h3>
                        <!-- Start of Follow Us buttons -->
                        <div class="htlfndr-follow-plugin">
                            <a href="#" target="_blank" class="htlfndr-follow-button button-facebook"></a>
                            <a href="#" target="_blank" class="htlfndr-follow-button button-twitter"></a>
                            <a href="#" target="_blank" class="htlfndr-follow-button button-google-plus"></a>
                            <a href="#" target="_blank" class="htlfndr-follow-button button-linkedin"></a>
                            <a href="#" class="htlfndr-follow-button button-pinterest"></a>
                            <a href="#" target="_blank" class="htlfndr-follow-button button-youtube"></a>
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
            <p>Hotel Booking System designed by Damian Luje Ponce</p>
        </div><!-- .container -->
    </div><!-- .htlfndr-copyright -->
</footer>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<!-- Include Jquery UI script file -->
<script src="<c:url value="/js/jquery-ui.min.js"/>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- Include Jquery UI responsive tabs script file -->
<script src="<c:url value="/js/jquery.responsiveTabs.min.js"/>"></script>
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
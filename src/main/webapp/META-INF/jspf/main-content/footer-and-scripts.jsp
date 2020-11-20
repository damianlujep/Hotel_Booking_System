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
                            <li class="menu-item active"><a href="<c:url value="/"/>">home</a></li>
                            <li class="menu-item"><a href="<c:url value="/contact"/>">Contact</a></li>
                            <li class="menu-item"><a href="<c:url value="/about"/>">about</a></li>
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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--Head, header and Navigation Content for website--%>
<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

        <noscript><h2>You have JavaScript disabled!</h2></noscript>
    </header>

    <!-- Start of main content -->
    <div class="container">

        <main id="htlfndr-main-content" class="htlfndr-main-content" role="main">
            <article class="htlfndr-thanks-page text-center">
                <h1>Thank You!</h1>
                <h3>for choosing
                    <a href="index.html">
                        <span class="htlfndr-logo-text"> Spagere <span>finder</span></span>
                    </a>
                </h3>
                <img src="<c:url value="/images/mail_icon.jpg"/>" alt="mail" />
                <div><h4>We have just sent to you E-mail a letter with complete information about your booking</h4></div>
                <a class="htlfndr-more-link text-center" href="<c:url value="/"/>">homepage</a>
<%--                <a class="htlfndr-more-link text-center" href="blog-index.html">visit the blog</a>--%>
            </article><!-- .row .htlfndr-page-content -->
        </main><!-- .htlfndr-Spagere-single-content -->
    </div><!-- .container -->
    <!-- End of main content -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
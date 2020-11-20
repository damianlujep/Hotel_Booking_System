<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

<noscript><h2>You have JavaScript disabled!</h2></noscript>
</header>

<!-- Start of login form -->
<article>
    <div class="htlfndr-content-card" style="padding: 5% 40% 10%;">
        <div class="htlfndr-card-title clearfix">
            <h2 class="pull-left">Sing in</h2>
        </div>
        <form id="htlfndr-sing-in-form" method="post">
            <h4>E-mail address</h4>
            <input id="htlfndr-sing-in-email" class="htlfndr-input " type="text" name="htlfndr-sing-in-emal">
            <h4>Password</h4>
            <input id="htlfndr-sing-in-pass" class="htlfndr-input " type="text" name="htlfndr-sing-in-pass">
            <div class="clearfix">
                <span>
                    Don't Have an Account?
                    <a href="<c:url value="/registration"/>"><span>Sing up</span></a>
                </span>
            </div>
            <div>
                <input type="submit" value="Sing in" class="btn-primary">
            </div>
        </form>
    </div>
</article>
<!-- End of login form -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
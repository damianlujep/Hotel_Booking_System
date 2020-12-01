<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--Head, header and Navigation Content for website--%>
<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

<noscript><h2>You have JavaScript disabled!</h2></noscript>
</header>

<!-- Start of login form -->
<article>
    <div class="htlfndr-content-card" style="padding: 5% 40% 10%;">
        <div class="htlfndr-card-title clearfix">
            <h2 class="pull-left">Sing in</h2>
        </div>
        <form:form id="htlfndr-sing-in-form" method="POST" action="/authenticateMember">
            <h4>E-mail address</h4>
            <input id="htlfndr-sing-in-email" class="htlfndr-input " type="text" name="username">
            <h4>Password</h4>
            <input id="htlfndr-sing-in-pass" class="htlfndr-input " type="password" name="password">
            <div class="clearfix">
                <span>
                    Don't Have an Account?
                    <a href="<c:url value="/registration"/>"><span>Sing up</span></a>
                </span>
            </div>
            <div>
                <input type="submit" value="Sing in" class="btn-primary">
            </div>
            <p></p>
            <c:if test="${param.error != null}" >
                <div class="alert alert-danger" role="alert" style="text-align: center">
                    Sorry! You entered a invalid username or password
                </div>
            </c:if>
        </form:form>
    </div>
</article>
<!-- End of login form -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
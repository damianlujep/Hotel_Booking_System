<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

<noscript><h2>You have JavaScript disabled!</h2></noscript>
</header>

<!-- Start of registration form -->
<article>
<div class="htlfndr-content-card" style="padding: 2% 40% 10%;">
    <div class="htlfndr-card-title clearfix">
        <h2 class="pull-left">Sing up</h2>
    </div>
    <form:form id="htlfndr-sing-up-form" method="POST" modelAttribute="newMember">
        <div class="row">
            <div class="col-md-6">
                <h4>First name</h4>
                <form id="htlfndr-sing-up-name" class="htlfndr-input " type="text" name="htlfndr-sing-up-name">
            </div>
            <div class="col-md-6">
                <h4>Last name</h4>
                <input id="htlfndr-sing-up-last-name" class="htlfndr-input " type="text"
                       name="htlfndr-sing-up-last-name">
            </div>
        </div>
        <h4>E-mail address</h4>
        <input class="htlfndr-input" type="text">
        <h4>Password</h4>
        <input class="htlfndr-input" type="text">
        <h4>Confirm Password</h4>
        <input class="htlfndr-input" type="text">
        <h4>Phone</h4>
        <input class="htlfndr-input" type="text">
        <h4>Day of Birth</h4>
        <input class="htlfndr-input" type="date">
        <div class="clearfix">
            <span>
                Have an Account?
                <a href="<c:url value="/login"/>"><span>Sing in</span></a>
            </span>
        </div>
        <div>
            <input type="submit" value="Sing up" class="btn-primary">
        </div>
    </form:form>
</div>
</article>
<!-- End of registration form -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
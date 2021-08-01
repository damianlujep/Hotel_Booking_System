<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--Head, header and Navigation Content for website--%>
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
                <form:input path="firstName" class="htlfndr-input " type="text"/>
                <p></p>
                <div>
                    <form:errors path="firstName" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                </div>
            </div>
            <div class="col-md-6">
                <h4>Last name</h4>
                <form:input path="lastName" id="htlfndr-sing-up-last-name" class="htlfndr-input " type="text"/>
                <p></p>
                <div>
                    <form:errors path="lastName" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
                </div>
            </div>
        </div>

        <div>
            <h4>E-mail address</h4>
            <form:input path="email" class="htlfndr-input" type="text"/>
            <p></p>
            <form:errors path="email" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
        </div>
        <div>
            <h4>Password</h4>
            <form:input path="password" class="htlfndr-input" type="password"/>
            <p></p>
            <form:errors path="password" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
        </div>
        <div>
            <h4>Confirm Password</h4>
            <form:input path="rePassword" class="htlfndr-input" type="password"/>
            <p></p>
            <form:errors path="rePassword" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
        </div>
        <div>
            <h4>Phone</h4>
            <form:input path="phone" class="htlfndr-input" type="text"/>
            <p></p>
            <form:errors path="phone" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto"/>
        </div>
        <div>
            <h4>Day of Birth</h4>
            <form:input path="dayOfBirth" class="htlfndr-input" type="date"/>
            <p></p>
            <form:errors path="dayOfBirth" class="alert alert-danger" role="alert" cssStyle="text-align: center; width: auto" />
        </div>

        <div class="clearfix">
            <span>
                Have an Account?
                <a href="<c:url value="/login"/>"><span>Sing in</span></a>
            </span>
        </div>
        <div>
            <input type="submit" value="Sing up" class="btn-primary">
        </div>

        <p></p>

        <c:if test="${message != null}" >
            <div class="alert alert-danger" role="alert" style="text-align: center;">
                    ${message}
            </div>
        </c:if>

    </form:form>
</div>
</article>
<!-- End of registration form -->

<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
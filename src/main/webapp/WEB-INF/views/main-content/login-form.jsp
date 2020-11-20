<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--Head, header and Navigation Content for website--%>
<jsp:include page="/META-INF/jspf/main-content/header.jsp"/>

<div id="htlfndr-sing-in" style="display: block; padding-right: 12px;" class="in" aria-hidden="false">
    <div class="htlfndr-content-card">
        <div class="htlfndr-card-title clearfix"><h2 class="pull-left">Sing in</h2></div>
        <form id="htlfndr-sing-in-form" method="post"><h4>E-mail adress</h4> <input id="htlfndr-sing-in-email"
                                                                                    class="htlfndr-input" type="text"
                                                                                    name="htlfndr-sing-in-emal"> <h4>
            Password</h4> <input id="htlfndr-sing-in-pass" class="htlfndr-input" type="text"
                                 name="htlfndr-sing-in-pass">
            <div class="clearfix"><span>Don't Have an Account? <a data-target="#htlfndr-sing-up" data-toggle="modal"
                                                                  href="#"> <span>Sing up</span> </a> </span> <input
                    type="submit" value="Sing in" class="pull-right"></div>
        </form>
    </div>
</div>
</div>
<!-- Footer and Scripts content -->
<jsp:include page="/META-INF/jspf/main-content/footer-and-scripts.jsp"/>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<spring:url value="/res/greetingSection/userMenuGreeting.css" var="greetingCss" />
        <link href="${greetingCss}" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="/res/favicon.ico" />

        <spring:url value="/res/favicon.ico" var="ideaPic" />

</head>
<body>
<div class="greetingblock">
<a href="/ideas/cabinet"><spring:message code="label.cabinet"/></a>
<%
String username = (String) request.getSession().getAttribute("LOGGEDIN_USER");
java.util.Calendar currTime = new java.util.GregorianCalendar();


if (currTime.get(currTime.HOUR_OF_DAY) < 12)
{ %>
<spring:message code="label.greeting-morning"/>,
<% }
else if (currTime.get(currTime.HOUR_OF_DAY) < 18)
{ %>
<spring:message code="label.greeting-day"/>,
<% }
else
{ %>
<spring:message code="label.greeting-evening"/>,
<% } %>
<%=username%>
<FORM NAME="logoutForm" ACTION="logout" METHOD="POST">
<button type="submit" id="bth-logout"><spring:message code="label.logout"/></button>
</FORM>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<spring:url value="/res/greetingSection/userMenuGreeting.css" var="greetingCss" />
        <link href="${greetingCss}" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="/res/favicon.ico" />

        <spring:url value="/res/fileupload/dir.png" var="folderPic" />
        <spring:url value="/res/fileupload/add.png" var="addPic" />
        <spring:url value="/res/favicon.ico" var="ideaPic" />

</head>
<body>
<div class="greetingblock">
<a href="/ideas/list"><spring:message code="label.idealist"/></a>
<a href="/ideas/create"><img src="${ideaPic}" alt="MY HUGE DIIIICK!" style="float:center;width:20px;height:20px;"></a>
<a href="/fileapi/fileupload"><img src="${addPic}" alt="MY HUGE DIIIICK!" style="float:center;width:20px;height:20px;"></a>
<a href="/fileapi/filelist&show=0"><img src="${folderPic}" alt="MY HUGE DIIIICK!" style="float:center;width:20px;height:20px;"></a>


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
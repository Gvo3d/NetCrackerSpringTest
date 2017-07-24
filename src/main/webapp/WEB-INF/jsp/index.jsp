<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
        <title>Example :: Spring Application</title>
        <spring:url value="/res/simple.css" var="mainCss" />
        <spring:url value="/res/indexPage/index.gif" var="mainGif" />
        <link href="${mainCss}" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <div class="contentblock">
        <h1>Example - Spring Application</h1>
        <div class="ideaContentData">
                            ${now}
                        </div>
        <h2><%@include file="/WEB-INF/jsp/includes/greeting.jsp" %><h2>
        <br>
        <img src="${mainGif}" alt="MY HUGE DIIIICK!" style="float:center;width:350px;height:350px;">
        </div>

        Test users: (login/password)<br/>
        qwerty/qwerty<br/>
        mod/mod<br/>
        list/list<br/>

        <form action="login" method="post">
        <input type="text" name="login" value="login" onfocus="this.value=''"><br/>
        <input type="password" name="password" value="password" onfocus="this.value=''"><br>
        <input type="submit">
    </body>
<%@include file="/WEB-INF/jsp/includes/footer.jsp" %>
</html>
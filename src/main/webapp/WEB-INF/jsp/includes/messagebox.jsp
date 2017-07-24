<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <spring:url value="/res/simple.css" var="mainCss"/>
    <link href="${mainCss}" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="messagebox">
        <form:form method="POST" action="/ideas/messagehandler" modelAttribute="comment">
            <form:textarea path="content" />
            <input type="submit" value="<spring:message code="label.submitCommentButton"/>">
        </form:form>
    </div>
</body>
</html>
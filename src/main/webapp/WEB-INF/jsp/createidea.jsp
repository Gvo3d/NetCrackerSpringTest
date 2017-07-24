<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
	<title><spring:message code="label.title" /></title>
</head>
<body>

<h2><spring:message code="label.creation" /></h2>
<form:form method="post" action="/ideas/сreateideahandler" commandName="ideaData">

	<table>
		<tr>
			<td><form:label path="name">
				<spring:message code="label.ideaName" />
			</form:label></td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td><form:label path="description">
				<spring:message code="label.ideaDescription" />
			</form:label></td>
			<td><form:input path="description" /></td>
		</tr>
        <tr>
			<td><form:label path="image">
				<spring:message code="label.ideaImage" />
			</form:label></td>
			<td><form:input path="image" /></td>
		</tr>
		<tr>
			<td><form:label path="tags">
				<spring:message code="label.ideaTags" />
			</form:label></td>
			<td><form:input path="tags" /></td>
		</tr>
        <tr>
			<td><form:label path="content">
				<spring:message code="label.ideaContent" />
			</form:label></td>
			<td><form:input path="content" /></td>
		</tr>
		<tr>
			<td><form:label path="enabled">
				<spring:message code="label.ideaEnabled" />
			</form:label></td>
			<td><form:input path="enabled" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				value="<spring:message code="label.ideaCreate"/>" /></td>
		</tr>
	</table>
</form:form>

</body>
<%@include file="/WEB-INF/jsp/includes/footer.jsp" %>
</html>

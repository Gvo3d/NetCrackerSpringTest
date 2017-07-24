<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<div class="container">
	<spring:url value="/ideas/editideahandler" var="userActionUrl" />

	<form:form class="form-horizontal" method="post"
                modelAttribute="ideaAttrib" action="${userActionUrl}">

		<spring:bind path="name">
				<form:input path="name" type="text" class="form-control" id="name" placeholder="name" />
		</spring:bind>

		<spring:bind path="description">
        		<form:input path="description" type="text" class="form-control" id="description" placeholder="description" />
        </spring:bind>

        <spring:bind path="image">
                <form:input path="image" type="text" class="form-control" id="image" placeholder="image" />
        </spring:bind>

        <spring:bind path="tags">
                        <form:input path="tags" type="text" class="form-control" id="tags" placeholder="tags" />
                </spring:bind>

		<spring:bind path="content">
		  		<form:textarea path="content" rows="10" class="form-control" id="content" placeholder="content" />
		</spring:bind>

		<spring:bind path="enabled">
				<form:select path="enabled" class="form-control">
					<form:options items="${enablind}" />
				</form:select>
		</spring:bind>

			 <button type="submit" class="btn-lg btn-primary pull-right">Update

	</form:form>

</div>

<%@include file="/WEB-INF/jsp/includes/footer.jsp" %>

</body>
</html>
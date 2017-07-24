<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
        <link href="${greetingCss}" rel="stylesheet" type="text/css"/>
        <spring:url value="/res/fileupload/dir.png" var="folderPic" />

</head>
<body>
Return to: <a href="${RURI}"><spring:message code="label.back"/></a>


<c:if test="${(searchable!=null)}">
<c:set var="ideaData" value="${searchable}" scope="page" />
<div class="ideaFullData"><spring:message code="label.ideaName"/> ${ideaData.getName()} </br>
    <div class="ideaAuthor"><spring:message code="label.ideaAuthor"/> ${ideaData.author.username}  </br>
        <div class="ideaPosted"><spring:message code="label.ideaCreated"/> <fmt:formatDate type="both" value="${ideaData.posted}" /> </br>
            <div class="ideaRating"><spring:message code="label.ideaRatings"/></br>
            <spring:message code="label.ideaLiked"/> ${ideaData.liked} <c:if test="${(!notshowlikes)}"><form:form method="POST" action="/ideas/likeidea/${ideaData.id}&like=true"><input type="submit" value="<spring:message code="label.ideaLiked"/>"></form:form></c:if>
            <spring:message code="label.ideaDisliked"/> ${ideaData.disliked} <c:if test="${(!notshowlikes)}"><form:form method="POST" action="/ideas/likeidea/${ideaData.id}&like=false"><input type="submit" value="<spring:message code="label.ideaDisliked"/>"></form:form></c:if>
            <spring:message code="label.ideaWatchCount"/> ${ideaData.viewedCount}</br>
            <spring:message code="label.ideaWatched"/> <fmt:formatDate type="both" value="${ideaData.viewed}" /></br>
                <div class="ideaContentData"><spring:message code="label.ideaContent"/></br>
                    ${ideaData.content.contentData}</br>
                </div>
                </br>
                <spring:message code="label.ideaComments"/></br>
                <c:forEach items="${ideaData.comments}" var="com">
                    ${com.author.username} posted at <fmt:formatDate type="both" value="${com.posted}" /> : ${com.content}</br>
                </c:forEach>

                <%@include file="/WEB-INF/jsp/includes/messagebox.jsp" %>
            </div>
        </div>
    </div>
</div>
</c:if>
</body>
<%@include file="/WEB-INF/jsp/includes/footer.jsp" %>

</html>

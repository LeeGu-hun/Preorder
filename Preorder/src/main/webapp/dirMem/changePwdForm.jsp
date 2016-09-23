<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><spring:message code="change.pwd.title" /></title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/main.css" />
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<div id="box">
		<div id="boxTable">
			<div id="boxCell">
				<form:form>
					<p>
						<label><spring:message code="currentPassword" />:<br>
							<form:password path="currentPassword" /> <form:errors
								path="currentPassword" /> </label>
					</p>
					<p>
						<label><spring:message code="newPassword" />:<br> <form:password
								path="newPassword" /> <form:errors path="newPassword" /> </label>
					</p>
					<input type="submit" value="<spring:message code="change.btn" />">
				</form:form>
			</div>
		</div>
	</div>
	<%@include file="/include/footer.jsp"%>
</body>
</html>
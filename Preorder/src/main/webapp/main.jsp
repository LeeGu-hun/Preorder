<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/media-queries.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="shortcut icon" type="image/x-icon" href="#">
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:700,400,400italic,700italic'
	rel='stylesheet' type='text/css'>
	
	
</head> 
	<%@include file="/include/header.jsp"%>
	<c:if test="${empty authInfo }">
		<%@include file="/dirMem/join.jsp"%>
	</c:if>
	<c:if test="${! empty authInfo }">
		<%@include file="/dirBoard/myList.jsp"%>
	</c:if>
	<%@include file="/include/footer.jsp"%>
	
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
</body>
</html>
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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	





	
</head> 
<body>
	<%@include file="/include/header.jsp"%>
	<c:if test="${empty authInfo }">
		<%@include file="/dirMem/join.jsp"%>
	</c:if>
	<c:if test="${! empty authInfo }">
		<%@include file="/dirBoard/myList.jsp"%>
	</c:if>
<%-- 	<%@include file="/include/footer.jsp"%> --%>
	
	
</body>
</html>
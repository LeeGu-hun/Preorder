<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css" />
</head>
<body> 
	<%@include file="/include/header.jsp"%>
	<div id="box">
		<div id="boxTable">
			<div id="boxCell">
				<span style="font-size: 17px;font-weight: bold;">
				${memberName }님 환영합니다.
				</span>
				<div id="line"></div>
				<div id="sNotice">
					회원님의 계정이 만들어졌습니다.
					이제 친구들과 쉽게 공유하고 연락할 수 있습니다.<br> 
					사용자 이름 또는 휴대폰 전화번호를 사용하여 로그인할 수 있습니다.<br>
					활동 시작하기.<br>
					<form:form action="<%=request.getContextPath() %>">
						<p style="text-align: right">
						<input type="submit" value="로그인 페이지 가기">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</form:form>
				</div><br><br>
			</div>
		</div>
	</div>
	<%@include file="/include/footer.jsp"%>
</body>
</html>
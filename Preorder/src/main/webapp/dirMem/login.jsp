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
<link rel="stylesheet" type="text/css" href="/prj/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/prj/css/main.css" />
</head>
<body> 
	<%@include file="/include/header.jsp"%>
	<div id="box">
		<div id="boxTable">
			<div id="boxCell">
				<span style="font-size: 17px;font-weight: bold;">DSbook
				<c:if test="${!empty success }">${success }</c:if></span>
				<div id="line"></div>
				<div id="sNotice">
					<b>이메일 또는 전화번호 오류</b><br>
					입력하신 이메일 또는 전화번호가 등록된 계정이 없습니다.<br>
					회원님의 계정과 관련된 이메일, 
					사용자 이름 또는 휴대폰 전화번호를 사용하여 로그인할 수 있습니다.<br>
					정확히 입력되었는지 확인하세요.
				</div><br><br>
				<form:form commandName="loginCommand" id="loginFrm">
				<form:errors />
					<p>
						<label>ID :
						<form:input path="id" /><br>
						<form:errors path="id" /><br>
						</label>
					</p>
					<p>
						<label>비밀번호:
						<form:password path="password" /><br>
						<form:errors path="password" /><br>
						</label>
					</p>
					<p>
						<label>ID 기억 : 
						<form:checkbox path="rememberId" />
						<form:errors path="rememberId" />
						</label>
					</p>
					<input type="submit" value="로 그 인">
				</form:form>
			</div>
		</div>
	</div>
	<%@include file="/include/footer.jsp"%>
</body>
</html>
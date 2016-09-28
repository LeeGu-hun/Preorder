<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/media-queries.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	


	
	
<div id="wrapper">
	<h1>
		<a href="main">Pre Order</a>
	</h1>			
		<c:if test="${empty authInfo }">
			<form id="frmLogin" action="login" method="post" role="form">
			
				<c:if test="${empty cookie.REMEMBER.value}">
				<div class="form-group col-md-5 col-sm-6">
					<label for="user_login" class="sr-only">ID : 
					<input type="text" name="id" id="id" class="form-control" placeholder="id"/>
				</div>	
					
					</label>&nbsp;&nbsp;&nbsp;&nbsp; <label>비밀번호 :
				
				<input type="password" name="password" id="password" /></label><br>
				
				<label>E-mail 기억
				
				<input type="checkbox" name="rememberId" id="rememberID"/>
				</label> 
				<input type="submit" value="로그인">
			</c:if>
			<c:if test="${! empty cookie.REMEMBER.value}">
				<label>E-mail :
				<input type="text" name="id" id="id" 
				value="${cookie.REMEMBER.value}" /></label>
				&nbsp;&nbsp;&nbsp;&nbsp; <label>비밀번호 :
				<input type="password" name="password" id="password" /></label><br>
				<label>E-mail 기억
				<input type="checkbox" name="rememberId" 
				id="rememberId" checked/>
				</label> <input type="submit" value="로그인" class="btn">
			</c:if>
			
			</form>
		</c:if>
		<c:if test="${! empty authInfo }">
			${authInfo.name }님환영합니다.
				<a href="<c:url value='/member/list'/>">[회원 조회]</a>
			<a href="<c:url value='/member/changePassword'/>">[비밀번호변경]</a>
			<a href="<c:url value='/logout'/>">[로그아웃하기]</a>
		</c:if>
	</div>
	


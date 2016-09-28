<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	


	
	
<div id="wrapper">
	<div class="jumbotron">
  <div class="container text-center">
    <h1>Pre Order</h1>      
    <p>Mission, Vission & Values</p>
  </div>
</div>			
		<c:if test="${empty authInfo }">
			<form id="frmLogin" action="login" method="post" role="form">
			
				<c:if test="${empty cookie.REMEMBER.value}">
				
				

				
				<div class="form-group col-md-5 col-sm-6">
					<label for="user_login" class="sr-only">ID : 
					<input type="text" name="id" id="id" class="form-control" placeholder="id"/>
				</div>	
				<label>ID 기억
				
				<input type="checkbox" name="rememberId" id="rememberID"/>
				</label> 					
					</label>&nbsp;&nbsp;&nbsp;&nbsp; <label>비밀번호 :
				
				<input type="password" name="password" id="password" /></label><br>								
				<input type="submit" value="로그인">
			</c:if>
			<c:if test="${! empty cookie.REMEMBER.value}">
			<form class="form-inline" role="form">
   <form role="form">
    <div class="form-group">
      <label for="usr">ID:</label>
      <input type="text" class="form-control" name="id" id="id">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" id="password">
    </div>
    <label>ID 기억
				<input type="checkbox" name="rememberId" 
				id="rememberId" checked/>
				</label> <input type="submit" value="로그인" class="btn">
  </form>
			
			
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
	


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>





<div id="wrapper">

	<div class="jumbotron">
	
		<div class="container text-center">
			<c:if test="${empty authInfo }">
			<div class="gnb-wrap" style="float:right;">
			<span class="navigation"
				onclick="toggleLayer('gnb','navigation');return false;"></span>
			<ul class="list-inline gnb">
				<li><a href="javascript:;"
					data-toggle="modal" data-target="#myModal">로그인</a> <em> </em></li>
				<li><a href="javascript:;"onclick="openLayer('gnb-mem');return false;">회원가입</a> <em></em></li>
				<!-- 					<li><a href="javascript:;" onclick="alert('회원가입은 앱으로 진행해 주세요. 8/16까지 PC로는 회원 가입이 되지 않습니다. 이용에 불편을 드려 죄송합니다')">회원가입</a> <em>|</em></li> -->
				<li><a href="http://www.baemin.com/service/faq">고객센터</a></li>
			</ul>
		</div>
		
		<!-- ---------------------------------------------------------- -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       		<h4 class="modal-title" id="myModalLabel">Modal 제목</h4>
       			<form class="form-inline" role="form">
					
						<div class="form-group">
							<label for="usr">ID:</label> 
							<input type="text" class="form-control" name="id" id="id"/>
						</div>
						
						<div class="form-group">
							<label for="pwd">Password:</label> 
							<input type="password" class="form-control" name="password" id="password"/>
						</div>
						<label>ID 기억 
						<input type="checkbox" name="rememberId" id="rememberId" checked />
						</label> 
						<input type="submit" value="로그인" class="btn"/>
					</form>	
      	</div>
    <div class="modal-body">Modal 내용 </div>     
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
		
		
	
					
							
			<!-- -------------------------------------------------------------------- -->
			
			
			
			
		<form id="frmLogin" action="login" method="post" role="form" class="form-inline">

			<c:if test="${empty cookie.REMEMBER.value}">

				<form class="form-inline" role="form">
					
						<div class="form-group">
							<label for="usr">ID:</label> 
							<input type="text" class="form-control" name="id" id="id"/>
						</div>
						
						<div class="form-group">
							<label for="pwd">Password:</label> 
							<input type="password" class="form-control" name="password" id="password"/>
						</div>
						<label>ID 기억 
						<input type="checkbox" name="rememberId" id="rememberId" checked />
						</label> 
						<input type="submit" value="로그인" class="btn"/>
					</form>			

			</c:if>

			<c:if test="${! empty cookie.REMEMBER.value}">
					
					
						
				
					<form class="form-inline" role="form">
					
						<div class="form-group">
							<label for="usr">ID:</label> 
							<input type="text" class="form-control" name="id" id="id"/>
						</div>
						
						<div class="form-group">
							<label for="pwd">Password:</label> 
							<input type="password" class="form-control" name="password" id="password"/>
						</div>
						<label>ID 기억 
						<input type="checkbox" name="rememberId" id="rememberId" checked />
						</label> 
						<input type="submit" value="로그인" class="btn"/>
					</form>					
			</c:if>
		</form>
	</c:if>
	<c:if test="${! empty authInfo }">
			${authInfo.name }님환영합니다.
				
		<a href="<c:url value='/member/changePassword'/>">[비밀번호변경]</a>
		<a href="<c:url value='/logout'/>">[로그아웃하기]</a>
	</c:if>
	
			<h1>Pre Order</h1>
			<p>Mission, Vission & Values</p>
		</div>
	</div>
	
</div>



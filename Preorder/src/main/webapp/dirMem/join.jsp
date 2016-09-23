<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="contents">
	
	<div id="mainRight">
	<div id="rightWrap" style="padding-left: 300px;">
		<h1>가입하기</h1>
		<div id="join"></div>
		<form:form commandName="registerRequest" action="member/regist" style="visibility:hidden;">
		<p>
			<label>Email:<br>
			<form:input path="email" class="txt"  />
			<form:errors path="email" /> </label>
		</p>
		<p>
			<label>이름:<br>
			<form:input path="name" class="txt" />
			<form:errors path="name" /> </label>
		</p>
		<p>
			<label>비번:<br>
			<form:password path="password" class="txt" />
			<form:errors path="password" /> </label>
		</p>
		<p>
			<label>확인:<br>
			<form:password path="confirmPassword" class="txt" />
			<form:errors path="confirmPassword" />
			</label>
		</p>
		<input type="submit" value="회원가입" class="btn"/>
	</form:form>
	</div></div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<span>메뉴 등록</span>
	<form:form action="member/regist"
		class="form-horizontal" role="form">
		<div class="form-group">
			<label class="col-sm-2 control-label">종류</label>
			<div class="col-sm-6">
				<form:select path="category" class="form-control" id="focusedInput"
					type="text" placeholder="name">
					<option>치킨</option>
					<option>주류 및 음료</option>
					<option>삼겹살</option>
				</form:select>
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">메뉴 이름</label>
			<div class="col-sm-6">
				<form:input path="id" class="form-control" id="focusedInput"
					type="text" placeholder="ID" />
				<form:errors path="id" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">사진</label>
			<div class="col-sm-6">
				

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">식당명</label>
			<div class="col-sm-6">
				<form:input path="name" class="form-control" id="focusedInput"
					type="text" placeholder="식당명" />

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">주소</label>
			<div class="col-sm-6">
				<form:input path="address" class="form-control" id="focusedInput"
					type="text" placeholder="주소" />

			</div>
			<button>주소찾기</button>
		</div>


		<div class="form-group">
			<label class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-6">
				<form:input path="tel" class="form-control" id="focusedInput"
					type="text" placeholder="tel" />

			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-6">
				<form:password path="password" class="form-control"
					id="focusedInput" placeholder="password" />
				<form:errors path="password" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">비밀번호 확인</label>
			<div class="col-sm-6">
				<form:password path="confirmPassword" class="form-control"
					id="focusedInput" placeholder="password" />
				<form:errors path="confirmPassword" />
			</div>
		</div>

		<input type="submit" value="회원가입" class="btn" />
</form:form>
</div>
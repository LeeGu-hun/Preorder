<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Onextrapixel - Responsive Web Design Template</title>


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/media-queries.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">




<!-- Latest compiled and minified CSS -->


<link rel="shortcut icon" type="image/x-icon" href="#">
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:700,400,400italic,700italic'
	rel='stylesheet' type='text/css'>

<!--[if IE]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<script>
 	
	function openLayer() {	$('#contents').toggle();	}
</script>
</head>

<body id="home">
	

	<div id="wrapper">

		

			

			<!--★★★ 회원가입 만들어 봄 ★★★★★★  -->
			<!-- 회원가입 폼 : S -->

		<input type="button" id="wp-join" class="btn btn-info btn-block" 
		value="회원가입" onclick="openLayer();" >
		<div id="contents" style="display:none;">
		<div class="container">
  
		

				<div id="mainRight">
					<div id="rightWrap" >
						<input type="button" id="wp-join" class="btn" 
						value="일반회원" onclick="openjoin();" >
						<input type="button" id="wp-join" class="btn" 
						value="기업회원" onclick="openjoin();" >
						<h2>일반회원</h2>
  				
   						 </div>
						<form:form commandName="registerRequest" action="member/regist" class="form-horizontal" role="form">																											
						<div class="form-group">													
								<label class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
								 <form:input path="email"
										class="form-control" id="focusedInput" type="text" value="Email" />
								<form:errors path="email" />							
								</div>
							</div>
							
								 
								 
							
						<div class="form-group">	
								<label class="col-sm-2 control-label">Id</label> 
								<div class="col-sm-6">
								<form:input path="id" class="form-control" id="focusedInput" type="text" value="ID" />
								<form:errors path="id"/>								
								</div>
						</div>
						<div class="form-group">								
								<label class="col-sm-2 control-label">이름</label>
								<div class="col-sm-6">
								<form:input path="name" class="form-control" id="focusedInput" type="text" value="Name" />
								<form:errors path="name" />
						</div>
						</div>
							<div class="form-group">	
								<label class="col-sm-2 control-label">비번</label>
								<div class="col-sm-6">
								<form:password path="password" class="form-control" id="focusedInput"  value="password" />
								<form:errors path="password" />
								</div>
							</div>
							
							<div class="form-group">	
								<label class="col-sm-2 control-label">확인:</label> 
								<div class="col-sm-6">
								<form:password path="confirmPassword"  class="form-control" id="focusedInput"  value="password" /> 
								<form:errors path="confirmPassword" />
								</div>									
							</div>
							
							<input type="submit" value="회원가입" class="btn" />
						</div>
						</form:form>
						<form:form commandName="registerRequest" action="member/regist" class="form-horizontal" role="form">																											
						<div class="form-group">													
								<label class="col-sm-2 control-label">Email</label>
								<div class="col-sm-6">
								 <form:input path="email"
										class="form-control" id="focusedInput" type="text" value="Email" />
								<form:errors path="email" />							
								</div>
							</div>
							
								 
								 
							
						<div class="form-group">	
								<label class="col-sm-2 control-label">Id</label> 
								<div class="col-sm-6">
								<form:input path="id" class="form-control" id="focusedInput" type="text" value="ID" />
								<form:errors path="id"/>								
								</div>
						</div>
						<div class="form-group">								
								<label class="col-sm-2 control-label">이름</label>
								<div class="col-sm-6">
								<form:input path="name" class="form-control" id="focusedInput" type="text" value="Name" />
								<form:errors path="name" />
						</div>
						</div>
							<div class="form-group">	
								<label class="col-sm-2 control-label">비번</label>
								<div class="col-sm-6">
								<form:password path="password" class="form-control" id="focusedInput"  value="password" />
								<form:errors path="password" />
								</div>
							</div>
							
							<div class="form-group">	
								<label class="col-sm-2 control-label">확인:</label> 
								<div class="col-sm-6">
								<form:password path="confirmPassword"  class="form-control" id="focusedInput"  value="password" /> 
								<form:errors path="confirmPassword" />
								</div>									
							</div>
							
							<input type="submit" value="회원가입" class="btn" />
						</div>
						</form:form>
						
						
						
						
					
				</div>
				<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
			</div>
			</h2>
				<nav>
				<a href="#">Home</a> <a href="#">음식점 찾기</a> <a href="#">음식점 현황 </a>
				<a href="#">-</a> <a href="#">-</a>
				<div class="clearfix"></div>
			</nav>

		
		</header>

		<section id="main-content">
			<div id="featured">
				<h3>Featured Article :</h3>
				<p>
					Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
					auctor. Morbi leo risus, porta ac consectetur ac, vestibulum at
					eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br /> <a
						href="#">Continue Reading &rarr;</a>
				</p>
			</div>
			<!-- END Featured -->
			<hr />
			<div id="latest">
				<section class="left-col">
					<h3>Latest Articles :</h3>
					<br />
					<h4>
						<a href="#">Blog 1</a>
					</h4>
					<p>
						Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
						auctor. Maecenas faucibus mollis interdum. &nbsp; <a href="#">Continue
							Reading &rarr;</a>
					</p>
					<h4>
						<a href="#">Blog 2</a>
					</h4>
					<p>
						Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
						auctor. Maecenas faucibus mollis interdum. &nbsp; <a href="#">Continue
							Reading &rarr;</a>
					</p>
					<h4>
						<a href="#">Blog 3</a>
					</h4>
					<p>
						Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
						auctor. Maecenas faucibus mollis interdum. &nbsp; <a href="#">Continue
							Reading &rarr;</a>
					</p>
				</section>
				<!-- END Left Column -->

				<aside class="sidebar">
					<h4>
						<a href="#">Archives</a>
					</h4>
					<ul>
						<li><a href="#">July 2010</a></li>
						<li><a href="#">August 2010</a></li>
						<li><a href="#">September 2010</a></li>
					</ul>
					<br />
					<h4>
						<a href="#">Categories</a>
					</h4>
					<ul>
						<li><a href="#">Articles</a></li>
						<li><a href="#">Tutorials</a></li>
						<li><a href="#">Roundups</a></li>
					</ul>
					<br />
					<h4>
						<a href="#">Social</a>
					</h4>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">RSS</a></li>
						<li><a href="#">Google+</a></li>
					</ul>
				</aside>
			</div>
			<!-- END Latest -->
			<div class="clearfix"></div>
			<hr />
			<div id="about">
				<h3>About</h3>
				<p>
					Integer posuere erat a ante venenatis dapibus posuere velit
					aliquet. Praesent commodo cursus magna, vel scelerisque nisl
					consectetur et. Praesent commodo cursus magna, vel scelerisque nisl
					consectetur et. Maecenas sed diam eget risus varius blandit sit
					amet non magna. Cras justo odio, dapibus ac facilisis in, egestas
					eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at
					eros. Donec id elit non mi porta gravida at eget metus.<br /> <br />
					Sed posuere consectetur est at lobortis. Praesent commodo cursus
					magna, vel scelerisque nisl consectetur et. Curabitur blandit
					tempus porttitor. Donec sed odio dui. Cum sociis natoque penatibus
					et magnis dis parturient montes, nascetur ridiculus mus. Sed
					posuere consectetur est at lobortis. Fusce dapibus, tellus ac
					cursus commodo, tortor mauris condimentum nibh, ut fermentum massa
					justo sit amet risus.
				</p>
			</div>
		</section>
		<hr />
		<footer>
			<p>&copy; 2011 - Responsive Website Template</p>
		</footer>

	</div>
	<!-- END Wrapper -->

	<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 CSS -->

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
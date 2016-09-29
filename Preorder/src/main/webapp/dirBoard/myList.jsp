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






<!-- Latest compiled and minified CSS -->


<link rel="shortcut icon" type="image/x-icon" href="#">
<link
	href='http://fonts.googleapis.com/css?family=Droid+Serif:700,400,400italic,700italic'
	rel='stylesheet' type='text/css'>

<!--[if IE]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<script>
	var cnt = 0;
	function openLayer() {
		$('#joinOpen').css('visibility', 'visible');
		$('#joinOpen').css('position', 'relative');
		cnt++;
		if (cnt > 0)
			$('#joinOpen').toggle();

	}
</script>
</head>

<body id="home">


	<div id="wrapper">

		<header>
			



			<!--★★★ 회원가입 만들어 봄 ★★★★★★  -->
			<!-- 회원가입 폼 : S -->

			

			<nav>
				<a href="#">Home</a> <a href="#">About</a> <a href="#">Portfolio</a>
				<a href="#">Blog</a> <a href="#">Contact</a>
				<div class="clearfix"></div>
			</nav>
		</header>

		<section id="main-content">
			<div id="featured">
				<div class="container">
  <h2>메뉴 찾기</h2>
  <form class="form-inline" role="form" action="searchFood">
    <div class="form-group">
      <label for="focusedInput">지역선택</label>
      <select id="disabledSelect" class="form-control">
            <option>전국</option>
            <option>서울</option>
            <option>부산</option>           
            <option>대구</option>
            <option>인천</option>
            <option>광주</option> 
            <option>대전</option> 
            <option>울산</option> 
            <option>세종</option>
            <option>경기</option>
            <option>강원</option>
            <option>충북</option>
            <option>충남</option>                 
            <option>전북</option> 
            <option>전남</option> 
            <option>경북</option> 
            <option>경남</option> 
            <option>제주</option> 
       </select>
    	<input type="text" class="form-control" placeholder="메뉴명 입력">
       <input type="text" class="form-control" placeholder="가격">~
       <input type="text" class="form-control" placeholder="가격">
       <input type="button"  class="btn " 
		value="검색" onclick="" >
    </div>
  </form>
</div>
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
					
				</p>
			</div>
		</section>
		<hr />
		

	</div>
	<!-- END Wrapper -->

	<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 CSS -->

	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
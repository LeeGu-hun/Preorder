<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=E0q4V3CNZxKMRpYzBx68"></script>
</head>
<body>
<div id="map" style="width:100%;height:400px;"></div>

<script>
GET https://openapi.naver.com/v1/map/geocode?encoding=utf-8&coord=latlng&output=json&query=%EB%B6%88%EC%A0%95%EB%A1%9C%206
	Host: openapi.naver.com
	User-Agent: curl/7.43.0
	Accept: */*
	Content-Type: application/json
	X-Naver-Client-Id: {E0q4V3CNZxKMRpYzBx68}
	X-Naver-Client-Secret: {GKxkquIxbr}

</script>
</body>
</html>
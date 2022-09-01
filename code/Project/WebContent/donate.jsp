<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Volun Up</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script> -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Jua&family=Noto+Sans+KR:wght@300&display=swap')
	;

html, body, header {
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
}

nav {
	font-size: 1em;
	font-family: 'Jua', sans-serif;
}

header {
	background-color: HoneyDew;
}

#logo {
	font-family: 'Black Han Sans', sans-serif;
	font-size: 5em;
}

#logo_sub {
	font-family: 'Jua', sans-serif;
}

#v {
	color: orange;
}

#u {
	color: lawngreen;
}

#git {
	color: yellow;
}

#hr_line {
	border-top: 4px double #8c8b8b;
	text-align: center;
	width: 95%;
}
</style>
</head>
<body>
	<!-- navigator -->
	<nav class="py-2 bg-success border-bottom text-white">
		<div class="container d-flex flex-wrap justify-content-center">
			<ul class="nav me-auto">
				<li class="nav-item"><a href="index.jsp"
					class="nav-link link-dark px-2 text-white mx-5" aria-current="page">Home</a></li>
				<li class="nav-item"><a href="volunteer.jsp"
					class="nav-link link-dark px-2 text-white mx-5">봉사활동 찾기</a></li>
				<li class="nav-item"><a href="donate.jsp"
					class="nav-link link-dark px-2 active text-white mx-5">기부단체 찾기</a></li>
				<li class="nav-item"><a href="commu.jsp"
					class="nav-link link-dark px-2 text-white mx-5">커뮤니티</a></li>
			</ul>
		</div>
	</nav>

	<!-- header -->
	<header class="py-3">
		<div class="container d-flex flex-wrap justify-content-center">
			<h1 id="logo">
				<span id="v">V</span>olun <span id="u">U</span>p
			</h1>
		</div>
		<div class="container d-flex flex-wrap justify-content-center"
			id="logo_sub">Volume Up! Volunteer Up!</div>
	</header>

	<!-- title -->
	<div class="container-fluid px-4">
		<div class="col-xl-12 col-md-12 text-center my-5">
			<h1>[ 기부단체 찾기 ]</h1>
		</div>
		<hr id="hr_line">
	</div>


	<!-- main -->
	<div class="container-fluid px-4 mt-5 mb-5">
		<div class="col-xl-12 col-md-12 text-center">
			<div class="row row-cols-1 row-cols-md-4 text-center">
				<div class="col">
					<h2>지역</h2>
					<hr>
					<select class="form-select" aria-label="Default select example">
						<option selected>지역을 선택하세요</option>
						<option value="1">서울</option>
						<option value="2">경기</option>
						<option value="3">인천</option>
						<option value="4">대전</option>
						<option value="5">대구</option>
						<option value="6">부산</option>
						<option value="7">울산</option>
						<option value="8">광주</option>
						<option value="9">강원</option>
						<option value="10">세종</option>
						<option value="11">충북</option>
						<option value="12">충남</option>
						<option value="13">경북</option>
						<option value="14">경남</option>
						<option value="15">전북</option>
						<option value="16">전남</option>
						<option value="17">제주</option>
						<option value="18">전국</option>
					</select>
				</div>
			</div>
		</div>
	</div>


				<!-- footer -->
				<footer
					class="blog-footer text-center bg-success text-white pb-3 pt-4">
					<p>
						2021-1 Hallym Univ - WebServer<br> Volun Up / Junggwon Kim(<a
							href="https://github.com/Kim-98" id="git"> Github </a>)
					</p>
					<p>
						<a href="#" id="git">Back to top</a>
					</p>
				</footer>
				<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
					integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
					crossorigin="anonymous"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
					integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
					crossorigin="anonymous"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
					integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
					crossorigin="anonymous"></script>
</body>
</html>
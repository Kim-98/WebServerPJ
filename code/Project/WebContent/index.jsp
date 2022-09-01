<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Volun Up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script> -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Jua&family=Noto+Sans+KR:wght@300&display=swap');
	html, body, header { margin: 0; padding: 0;}
	body {font-family: 'Noto Sans KR', sans-serif;}
	nav {font-size: 1em; font-family: 'Jua', sans-serif;}
	header { background-color: HoneyDew;}
	#logo {
		font-family: 'Black Han Sans', sans-serif;
		font-size: 5em;
	}
	#logo_sub { font-family: 'Jua', sans-serif; }
	#v { color: orange; }
	#u { color: lawngreen; }
	#git { color: yellow; }
	#carousel_1 { 
		background: rgba(0, 0, 0, 0.4);
	}
	#carousel_2 { 
		background: rgba(255, 165, 0, 0.4);
	}
	#carousel_3 { 
		background: rgba(0, 0, 128, 0.4);
	}
	.card { height: 23rem; }
	.card-title { height: 5rem; }
	#border { 
		border: 1px solid blue;
		border-radius: 50%; 
		width: 50%; height: 150px;
	}
</style>
</head>
<body>
<!-- navigator -->
	<nav class="py-2 bg-success border-bottom text-white">
		<div class="container d-flex flex-wrap justify-content-center">
			<ul class="nav me-auto">
				<li class="nav-item"><a href="index.jsp"
					class="nav-link link-dark px-2 active text-white mx-5"
					aria-current="page">Home</a></li>
				<li class="nav-item"><a href="volunteer.jsp"
					class="nav-link link-dark px-2 text-white mx-5">봉사활동 찾기</a></li>
				<li class="nav-item"><a href="donate.jsp"
					class="nav-link link-dark px-2 text-white mx-5">기부단체 찾기</a></li>
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

<!-- carousel -->
	<div class="carousel slide" id="carouselExampleIndicators"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li class="active" data-target="#carouselExampleIndicators"
				data-slide-to="0"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" id="carousel">
				<img class="d-block w-100" src="media/image1.jpg" alt="img1" />
				<div class="carousel-caption d-none d-md-block">
					<div id="carousel_1" class="py-3">
						<h2>Volun Up</h2>
						<h5>서로의 목소리를 높여서 함께할 봉사자를 모집하자!</h5>
					</div>
				</div>
			</div>
			<div class="carousel-item" id="carousel">
				<a href="https://www.1365.go.kr/vols/main.do" target="_blank"> <img
					class="d-block w-100" src="media/image2.jpg" alt="image2" />
					<div class="carousel-caption d-none d-md-block">
						<div id="carousel_2" class="py-3">
							<h2>1365 자원봉사자 포털</h2>
							<p>(이미지 클릭 시 해당 사이트로 이동됩니다)</p>
						</div>
					</div>
				</a>
			</div>
			<div class="carousel-item" id="carousel">
				<a href="https://www.nanumkorea.go.kr/main.do" target="_blank">
					<img class="d-block w-100" src="media/image3.jpg" alt="img3" />
					<div class="carousel-caption d-none d-md-block">
						<div id="carousel_3" class="py-3">
							<h2>1365 기부포털</h2>
							<p>(이미지 클릭 시 해당 사이트로 이동됩니다)</p>
						</div>
					</div>
				</a>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

<!-- card -->
	<div class="container-fluid px-4 mt-5 mb-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1 class="mb-5">봉사활동 관련 보도 자료</h1>
			<%@ include file="crawler.jsp" %>
			<div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm" style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title"><%= ie1_2.next().text() %></h4>
							<p class="card-text"><%= ie2_2.next().text() %></p>
						</div>
						<div class="card-footer">
							<a href="<%= href1_2 %>" target="_blank" class="btn btn-primary">전문 보기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm" style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title"><%= ie1_2.next().text() %></h4>
							<p class="card-text"><%= ie2_2.next().text() %></p>
						</div>
						<div class="card-footer">
							<a href="<%= href2_2 %>" target="_blank" class="btn btn-primary">전문 보기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm" style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title"><%= ie1_2.next().text() %></h4>
							<p class="card-text"><%= ie2_2.next().text() %></p>
						</div>
						<div class="card-footer">
							<a href="<%= href3_2 %>" target="_blank" class="btn btn-primary">전문 보기</a>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-4 rounded-3 shadow-sm" style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title"><%= ie1_2.next().text() %></h4>
							<p class="card-text"><%= ie2_2.next().text() %></p>
						</div>
						<div class="card-footer">
							<a href="<%= href4_2 %>" target="_blank" class="btn btn-primary">전문 보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>

<!-- info -->
	<div class="container-fluid px-4 mt-5 mb-5 text-center">
		<h1 class="mb-5">봉사활동의 유형</h1>
		<div class="row justify-content-center mt-5 bg-light py-5" style="width: 80%; margin: 0 auto;">
			<h2>일반 자원봉사</h2>
			<div class="col-xl-12 text-left mt-3 px-3">
				<div class="text-center">홍보, 캠페인, 행사 보조, 무료급식 등이다. 이런 봉사는 별다른 기술 없이도 시작할 수 있다.</div>
				<div class="mt-5 mx-5">
					<h5 class="my-3">
						- 헌혈<br>
						헌혈을 하고 기념품으로 기부권을 선택하면 3,500~8,500원을 기부 가능하며 헌혈증도 기부 가능하다.<br><br>
						- 댓글응원<br>
						농담이 아니다. 실제로 1365 사이트를 들어가보면 주로 뉴스 등의 게시글에 선댓글을 다는 봉사가 있다. 참여자들의 참여 욕구를 높이기 위함이며, 지자체에서 직접 운영하는 경우도 있다.
					</h5>
				</div>
			</div>
		</div>
		
		<div class="row justify-content-center mt-5 bg-light py-5" style="width: 80%; margin: 0 auto;">
			<h2>재능기부</h2>
			<div class="col-xl-12 text-left mt-3 px-3">
				<div class="text-center">개인이 가지고 있는 특별한 기술이나 능력으로 행하는 자원봉사를 말한다.</div>
				<div class="mt-5 mx-5">
					<h5 class="my-3">
						- 자동차 배달<br>
						운전면허증을 소지하고 있어야 하며 때에 따라 기업의 전용 트럭이 주어지거나 자기 차량이 필요한 경우도 있다. 차량 유류비를 지원해준다.<br><br>
						- 요리<br>
						독거노인을 위한 반찬 만들기 등의 봉사가 많다. 무료급식과 연계되기도 한다.<br><br>
						- 레크레이션 진행자<br>
						미술, 노래, 연주, 만들기, 체조 등<br><br>
						- 취미활동 강사<br>오카리나, 요가, 댄스, 성인 외국어, 꽃꽂이, 노래교실 등<br><br>
						- 강의<br>노인 한글교실 도우미, 장애아동 도우미, 다문화 한국어 도우미 등 특수분야 강사, 과외, 학원, 영어 등 입시 강사, 초중고 전과목이 도움이 될 수 있다.<br><br>
						- 통역 및 번역가<br>주로 영어, 중국어의 수요가 많다.<br><br>
						- 의료봉사<br>간호조무사, 치과위생사 등.<br><br>
						- 미용봉사<br>미용사, 이발사 등
					</h5>
				</div>
			</div>
		</div>
	</div>

<!-- footer -->
	<footer class="blog-footer text-center bg-success text-white pb-3 pt-4">
		<p>
			2021-1 Hallym Univ - WebServer<br>
			Volun Up / Junggwon Kim(<a href="https://github.com/Kim-98" id="git"> Github </a>)
			
		</p>
		<p>
			<a href="#" id="git">Back to top</a>
		</p>
	</footer>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
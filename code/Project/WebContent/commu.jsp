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
					class="nav-link link-dark px-2 text-white mx-5"
					aria-current="page">Home</a></li>
				<li class="nav-item"><a href="volunteer.jsp"
					class="nav-link link-dark px-2 text-white mx-5">봉사활동 찾기</a></li>
				<li class="nav-item"><a href="donate.jsp"
					class="nav-link link-dark px-2 text-white mx-5">기부단체 찾기</a></li>
				<li class="nav-item"><a href="commu.jsp"
					class="nav-link link-dark px-2 active text-white mx-5">커뮤니티</a></li>
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
			<h1>[ 커뮤니티 ]</h1>
		</div>
		<hr id="hr_line">
	</div>
	
<!-- table -->
	<%@ page import="java.io.PrintWriter" %>
	<%@ page import="dao.Conn" %>
	<%@ page import="dao.DataEntity" %>
	<%@ page import="java.util.ArrayList" %>

	<div class="container-fluid px-5 my-5 w-80" >
	<table class="table table-hover text-center">
		<thead>
		<tr style="background-color: #CFC4FF;">
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
		</thead>
		
		<tbody>
		<%
			int pageNum = 1;
			if(request.getParameter("pageNum") != null) {
				pageNum = Integer.parseInt(request.getParameter("pageNum"));
			}
		
			Conn con = new Conn();
			ArrayList<DataEntity> list = con.getList(pageNum);
			for (int i=0; i < list.size(); i++) {
		%>
		<tr>
			<td class="col-md-1"><%= list.get(i).getNum() %></td>
			<td class="col-md-2"><%= list.get(i).getName() %></td>
			<td class="col-md-2"><%= list.get(i).getSubject() %></td>
			<td class="col-md-5"><%= list.get(i).getContent() %></td>
			<td class="col-md-6"><%= list.get(i).getDate() %></td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
		
		<hr/>
		<div class="text-right">
			<button type="button" class="btn btn-default" onclick="location.href='commu_add.jsp'">글쓰기</button>
		</div>
		<ul class="pagination justify-content-center">
			<li><a href="#" style="margin-right: 20px;" class="text-secondary"><</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">1</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">2</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">3</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">4</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">5</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">></a></li>
		</ul>
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="dao.Conn" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="db" class="dao.DataEntity" scope="page" />
<jsp:setProperty name="db" property="subject" />
<jsp:setProperty name="db" property="name" />
<jsp:setProperty name="db" property="content" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(db.getSubject() == null || db.getName() == null || db.getContent() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('모두 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		Conn con = new Conn();
		int result = con.write(db.getSubject(), db.getSubject(), db.getContent());
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('게시물 등록 실패')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='commu.jsp'");
			script.println("</script>");
		}
	}
%>
</body>
</html>
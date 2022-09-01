<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.io.IOException"%>
	<%@ page import="java.util.Iterator"%>
	<%@ page import="org.jsoup.Jsoup"%>
	<%@ page import="org.jsoup.nodes.Document"%>
	<%@ page import="org.jsoup.nodes.Element"%>
	<%@ page import="org.jsoup.select.Elements"%>

<%
	String url2 = "https://search.naver.com/search.naver?where=news&sm=tab_jum&query=%EB%B4%89%EC%82%AC%ED%99%9C%EB%8F%99"; //크롤링할 url지정
	Document doc2 = null;        //Document에는 페이지의 전체 소스가 저장된다
	
	try {
		doc2 = Jsoup.connect(url2).get();
	} catch (IOException e) {
		e.printStackTrace();
	}
	//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
	Elements element2 = doc2.select("div.group_news");
	//Iterator을 사용하여 하나씩 값 가져오기
	Iterator<Element> ie1_2 = element2.select("a.news_tit").iterator(); //title
	Iterator<Element> ie2_2 = element2.select("div.news_dsc").iterator(); //sub
	Iterator<Element> ie3_2 = element2.select("a.news_tit").iterator(); //link
	
	Element link1_2 = ie3_2.next();
	String href1_2 = link1_2.attr("href");
	
	Element link2_2 = ie3_2.next();
	String href2_2 = link2_2.attr("href");
	
	Element link3_2 = ie3_2.next();
	String href3_2 = link3_2.attr("href");
	
	Element link4_2 = ie3_2.next();
	String href4_2 = link4_2.attr("href");
%>


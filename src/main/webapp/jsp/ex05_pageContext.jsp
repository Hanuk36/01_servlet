<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 ; pageContext</title>
</head>
<body>
<%-- 
	pageContext 객체는 JSP 기본 내장 객체 이다.
	JSP 페이지에서 1:1 로 연결된 객체로 JSP 페이지당 하나의 pageContext 객체가 생성
	같은 페이지에서 서로 값을 공유할 수 있으며, 다른기본내장객체를 구하거나, 페이지의 흐름을 제어한다.
	
	1. 데이터 저장 : pageContext.setAtrribute("이름", 객체);
	   데이터 호출 : pageContext.getAtrribute("이름") => EL 사용가능 ${이름}
	   생명주기 : 해당 페이지를 벗어나면 저장 정보도 사라진다.
	   
	   **속성을 이용해서 데이터를 저장 및 호출하는 내장 객체들
	   	우선순위: pageContext > request > session > application
	   	생명주기: *pageContext < ***request < *session < application (생명주기는 application 이 제일 길다)
	   	
	   - pageContext : 현재 페이지를 벗어나면 정보도 사라진다.
	   - request : response 가 되면 정보도 사라진다.
	   - session : 해당 브라우저가 종료되면 정보도 사라진다.
	   	          (예외적으로 시간을 지정할 수 있다. => 팝업창에서 일주일간 안보기, 오늘하루 안보기 등등, 일정시간 지나면 로그아웃)
	   	          보통 로그인 처리할 때 사용
		
	   - application : 해당 프로젝트가 종료 될때 정보가 사라진다.
	   				   전역적으로 사용하던가 환경정보 등을 가지고 있다.
--%>

	<% out.println("<h2>Hello JSP</h2>"); %>
	<%! String str = "Hello jsp"; %>
	<h2><%= str %></h2>
	<h2>결과 : ${str}</h2> <%-- 못 불어온다.--%>
	
	<hr>
	
	<%
		//데이터 저장
		pageContext.setAttribute("addr", "서울시 마포구");
		pageContext.setAttribute("age", 24);
		pageContext.setAttribute("gender", true);
	%>

	<h2>결과 보기</h2>
	<h2>EL : pageContext, request, session, application</h2>  <%-- 무조건 이 4군대에 저장되 있어야만 불어온다.--%>
	<h3>주소 : ${addr}</h3>
	<h3>나이 :${age}</h3>
	<h3>성별 :${gender}</h3>
	<h3>str :${str}</h3>
	<hr>
	
	<h2>우선순위 : pageContext, request, session, application</h2>
	
	<% 
		pageContext.setAttribute("name", "둘리1");
		request.setAttribute("name", "도우너");
		session.setAttribute("name", "희동이");
		application.setAttribute("name", "마이콜");
	%>
	
	<h3>결과 : ${name}</h3>
	
	<%-- 결과 따로따로 보기 --%>
	<h3>결과 : ${pageScope.name}</h3>
	<h3>결과 : ${requestScope.name}</h3>
	<h3>결과 : ${sessionScope.name}</h3>
	<h3>결과 : ${applicationScope.name}</h3>
	<!-- ex06 에서 include 할떄 -->
	<h3>결과06 : ${phone}</h3>























</body>
</html>
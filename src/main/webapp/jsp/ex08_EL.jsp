<%@ page import ="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--<퍼센트 퍼센트> 안에 자바코드 쓸수 있다.--%>
	<%
		VO vo = new VO("1", "둘리", "24", "서울");
		request.setAttribute("vo", vo);
	
	%>
	<h2>
		<ul>
			<%-- class VO 로 가보면 private 이지만 알아서 setter 로 가서 값을 가지고 온다 --%>
		  	<li>${vo}</li>
		  	<li>${vo.idx}</li>
		  	<li>${vo.name}</li>
		  	<li>${vo.age}</li>
		  	<li>${vo.addr}</li>
		</ul>
	</h2>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<%-- 
	EL(Expression Language) : 표현언어
	jsp 표현식(<%= %>) 대신에 사용한다.
	<%= 변수값 이나 메서드 결과 %>  => ${변수나 메서드의 결과}
	
	앞에서 배운 pageContext, request, session, application 을 이용해서 
	데이터를 저장한 정보를 EL 이나 JSTL 를 이용하면 저장한 정보를 바로 사용할 수 있다.
--%>
	<h2>표현식을 사용한 산술연산</h2>
	<h3>
		<ul>
		  	<li> 15 + 7 = <%=15+7 %> </li>
		  	<li> 15 - 7 = <%=15-7 %> </li>
		  	<li> 15 * 7 = <%=15*7 %> </li>
		  	<li> 15 / 7 = <%=15/7 %> </li>
		  	<li> 15 % 7 = <%=15%7 %> </li>
		</ul>
	</h3>
	<h2>EL을 사용한 산술연산</h2>
	<h3>
		<ul>
		  	<li> 15 + 7 = ${15+7} </li>
		  	<li> 15 - 7 = ${15-7} </li>
		  	<li> 15 * 7 = ${15*7} </li>
		  	<li> 15 / 7 = ${15/7} </li>
		  	<li> 15 % 7 = ${15%7} </li>
		</ul>
	</h3>
	<hr>
	
	<h2>표현식 변수 사용 예제</h2>
	<% int su = 157 + 47; %>
	<h3>결과 : <%= su %>  </h3>
	
	<%-- EL 은 반드시 4군대에 저장되어야지만 사용될수 있다. 그래야 값이 나온다 --%>
	<%-- EL 은 pageContext, request, session, application 에 저장되어야 사용 가능 --%>
	<h3>결과(값 안보일것임) : ${su }  </h3>
	
	<%pageContext.setAttribute("su", su); %>
	<h3>결과(값 보일것임) : ${su }  </h3>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.ict.db.VO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : 코어 (C)</title>
</head>
<body>
<%-- 
	JSTL : JSP standard Tag Library
	1. 라이브러리 다운 받아서 해당 프로젝트에 넣기 (tomcat.apache.org)
	2. 다운받은 4개의 파일을 WEB-INF 안에 lib 폴더에 넣어주자
	3. JSTL 을 사용하기 위해서는 지시어 중 taglib 선언하고 사용한다. (보통 page 지시어 밑)
		코어: <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		포멧팅: <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	4. 사용법: 코어 => <c:사용명령어>, 포멧팅=> <fmt:사용명령어>
--%>

<%-- 1. 변수생성 밑 데이터 저장 : 디폴트는 pageContext 에 저장 --%>
<%-- 변수 생성 (set) => <c:set var="변수명" value="데이터" /> --%>
	
	<c:set var="str" value="Hello JSTL!!" />
	
	<%-- 변수값 출력 (out)=> <c:out value= "출력할 데이터 또는 EL 사용"/> --%>
	<c:out value="str" />    <br><%-- 문자열 출력 --%>
	<c:out value="${str}"/> <br><%-- 변수값 출력 --%>
	${str}
	<hr>
	<%-- 변수,삭제(remove) --%>
	<c:remove var="str"/> <br><%-- str 변수를 뜻함. 문자열이 아님 --%>
	<c:out value="${str}"/> <br><%-- 변수값 출력 --%>
	${str} <br>
	<hr>
	
	<%--
		if 문 : else 가 없다. 조건식이 참일때만 실행
		<c:if test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성" var="변수")">
		</c:if>
	 --%>
	
	<c:if test="${4>3 }">
		<h2>결과: 참이라서 실행</h2>
	</c:if>
	<hr>
	<c:if test="${4<3 }">
		<h2>결과: 거짓이라서 실행 안됨</h2>
	</c:if>
	<hr>
	
	<hr>
	<%-- avg 가 80이상이면 합격 (출력 됨)--%>
	<c:set var="avg" value="87"></c:set>
	<c:if test="${avg > 80}">
		<h2>결과: 합격</h2>
	</c:if>
	<hr>
	
	
	<%-- avg 가 80이상이면 합격 (출력 안됨)--%>
	<c:set var="avg" value="70"></c:set>
	<c:if test="${avg > 80}">
		<h2>결과: 합격</h2>
	</c:if>
	<hr>
	
	<c:set var="avg" value="87"></c:set>
	<%-- <c:if test="${avg > 80}"> --%>
	<c:if test="${avg ge 80}">
		<h2>결과: 합격2</h2>
	</c:if>
	<hr>
	
	<%-- 
		if 문은 else 가 없어서 불편하다.
		대신 choose 문 사용한다.
		switch 문 과 비슷하다.
		
		<c:choose>
			<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성">참일때 실행</c:when>
			<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성">참일때 실행</c:when>
			<c:when test="조건식(관계연산, 비교연산, 논리연산 -> EL 방식으로 작성">참일때 실행</c:when>
			<c:otherwise>위 조건이 맞지 않았을 때 (즉, 나머지)</c:otherwise>
	    </c:choose>
	--%>
	<%-- avg가 80이상이면 합격 아니면 불합격 --%>
	<c:set var="avg" value="67"></c:set>
	<c:choose>
		<c:when test="${avg ge 80}">
			<h3>합격3</h3>
		</c:when>
		<c:otherwise>
			<h3>불합격3</h3>
		</c:otherwise>
	</c:choose>
	
	<hr>
	<%-- avg2 가 90이상이면 A학점, 80이상이면 B학점, 70이상이면 C학점, 나머지 F학점 
		** 정수는 정수와 비교, 실수는 실수와 비교
	--%>
	<%-- 실수 넣으면 오류남 --%>
	<c:set var="avg2" value="67"></c:set>
	<c:choose>
		<c:when test="${avg2 >= 90}">
			<h3>A학점</h3>
		</c:when>
		<c:when test="${avg2 >= 80}">
			<h3>B학점</h3>
		</c:when>
		<c:when test="${avg2 >= 70}">
			<h3>C학점</h3>
		</c:when>
		<c:otherwise>
			<h3>불합격입니다.</h3>
		</c:otherwise>
	</c:choose>
	
	<%-- forans
		 1. 일반적인 for 문
		 		<c:forEach begin="시작값" end="끝값" step="증가/감소" var="안에 사용할 변수" varStatus="변수상태값">
		 2. 개선된 for 문
		 		<c:set var="사용할변수" value="둘리, 도우너, 마이콜, 희동이, 고길동" />
	 			<c:forEach var="사용할변수" items="$(사용할변수를~~~~???????? 적기~~적기~~~적기~~~~)">
	 			</c:forEach>
	 --%>
	 
	 <h2>10-20까지 출력</h2>
	 <c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
	 	<h3>${k} : ${vs.index } : ${vs.count } : ${vs.first } :  ${vs.last }</h3><br>
	 </c:forEach>
	 <hr>
	 
	 
	 <h2>10-20까지 짝수만 출력하기</h2>
	 <c:forEach begin="10" end="20" step="1" var="k" varStatus="vs">
	 	<c:if test="${k % 2 eq 0 }">
	 		<h3>${k} : ${vs.index } : ${vs.count } : ${vs.first } :  ${vs.last }</h3><br>
	 	</c:if>
	 </c:forEach>	
	 <hr>
	 
	 <%-- 배열 생성 --%>
	 <c:set var="arr_1" value="둘리, 도우너, 마이콜, 희동이, 고길동" />
	 <c:forEach var="k" items="${arr_1}">
	 	<h3>${k} 님, 환영합니다.</h3>
	 </c:forEach>
	 
<%
	//모델에서 ArrayList를 가져왔다고 치자
	VO vo1 = new VO("2", "도우너", "2", "경기");
	VO vo2 = new VO("3", "마이콜", "34", "대구");
	VO vo3 = new VO("4", "희동이", "15", "대전");

	// 강제로 DB 에서 처리한 것 처럼 list<VO>에 정보를 넣자.
	List<VO> list = new ArrayList<VO>();
	list.add(vo1);
	list.add(vo2);
	list.add(vo3);
	request.setAttribute("list", list);
%>
	 <c:forEach var="k" items="${list}">
	 	<li>${k}</li>
 		<li>${k.idx}</li>
 		<li>${k.name}</li>
 		<li>${k.age}</li>
 		<li>${k.addr}</li>
 	 </c:forEach>
	 <hr>
	 
	 <c:forEach var="k" items="${list}">
	 	<li>${k.idx} : ${k.name} : ${k.age} : ${k.addr}</li>
 	 </c:forEach>
	 <hr>
	 
	 
	 <%-- <c:forTokens items="${배열이나 컬렉션}" delims="구분자" var="변수명"></c:forTokens> --%>	 
	 <%-- forTokens: 쪼개는 역활을 함.  split 과 같은 기능--%>	
	 
	 <%--확인해보기~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
	 <%--확인해보기~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
	 <c:set var="arr_2" value="둘리,도우너,마이콜/홍길동,장길산,임꺽정/태권브이,마징가,짱가"/>
	 <c:forTokens items="${arr_2}" delims="/" var="k">
	 	<h3>${k}님</h3>
	 </c:forTokens>
	 <hr>
	 <%--확인해보기~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
	 <c:forTokens items="${arr_2}" delims="," var="k">
	 	<h3>${k}님</h3>
	 </c:forTokens>
	  <hr>
	 <%--확인해보기~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--%>
	 <c:forTokens items="${arr_2}" delims=", /" var="k">
	 	<h3>${k}님</h3>
	 </c:forTokens>
	 <hr>
	 
	 
	 <%-- redirect : 페이지이동 (request, response 새로 만들어진다. --%>
	 <%-- <c:redirect url="ex07_EL.jsp"></c:redirect> --%>	
	 
	 <%-- include와 같음--%>	
	 <%-- <c:import url="ex07_EL.jsp" /> --%>
	 
	 

<%-- --%>	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
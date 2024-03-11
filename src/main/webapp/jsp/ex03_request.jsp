<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체: request</title>
</head>
<body>
<%-- 
	request(요청) ㅣ 클라이언트가 요청한 정보를 담고 있음(파라미터 가지고 있음)
	**request 의 생명주기는 response(응답)하면 끝난다.
	
	request 가 가지고 있는 정보들
		1. 클라이언트의 정보 및 서버정보를 얻을 수 있는 메서드 제공
			-- getRemoteAddr()         -- getContentLength()
			-- getCharacterEncoding()  -- getContentType()
			-- getProtocol()           -- getContextPath()
			-- getRequestURI()         -- getServerPort()
			-- getServerName()         
		
		** 2. 파라미터 정보 제공
			- getParameter(String name)      : String
			- getParameterValue(String name) : String[]
			- getParameterMap(String name)   : Map<String, String[]>
			- getParameterNames()            : Enumeration<String>
			
			** 다른 주요 메서드
			- 포워드 : request.getRequestDispacher("이동할주소").forward(request,response);
			- 속성을 이용한 데이터 저장 : request.setAttribute("이름", 데이터);
			- 속성에 저장된 데이터 호출 : request.getAttribute("이름") 또는 ${이름} => 표현식 EL 이라고 한다.
			- 모델에서 나중에 새션을 호출할때 사용 : request.getSessison();
--%>
	<h2>Request 를 활용한 클라리언트 정보 및 서버 정보 보기</h2>
	<h3>
		<ul>
			<li>클라이언트 IP        : <%= request.getRemoteAddr()%> </li>
			<li>요청 정보 길이        : <%= request.getContentLength()%> </li>
			<li>요청 정보 인코딩       : <%= request.getCharacterEncoding()%> </li>
			<li>요청 정보 컨텐츠 타입    : <%= request.getContentType()%> </li>
			<li>요청 정보 프로토콜      : <%= request.getProtocol()%> </li>
			<li>요청 정보 정보 전달 방식 : <%= request.getMethod()%> </li>
			<li>요청 정보 URI       : <%= request.getRequestURI()%> </li>
			<li>요청 정보 URL       : <%= request.getRequestURL()%> </li>
			<li>컨택스트 경로         : <%= request.getContextPath()%> </li>
			
		
		</ul>
	</h3>
	



















</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 연습111</title>
</head>
<body>
	<form action="/01_servlet/P_Guest" method="post">
		<input type="submit" value="guestbook">
		<input type="hidden" name="cmd" value="list">
	</form>
</body>
</html>
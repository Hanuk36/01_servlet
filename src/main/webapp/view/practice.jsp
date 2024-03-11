<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습</title>
</head>
<body>
	<form action="/01_servlet/Practice">
		<input type="submit" value="오늘 닐짜 구하기">
		<input type="hidden" name="cmd" value="1">
	</form>
	<form action="/01_servlet/Practice">
		<input type="submit" value="운세 구하기">
		<input type="hidden" name="cmd" value="2">
	</form>
	<form action="/01_servlet/Practice">
		<fieldset>
			<legend>계산기</legend>
			<p>수1:
				<input type="number" name="s1" required="required">
			</p>
			<p>수2:
				<input type="number" name="s2" required="required">
			</p>
			<p>연산자:
				<input type="radio" name="op" value="+" checked> +
				<input type="radio" name="op" value="-" checked> -
				<input type="radio" name="op" value="*" checked> *
				<input type="radio" name="op" value="/" checked> /
			</p>
			<input type="submit" value="결과">
			<input type="hidden" name="cmd" value="3">
			<input type="reset" value="다시입력">
		</fieldset>
	</form>
</body>
</html>
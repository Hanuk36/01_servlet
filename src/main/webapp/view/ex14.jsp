<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send_go(f) {
	for (let i = 0; i < f.elements.length; i++) { 
	
		if(f.elements[i].value === ''){
			alert(f.elements[i].name + "을 입력하세요");
			f.elements[i].focus();
			return;
		}
	}
	f.submit();
}
</script>
</head>
<body>
	<form action="/01_servlet/Ex14" method="post" id="myForm">
		<fieldset>
			<legend>성적입력</legend>
			<p>이름: <input type="text" name="name"></p>		
			<p>국어: <input type="number" name="kor"></p>		
			<p>영어: <input type="number" name="eng"></p>		
			<p>수학: <input type="number" name="math"></p>
			<!-- 선택사항이 없이 한개라도 value 값을 준다. 다른 숫자를 주는것이 좋다. 왠만하면 4를 주자. -->
			<input type="hidden" name="cmd" value="1">
			<input type="button" value="결과보기" onclick="send_go(this.form)">
			<input type="reset" value="취소">
		</fieldset>
	</form>
	<hr>
	
	
	<form action="/01_servlet/Ex14" method="post">
		<p>취미 : 
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="영화">영화
			<input type="checkbox" name="hobby" value="독서">독서
		</p>
		<input type="hidden" name="cmd" value="2">
		<input type="submit" value="결과보기">
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
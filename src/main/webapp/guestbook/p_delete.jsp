<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 987</title>
<script type="text/javascript">
	const pwd = "${pwd}";
	const pwd2 = f.pwd.value;
	if(pwd == pwd2){
		const chk = confirm("정말 삭제할까요?123");
		if(chk){
			f.action="/01_servlet/P_Guest";
			f.submit();
		}else{
			history.go(-1); //뒤로가기 -1 앞으로가면 1
		}
	}else{
		alert("비밀번호 틀림123");
		f.pwd.value="";
		f.pwd.focus();
		return;
	}
	} 

</script>
</head>
<body>
	<div>
		<h2>방명록 : 삭제화면</h2>
		<hr />
		<p>[<a href="/01_servlet/P_Guest?cmd=list">목록으로이동1212</a>]</p>
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
						<input type="hidden" name="idx" value="${idx}">
						<input type="hidden" name="cmd" value="delete_ok">
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>
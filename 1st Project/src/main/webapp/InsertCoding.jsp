<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="InsertCodingService">
		<!-- <input name="lang" type="text", placeholder="����Է�"> -->
		<select name="lang">
	  		<option value="���̽�">���̽�</option>
	 		<option value="�ڹ�">�ڹ�</option>
	  		<option value="HTML">HTML/CSS/�ڹٽ�ũ��Ʈ</option>
		</select>
		<input name="id" type="text", placeholder="id�Է�">
		<textarea rows="8" cols="80" name="coding_q">���� �ֱ�</textarea>
		<textarea rows="8" cols="80" name="coding_a">�ؼ� �ֱ�</textarea>
		<input type="submit" value="�ֱ�">
	</form>

</body>
</html>
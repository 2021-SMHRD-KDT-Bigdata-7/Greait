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
	  		<option value="HTML">HTML/CSS</option>
	  		<option value="�ڹٽ�ũ��Ʈ">�ڹٽ�ũ��Ʈ</option>
		</select>
		<div>
			<div><input name="id" type="text", placeholder="id�Է�" value="admin"></div>
			<div><textarea rows="20" cols="100" name="coding_q" placeholder="���� �ֱ�"></textarea></div>
			<div><textarea rows="20" cols="100" name="coding_a" placeholder="�ؼ� �ֱ�"></textarea></div>
			<div><input type="submit" value="�ֱ�">
		</div>
	</form>

</body>
</html>
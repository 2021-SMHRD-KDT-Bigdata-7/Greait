<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title>Arcana by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="index.html" id="logo">Grea:it</a></h1>

					<!-- Nav -->
						<nav id="nav">
							
						</nav>

				</div>
				
				<nav id="menu">	
								<form action = "JoinService" method = "post" align = "center">
								<table class = "joinform">
								<th colspan = "2"><h5>ȸ������</h5></th>
								<tr>
									<td> ���̵� : </td>
									<td>
										<input name = "id" type="text"  placeholder="���̵�">
									</td>
								</tr>
								<tr>
									<td> ��й�ȣ : </td>
									<td>
										<input name = "pw" type="password"  placeholder="�н�����">
									</td>
								</tr>
								<tr>
									<td> �̸��� : </td>
									<td>
										<input name = "email" type="text">
									</td>
								</tr>
								<tr>
									<td> �̸� : </td>
									<td>
										<input name = "name" type="text">
									</td>
								</tr>
								<tr>
									<td> �г��� : </td>
									<td>
										<input name = "nick" type="text">
									</td>
								</tr>
								<tr>
									<td> ���� : </td>
									<td>
										��
										<input type="radio" name = "gender" value = "man">
										��
										<input name = "gender" type="radio" value = "woman">
									</td>
								</tr>
								<tr>
									<td> ������� : </td>
									<td>
										<input name = "birthdate" type="text">
									</td>
								</tr>
								<tr>
									<td> MEMO </td>
									<td align="left" colspan="2"> 
					                    <textarea cols = "51" rows = "5"></textarea>
					                </td>
								</tr>
																
								</table>
								<br>
										<input type="reset" value="�ʱ�ȭ">
										<input type="submit" value="�Ϸ�">
								</form>
					</nav>	
					
			<!-- Footer -->
				<div id="footer">

					<!-- Icons -->
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
							<li><a href="#" class="icon brands fa-google-plus-g"><span class="label">Google+</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>
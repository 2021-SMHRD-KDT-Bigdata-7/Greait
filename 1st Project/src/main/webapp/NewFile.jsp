<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>PSIT</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
.btn {
  border-radius: 4px;
  background-color: rgb(24, 134, 224);
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn:hover span {
  padding-right: 25px;
}

.btn:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="b_main.jsp" id="logo">PSIT</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="b_What_IT.jsp">IT��</a></li>
								<li><a href="b_IT_job.jsp">IT �����Ұ�</a></li>
								<li><a href="b_Roadmap.jsp">�ε��</a></li>
								<li><a href="b_Future.jsp">IT ����</a></li>
							</ul>
						</nav>
				</div>

			<!-- Banner �˻�ڽ�-->
		<section id="banner">
					<header>
						<button class="btn" onclick = "p_Psit.jsp"><span>�˻��Ϸ����� </span></button>
					</header>
				</section>

		<!--sns���� �����۸�ũ------------------------------------------------------------------------------------------------------->
				<br><br><br><br>
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
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">PSIT</a></li>
							</ul>
						</div>
	</body>
</html>
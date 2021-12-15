<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%> 
<%@ page import="Model.Community_commentVO"%>
<%@page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>PSIT.com - Study_Community</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
	table{
		width: 50%;
		height : 50%;
	}

</style>
</head>
<body>
<div>
<%//C:\U��sers\smhrd\OneDrive\���� ȭ��\Web_Study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps %>
<%
MemberVO vo =null;
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	String userID =vo.getM_id();
}else{%>
	Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
	Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>

<header class="main-header clearfix" role="header">
		<div class="logo">
			<a href="Main.jsp"><em>PSIT</em> <span
				style="font-size: x-large;">Personal IT</span></a>
		</div>
		<a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
		<nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="Main.jsp">Home</a></li>
				<% if(vo!=null){%>
				<li><a href="#">����Ž��</a>
					<ul class="sub-menu">
						<li><a href="P_Psit.jsp">PSIT �˻�</a></li>
						<li><a href="P_Psit_Result.jsp">My PSIT</a></li>
					</ul></li>
				<li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
				<li><a class="external">Ŀ�´�Ƽ</a>
					<ul class="sub-menu">
						<li><a href="c_Community.jsp">�����Խ���</a></li>
						<li><a href="c_Study_Community.jsp">���͵� �Խ���</a></li>
						<li><a href="c_Used_Community.jsp">�߰�ŷ� �Խ���</a></li>
					</ul></li>
				<%if(vo.getM_id().equals("admin")) { %>
				<li><a href="ManageUser.jsp" class="external">ȸ������</a></li>
				<%}else{ %>
				<li><a href="My_page.jsp" class="external">����������</a></li>
				<%} %>
				<li><a href="LogoutService" class="external">�α׾ƿ�</a></li>
				<%} else {%>
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Join.jsp">Join</a></li>
				<%} %>
			</ul>
		</nav>
	</header>

		<section style="color: white; text-align: center;"
			class="section coming-soon" data-section="section3">
			<div class="col-8  col-12-narrower imp-narrower"
				style="max-width: 90% !important; display: inline-block;">
				<div id="content">

					<article>
						<div id="board"
							style="background-color: rgba(250, 250, 250, 0.2);">
							<h2 align="center" style="padding: 1%">���͵�Խ��� - �� �� �ۼ�</h2>

							<form action="c_Study_Communitywrite" method="post"
								enctype="multipart/form-data">
								<div align="center">
									<table id="list" style="margin: 1%">
										<tr class="a">
											<br>
											<td rows="30" cols="100" style="text-align: center">�з�</td>
											<td><textarea name="title" rows="1" cols="20"
													style="resize: none;"></textarea></td>
										</tr>
										<tr class="a">
											<td rows="30" cols="100" style="text-align: center"><br>����</td>
											<td><textarea name="title" rows="1" cols="90"
													style="resize: none;" placeholder="������ �Է����ּ���"></textarea></td>

										</tr>
										<tr class="a" class="cm_tr" style="height: 10px">
											<td style="width: 80px; text-align: center">����</td>
											<td><textarea name="content" rows="20" cols="90"
													style="resize: none;"></textarea></td>
										</tr>
										<div style="text-align: center;">
											<tr class="a">
												<td colspan="2" align="right"><br> <input
													name="file1" type="file" style="width: 300px; height: 30px">
													<input name="file2" type="file"
													style="width: 300px; height: 30px"> <input
													name="file3" type="file" style="width: 300px; height: 30px">
												</td>
											</tr>
										</div>
										<tr>
											<td colspan="2" align="right"><br> <input
												type="reset" value="�ʱ�ȭ"
												style="background-color: #f5a425; margin-right: 2%; width: 70px; height: 30px;">
												<input type="submit" value="�ۼ��ϱ�"
												style="background-color: #f5a425; margin-right: 2%; width: 70px; height: 30px;">
											</td>
										</tr>
									</table>
							</form>
						</div>
						<!-- Scripts -->
						<script src="assets/js/jquery.min.js"></script>
						<script src="assets/js/jquery.scrolly.min.js"></script>
						<script src="assets/js/jquery.scrollex.min.js"></script>
						<script src="assets/js/skel.min.js"></script>
						<script src="assets/js/util.js"></script>
						<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
						<script src="assets/js/main.js"></script>
					</article>
				</div>

			</div>
		</section>
		<footer>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p>
								<i class="fa fa-copyright"></i> Copyright 2021 by PSIT | Design:
								<a href="https://templatemo.com" rel="sponsored"
									target="_parent">TemplateMo</a><br> Distributed By: <a
									href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>

							</p>
						</div>
					</div>
				</div>
			</footer></body>
</html>
</body>
</html>
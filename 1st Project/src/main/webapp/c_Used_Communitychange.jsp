<%@page import="Model.u_CommunityVO"%>
<%@page import="Model.s_Community_commentVO"%>
<%@page import="Model.s_CommunityVO"%>
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

<title>PSIT.com - Used_Community</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<style>
table {
	width: 50%;
	height: 50%;
}
#com {
	width: 840px;
	height: 30px;
	border : 1px dotted #444444;
	margin-left: 28%;

	}
.com1 {
width : 30%;
border : 1px dashed #444444;
}
.com2 {
width : 67%;
text-align: left;
display: block;

}
.com3 {
width : 3%;
margin: 0 auto;
}
#com4 {
font-size: 14px;

}
</style>
</head>
<body>
	<div>
		<%//C:\Users\smhrd\OneDrive\���� ȭ��\Web_Study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps %>
		<%
u_CommunityVO ucvo = null;
if(session.getAttribute("ucvo") !=null){
	ucvo = (u_CommunityVO)session.getAttribute("ucvo");}
DAO dao = new DAO();
ArrayList<u_CommunityVO> arr = dao.u_Community();
MemberVO vo = (MemberVO)session.getAttribute("vo");


String userID = null;
int num = Integer.parseInt(request.getParameter("num"));
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID =vo.getM_id();
}else{%>
		Response.Write("
		<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>
		"); Response.Write("
		<script>location.href='Main.jsp';</script>
		");
		<%}%>
		<!--����κ�==================================================================================  -->
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
		<!--����=============================================================================================================  -->
		<section style="color: white; text-align: center;"
			class="section coming-soon" data-section="section3">
			<div class="col-8  col-12-narrower imp-narrower"
				style="max-width: 90% !important; display: inline-block;">
				<div id="content">

					<article>
						<div id="board"
							style="background-color: rgba(250, 250, 250, 0.2);">
							<h2 align="center" style="padding: 1%">�߰�ŷ��Խ��� �� ����</h2>


							<form style="" action="u_c_Communitychange" method="post"
								enctype="multipart/form-data">

								<div align="center">
									<table id="list" style="display: inline;">

										<tr class="a">
											<br>
											<td rows="30" cols="100" style="text-align: center">����</td>
											<td align="left"><textarea name="title" rows="1"
													cols="90" style="resize: none;"><%=ucvo.getUSED_SUBJECT()%></textarea></td>
										</tr>

										<tr>
											<td rows="30" cols="100" style="text-align: center">����</td>
											<td align="left"><textarea name="language" rows="1"
													cols="20" style="resize: none;"><%=ucvo.getUSED_PRICE()%></textarea>
												<select name="way"><option value="��ϴ�">��ϴ�</option>
													<option value="���ŷ�">���ŷ�</option>
													<option value="�ù�ŷ�">�ù�ŷ�</option>
													<option value="�����ŷ�">�����ŷ�</option></select> <select name="status"><option
														value="1">����</option>
													<option value="2">��Ȱ�� ����</option>
													<option value="3">���� ����</option></select> <select name="kinds"><option
														value="å">å</option>
													<option value="�п�ǰ">�п�ǰ</option>
													<option value="��Ÿ">��Ÿ</option></select></td>
										</tr>


										<tr class="a" class="cm_tr" style="height: 10px">
											<td style="width: 80px; text-align: center">����</td>
											<td><textarea name="content" rows="20" cols="90"
													style="resize: none;"><%=ucvo.getUSED_CONTENT()%></textarea></td>
										</tr>
										<tr>
											<td colspan="2"><input name="file1" type="file">
											</td>
										</tr>
										<tr>
											<td colspan="2" style="text-align: right;"><input
												value="<%=request.getParameter("num")%>" name="num"
												style="display: none"> <input type="reset"
												value="�ʱ�ȭ"
												style="background-color: #f5a425; margin-right: 2%; width: 70px; height: 30px;">
												<input type="submit" value="�����ϱ�"
												style="background-color: #f5a425; margin-right: 2%; width: 70px; height: 30px;">
											</td>
										</tr>
										</td>
										</tr>
									</table>
								</div>
							</form>
						</div>

					</article>
					<!-- Scripts -->
					<script src="assets/js/jquery.min.js"></script>
					<script src="assets/js/jquery.scrolly.min.js"></script>
					<script src="assets/js/jquery.scrollex.min.js"></script>
					<script src="assets/js/skel.min.js"></script>
					<script src="assets/js/util.js"></script>
					<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
					<script src="assets/js/main.js"></script>
				</div>
			</div>
		</section></body>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p>
					<i class="fa fa-copyright"></i> Copyright 2021 by PSIT | Design: <a
						href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a><br>
					Distributed By: <a href="https://themewagon.com" rel="sponsored"
						target="_blank">ThemeWagon</a>

				</p>
			</div>
		</div>
	</div>
</footer>

</html>
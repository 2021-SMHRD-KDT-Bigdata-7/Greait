<%@page import="Model.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>PSIT.com - ManageUser</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
</head>

<body>
<%	MemberVO vo = (MemberVO)session.getAttribute("vo");
	DAO dao = new DAO();
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	list = dao.SelectAll();
	%>
	<!--header-->
  <header class="main-header clearfix" role="header">
    <div class="logo">
		<a href="Main.jsp"><em>PSIT</em> <span style = "font-size: x-large;">Personal IT</span></a>  
    </div>
    <a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
    <nav id="menu" class="main-nav" role="navigation">
      <ul class="main-menu">
        <li><a href="Main.jsp">Home</a></li>
        <!-- <li class="has-submenu"><a href="">About IT</a>
          <ul class="sub-menu">
            <li><a href="#section2">IT��?</a></li>
            <li><a href="#section4">IT����</a></li>
            <li><a href="#section3">IT����</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
        </li>
     <% if(vo!=null){%>
        <li><a href="#">����Ž��</a>
        	<ul class="sub-menu">
            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
          	</ul></li>
        <!-- <li><a h\ref="#section5">Video</a></li> -->
        <li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
        <li><a href="#" class="external">Ŀ�´�Ƽ</a>
          <ul class="sub-menu">
            <li><a href="c_Community.jsp">�����Խ���</a></li>
            <li><a href="c_Study_Community.jsp">���͵� �Խ���</a></li>
            <li><a href="c_Used_Community.jsp">�߰�ŷ� �Խ���</a></li>
          </ul></li>
        <%if(vo.getM_id().equals("admin")){ %>
	        <li><a href="ManageUser.jsp" class="external">ȸ������</a></li>
        <%}else{ %>
        <li><a href="My_page.jsp" class="external">����������</a></li>
        <%} %>
        <li><a href="LogoutService" class="external">�α׾ƿ�</a></li>
     <%} else {%>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="Join.jsp">Join</a></li>        
     <%} %>
    
  </header>

	<section class="section coming-soon" data-section="section3">
		<div>
			<div>
				<div>
					<form id="contact" action="" method="post"
						align="center">
						<div class="row">
							<div class="col-md-12">
								<fieldset>
									<h4>MEMBER LIST</h4>
									<table id="memberlist">
										<tr style = "height : 40px;">
											<th> ���̵� </th>
											<th> �̸��� </th>
											<th> �̸� </th>
											<th> ���� </th>
											<th> ȸ������ </th>
										</tr>
										<% for (int i = 0; i < list.size(); i++){ %>
										<% vo = list.get(i); %>										
										<tr style = "background-color: rgba(250,250,250,0.2)!important;">
											<td> <%= vo.getM_id() %> </td>
											<td> <%= vo.getM_email() %> </td>
											<td> <%= vo.getM_name() %> </td>
											<td> <%= vo.getM_gender() %> </td>
											<td><button style="width: 30% !important; margin: 10px !important;" type="button" onclick="location.href='DeleteMember?m_email=<%= vo.getM_email() %>';">����</button></td>
										</tr>
										<% } %>
									</table>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						<i class="fa fa-copyright"></i> Copyright 2020 by Grad School |
						Design: <a href="https://templatemo.com" rel="sponsored"
							target="_parent">TemplateMo</a><br> Distributed By: <a
							href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>

					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/lightbox.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/video.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>
	
</body>
</html>
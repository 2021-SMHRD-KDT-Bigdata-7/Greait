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

<title>PSIT.com - Join</title>

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
<%MemberVO vo = (MemberVO)session.getAttribute("vo"); %>

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
            <li><a href="#section2">IT란?</a></li>
            <li><a href="#section4">IT직무</a></li>
            <li><a href="#section3">IT전망</a></li>
            <li><a href="https://templatemo.com/about" rel="sponsored" class="external">External URL</a></li>
          </ul> -->
        </li>
     <% if(vo!=null){%>
        <li><a href="#">직무탐색</a>
       	<ul class="sub-menu">
        <li><a href="P_Psit.jsp">PSIT 검사</a></li>
        <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
       	</ul></li>
        <!-- <li><a href="#section5">Video</a></li> -->
        <li><a href="CodingStudy.jsp">단계별학습</a></li>
        <li><a href="c_Community.jsp" class="external">커뮤니티</a></li>
        <li><a href="My_page.jsp" class="external">마이페이지</a></li>
        <li><a href="Main.jsp" class="external">로그아웃</a></li>
     <%} else {%>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="Join.jsp">Join</a></li>        
     <%} %>
        </ul>
    
  </header>

	<section class="section coming-soon" data-section="section3">
		<div style="text-align : center;">
			<div style="display: inline-block;width: 30%;">
				<div class="col-md-5" style="flex: 100%; max-width: 100%;">
					<form id="contact" action="JoinService" method="post"
						align="center">
						<div class="row">
							<div class="col-md-12">
								<fieldset>
									<h4>Join Us</h4>
								</fieldset>
								<fieldset>
									<input name="id" type="text" class="form-control" id="id"
										placeholder="아이디를 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="pw" type="password" class="form-control" id="pw"
										placeholder="패스워드를 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="email" type="text" class="form-control" id="email"
										placeholder="Email을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="name" type="text" class="form-control" id="name"
										placeholder="이름을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input name="nick" type="text" class="form-control" id="nick"
										placeholder="닉네임을 입력하세요" required="">
								</fieldset>
							</div>
							<div class="col-md-12" style="color: white;">
								<div id="gender">
									남 <input class="gender" name="gender" type="radio"
										class="form-control" id="gender" value="M"> 
									여 <input
										class="gender" name="gender" type="radio" class="form-control"
										id="gender" value="W">
								</div>
							</div>
							<div class="col-md-12">
								<fieldset color="white">
									<h5 style="color: white;">MEMO</h5>
									<textarea class="textarea" rows="5" name = "memo"></textarea>
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<input style = "background-color: #f5a425" type="reset" value="초기화"> <input style = "background-color: #f5a425" type="submit"
										value="완료">
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

	
	
</body>
</html>
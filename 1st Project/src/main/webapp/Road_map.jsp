<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>PSIT.com - Road_map</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
	
	<style>
		p{
		text-align: center;
		font-weight: 700px;
		font-size:20px;
		}	
		#mapimg{
		padding-top : 5%;
		text-align: center;
		}
	</style>
  </head>

<body>

<%
// �α��� �ȵǾ����� �� �޴��� �ٸ��� �ϱ� ���� vo��������
MemberVO vo = (MemberVO)session.getAttribute("vo");
%>

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
					</ul></li> -->
				<%
				if (vo != null) {
				%>
				<li><a href="#">����Ž��</a>
	        	<ul class="sub-menu">
	            <li><a href="P_Psit.jsp">PSIT �˻�</a></li>
	            <li><a href="P_Psit_Result.jsp">My PSIT</a></li>
	          	</ul></li>
				<!-- <li><a href="#section5">Video</a></li> -->
				<li><a href="StudyPage.jsp">�ܰ躰�н�</a></li>
				<li><a href="c_Community.jsp" class="external">Ŀ�´�Ƽ</a></li>
				<li><a href="My_page.jsp" class="external">����������</a></li>
				<li><a href="LogoutService">�α׾ƿ�</a></li>

				<%
				} else {
				%>
				<li><a href="Login.jsp">Login</a></li>
				<li><a href="Join.jsp">Join</a></li>
				<%
				}
				%>
			</ul>
		</nav>
  </header>
  <div>
    <nav id="mapimg">
    <%String num=request.getParameter("num");%>
    
        <%if(num.equals("1")){%>
       		<p>�� JavaScript, HTML/CSS�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
	        <img usemap="#front" src="assets/images/frontEnd.png">
				<map name="front">
					<area name = "JavaScript" shape="rect" coords="297,397,430,445" href="ShowAllCodingService?lang='�ڹٽ�ũ��Ʈ'">
					<area name = "html/css" shape="rect" coords="298,268,431,381" href="http://www.naver.com">
				</map>
        <%}else if(num.equals("2")) {%>
            <p>�� Java, JavaScript,  HTML/CSS, Python�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
	        <img usemap="#back" src="assets/images/backEnd.png">
				<map name="back">
					<area name = "Java" shape="rect" coords="755,247,853,278" href="http://www.daum.net">
					<area name = "JavaScript" shape="rect" coords="755,446,855,476" href="http://www.google.com">
					<area name = "JavaScript" shape="rect" coords="624,187,724,216" href="http://www.google.com">
					<area name = "html/css" shape="rect" coords="625,92,724,170" href="http://www.naver.com">
					<area name = "Python" shape="rect" coords="755,407,855,436" href="http://www.naver.com">
				</map>
        <%}else if(num.equals("3")) {%>
            <p>�� Java�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
	        	<img usemap="#android" src="assets/images/android.png">
					<map name="android">
						<area name = "Java" shape="rect" coords="94,72,198,99" href="http://www.daum.net">
					</map>
				<br>
				<img src="assets/images/ios.png">
        <%}else if(num.equals("4")) {%>
        	<br><br><br><br><br>
    		<img src="assets/images/infoEng.png">
    		<br><br><br><br><br>
   		<%}else if(num.equals("5")) {%>
            <p>�� Python�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
				<img usemap="#ai" src="assets/images/ai.png">
				<map name="ai">
					<area name = "Python" shape="rect" coords="480,313,629,363" href="http://www.daum.net">
				</map>
           <p><br>�� Java, JavaScript, Python�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
        	<img usemap="#machine" src="assets/images/machineLearning.png">
				<map name="machine">
					<area name = "Java" shape="rect" coords="828,175,960,205" href="http://www.daum.net">
					<area name = "JavaScript" shape="rect" coords="829,225,961,255" href="http://www.google.com">
					<area name = "Python" shape="rect" coords="828,274,961,303" href="http://www.naver.com">
				</map>
		<%}else if(num.equals("6")) {%>
            <p><br><br><br>�� Java, Python�� ���Ͽ� �н��Ͻ÷��� �̹����� �ش� ������ Ŭ���ϼ���! </p>
			<img usemap="#data" src="assets/images/dataEng.png">
				<map name="data">
					<area name = "Java" shape="rect" coords="608,57,702,81" href="http://www.daum.net">
					<area name = "Python" shape="rect" coords="609,15,703,41" href="http://www.naver.com">
				</map><br><br><br><br>
		<%}%>
		</nav>
		</div>
        <footer>
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <p><i class="fa fa-copyright"></i> Copyright 2021 by PSIT
              
               | Design: <a href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a><br>
               Distributed By: <a href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
              
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
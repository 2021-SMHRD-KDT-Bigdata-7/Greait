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
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
  </head>

<body>

<%
// �α��� �ȵǾ����� �� �޴��� �ٸ��� �ϱ� ���� vo��������
MemberVO vo = (MemberVO)session.getAttribute("vo");
%>

   <header class="main-header clearfix" role="header">
    <div class="logo">
      <a href="Main.jsp"><em>Welcome</em> PSIT</a> 
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
				<li><a href="P_Psit.jsp">����Ž��</a></li>
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
    <nav>
    <br><br><br><br><br><br><br><br><br><br>
    <%String num=request.getParameter("num");%>
        <%if(num.equals("1")){%>
        	<p>�ε��1</p>
        <%}else if(num.equals("2")) {%>
        	<p>�ε��2</p>
        <%}else if(num.equals("3")) {%>
        	<p>�ε��3</p>
        <%}else if(num.equals("4")) {%>
    		<p>�ε��4</p>
   		<%}else if(num.equals("5")) {%>
			<p>�ε��5</p>
		<%}else if(num.equals("6")) {%>
			<p>�ε��6</p>
		<%}else{%>
			<p>�ε��7</p>
		<%}%>
		
		</nav>
   
    </div>
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
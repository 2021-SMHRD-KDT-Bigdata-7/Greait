<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>PSIT.com - RSIT_Result</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">

<style>

div{
text-align: center;

}

#big {
margin:3%;
}

img{
width:500px;
height:700px;
}

strong{
text-align: center;
font-size: 30px;
font-weight: 800px;
}

#btn{
background-color: #f5a425;
width: 20%;
    height: 40px;
    border-radius: 0px;
    border: none;
    outline: none;
    color: #fff;
    font-size: 16px;
    margin-bottom: 20px;
    letter-spacing: 0.5px;
}

.btne{
text-align: right;
margin-right: 18.5%;
}

</style>
</head>
<body>
<% String sample = request.getParameter("sample");
%>
<%
MemberVO vo =null;
if (session.getAttribute("vo") != null){
	vo=(MemberVO)session.getAttribute("vo");
}


else{%>
Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}
DAO dao = new DAO();
String job_no ="";
%>
<!-- �Ķ����?? -->
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
					<%} 
				else {%>
					<li><a href="Login.jsp">Login</a></li>
					<li><a href="Join.jsp">Join</a></li>
				<%} %>
			</ul>
		</nav>
	</header>
	
	<!--  ���� MBTI �����ֱ�  -->
	<section style="color: white; text-align: center;"
		class="section coming-soon" data-section="section3">
		<div class="col-8  col-12-narrower imp-narrower"
			style="max-width: 90% !important; display: inline-block;">
			<div id="content">
				<article>
					<div id="board">
					<h2> <br><%=vo.getM_id()%> ���� PSIT �˻� ���</h2>
						
							

		<div id = big>
			<%if(sample.contains("ENFJ")){%>
				<%-- <%job_no=job_no+"�ΰ�����/�ӽŷ���"; %> --%>
				<strong> �ΰ����� & �ӽŷ���<br><br></strong> 
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>
				 
			<% }%>
			<%if(sample.contains("ENFP")){%>
				<%--<%job_no=job_no+"�ΰ�����/�ӽŷ���,�۰�����"; %>--%>
				<strong> 1. �ΰ����� & �ӽŷ���<br><br></strong> 
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>
				<br><br>
				<strong>2. �۰�����<br><br></strong>
				<div>
				 	<img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("ENTJ")){%>
				<%--<%job_no=job_no+"������ �����Ͼ�"; %>--%>
				<strong> ������ �����Ͼ�<br><br></strong> 
				<div>
					<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("ENTP")){%>
				<%--<%job_no=job_no+"�ΰ�����/�ӽŷ���,������ �����Ͼ�"; %>--%>
				<strong>1. �ΰ�����&�ӽŷ���<br><br></strong> 
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>
				<br><br>
				<strong>2. ������ �����Ͼ�<br><br></strong> 
				<div> 
					<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("ESFJ")){%>
				<%--<%job_no=job_no+"������Ʈ �Ŵ���"; %>--%>
				<strong>������Ʈ �Ŵ���<br><br></strong> 
			 	<div>
				 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
				 	<br><br>
			 	</div>
			<% }%>
			<%if(sample.contains("ESFP")){%>
				<%--<%job_no=job_no+"������Ʈ �Ŵ���"; %>--%>
				<strong> ������Ʈ �Ŵ���<br><br></strong> 
			 	<div>
				 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
				 	<br><br>
			 	</div>
			 <% }%>
			<%if(sample.contains("ESTJ")){%>
			<%--<%job_no=job_no+"������ �����Ͼ�,������Ʈ �Ŵ���"; %>--%>
				<strong>1. ������ �����Ͼ�<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
					<br><br>
				</div>
				<br><br>
				<strong>2.������Ʈ �Ŵ���<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
					<br><br>
				</div>
			
			<% }%>
			<%if(sample.contains("ESTP")){%>
				<%--<%job_no="������ �����Ͼ�"; %>--%>
				<strong>������ �����Ͼ�<br><br> </strong>
				<div>
					<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("INFJ")){%>
				<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
				<strong> 1. �鿣�� ������<br><br></strong> 
				<div>
					<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
				    <br><br>
				</div>	
				<br><br>
				<strong>2. �ΰ�����&�ӽŷ���<br><br></strong>
				<div>
					 <img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					 <br><br>
				 </div>
			<% }%>
			<%if(sample.contains("INFP")){%>
				<%--<%job_no="�ΰ�����/�ӽŷ���"; %>--%>
				<strong> �ΰ�����&�ӽŷ���<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("INTJ")){%>
				<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
				<strong> 1. �鿣�� ������<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
					<br><br>
				</div>
				<br><br>
				<strong> 2. �ΰ�����&�ӽŷ���<br><br></strong>	
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>
				<% }%>
			<%if(sample.contains("INTP")){%>
				<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
				<strong> 1. �鿣�� ������<br><br></strong>	 
				<div>
					<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
					<br><br>
				</div>
				<br><br>
				<strong>2. �ΰ�����&�ӽŷ���<br><br></strong> 	
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
					<br><br>
				</div>
			<% }%>
			<%if(sample.contains("ISFJ")){%>
				<%--<%job_no="������Ʈ �Ŵ���"; %>--%>
				<strong> ������Ʈ �Ŵ���<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("ISFP")){%>
				<%--<%job_no="����Ʈ ������"; %>--%>
				<strong> ����Ʈ ������<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png">
					<br><br>
				</div>	
			<% }%>
			<%if(sample.contains("ISTJ")){%>
				<%--<%job_no="���� ���� ������"; %>--%>
				<strong> ���� ���� ������<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png">
					<br><br>
				</div>
			<% }%>
			<%if(sample.contains("ISTP")){%>
				<%--<%job_no="�ΰ�����/�ӽŷ���"; %>--%>
				<strong> �ΰ�����&�ӽŷ���<br><br></strong>
				<div>
					<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				</div>	
			<% }%>
			</div>
			 <a href="c_Psit?sample=<%=sample%>"> <button id = "btn">���� �� MY PSIT�� �̵��ϱ�</button></a>
						</div>
					</article>
				</div>
			</div>
	</section>
	<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>


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
</body>
</html>
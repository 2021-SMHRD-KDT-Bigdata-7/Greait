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

<title>PSIT.com - Free_Community</title>

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
<%	
MemberVO vo =null;
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{%>
Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
<% 
DAO dao = new DAO();
CommunityVO cvo = (CommunityVO)session.getAttribute("cvo");
ArrayList<Community_commentVO> cm_arr = dao.cm_Community(cvo.getC_seq());
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
}
ArrayList<CommunityVO> arr = dao.Community();
Community_commentVO cmvo = (Community_commentVO)session.getAttribute("cmvo");
%>
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
			<div id="board" style="background-color: rgba(250, 250, 250, 0.2);">
				<div align="left" style = "padding: 10px;">
					<a href="c_Community.jsp"><button style="background-color:#f5a425; width : 100px; height : 30px; color :white;">�ڷΰ���</button></a>
					</div>
				<h2 align="center" style="padding: 1%">�����Խ��� - <%=cvo.getTitle() %></h2>			
			<div >
				<table id="list" style="margin: 1%; display: inline-block; ">
					<tr>
						<td style="text-align: center"><br>�ۼ���</td>
						<td><br><textarea name="title"  rows="1" cols="20" style="resize: none;"><%=cvo.getWriter()%></textarea></td>
					</tr>
					<tr>
						<td rows="30" cols="100" style="text-align: center">����</td>
						<td><textarea name="title" rows="1" cols="90" style="resize: none;"><%=cvo.getTitle()%></textarea></td>
					</tr>
					<tr class="a" class="cm_tr" style="height: 10px">
						<td style="width: 80px; text-align: center">����</td>
						<td><textarea name="content" rows="20" cols="90"
							 style="resize: none;"><%=cvo.getContent()%></textarea></td>
					</tr>
					<%-- <tr>
						<td colspan="2" class="content" style="white-space: pre-line;"><%=cvo.getContent() %></td>
					</tr> --%>
					
					<%if(cvo.getFile1() !=null && cvo.getFile2() !=null && cvo.getFile3() !=null) { %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getFile1() %>">
							<img src="./images/<%=cvo.getFile2() %>">
							<img src="./images/<%=cvo.getFile3() %>">
						</td>
					</tr>
					<%}else if(cvo.getFile1() !=null && cvo.getFile2() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getFile1() %>">
							<img src="./images/<%=cvo.getFile2() %>">
						</td>
					</tr>
					<%}else if(cvo.getFile1() !=null){ %>
					<tr>
						<td colspan="2">
							<img src="./images/<%=cvo.getFile1() %>">
						</td>
					</tr>
					<%}%>
					</table>
			</div>		
					
				
					<%if (vo != null){%>	
						<%if (userID.equals(cvo.getWriter())||userID.equals("admin")||userID.equals("skalswn")) {%>
							<div align="right" style="margin-right: 500px">
								<span style="width: 100px; height: 30px;"> <a href="c_Communitychange.jsp?num=<%=cvo.getC_seq()%>">
										<button style="background-color: #f5a425; color: white">�����ϱ�</button>
								</a>
								</span> 
								<span style="width: 100px; height: 30px;"> <a
									href="c_Communitydelete?num=<%=cvo.getC_seq()%>">
										<button style="background-color: #f5a425; color: white">�����ϱ�</button>
								</a>
								</span>
							</div>
							<%}%>
					<% }%>
					
					<form action="c_Comment">
					<table style = "width:80%; text-align:center;">
						<tr style="display:inline-block;">
							<td rows = "1" cols="100" ><input type="text" name="C_comment" id="C_comment" ></td>
							<td rows = "1" cols="20"><input type="submit" value="��� �ۼ�"></td>
						</tr>
					
					<tr>
						<td><input value="<%=cvo.getC_seq()%>" name="num" style="display:none">
					<%if (cm_arr != null){%>
						<%for(int i=0;i<cm_arr.size();i++){%>
						<span><%=cm_arr.get(i).getC_writer()%> : </span>
						<span><%=cm_arr.get(i).getContent()%></span>
						<%if (vo != null){%>	
						<%if (userID.equals(cvo.getWriter())||userID.equals("admin")||userID.equals("skalswn")) {%>
						<span align = "left">
						<a href="c_Commentdelete?num=<%=cm_arr.get(i).getCm_seq()%>"></span>
						<button style="background-color:#f5a425; width : 70px; height : 20px; color : white;">�����ϱ�</button></a></td>
						<%}%>
						<%}%>	
						<span><% if(cm_arr.get(i).getC_writer().equals(vo.getM_id())){%></span>
						
							<% }%>
						</td>
							
					</tr>
					</table>
					
					</form>
						<br>
					</tr>
						<% }%>
					<%}%>
					
					<%-- <%if (cmvo !=null){
						for(int i=0;i<arr.size();i++){%>
						<%}%>
					<%}%> --%>
					
					<br>
					<a href="past_c?num=<%=cvo.getC_seq()%>"><button style="background-color:#f5a425; width : 70px; height : 30px; color :white">���� ��</button></a>
					<a href="next_c?num=<%=cvo.getC_seq()%>"><button style="background-color:#f5a425; width : 70px; height : 30px; color :white;">���� ��</button></a>			
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
			</footer>
</body>
</html>
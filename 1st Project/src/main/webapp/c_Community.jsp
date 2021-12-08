<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assetsBoard/css/main.css" />
		<link rel="stylesheet" href="assetsBoard/css/board.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
</head>
<body>
<%
CommunityVO vo = (CommunityVO)session.getAttribute("vo");
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>										
			<div id="board">
				<table id = "list">
					<tr>
						<td>��ȣ</td>
						<td>����</td>
						<td>�ۼ���</td>
						<td>�ð�</td>
					</tr>
					<%for(int i=0;i<arr.size();i++){%>
					<tr>
						<td><a href="viewBoard?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getC_seq()%></a></td>
						<td><a href="viewBoard?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getTitle()%></a></td>
						<td><a href="viewBoard?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getWriter()%></a></td>
						<td><a href="viewBoard?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getDay()%></a></td>
						<td><a href="viewBoard?num=<%=arr.get(i).getC_seq()%>"><%=arr.get(i).getC_cnt()%></a></td>
					</tr> 	
					<% }%>
				</table>
				<a href="main.jsp"><button id="writer">Ȩ���ΰ���</button></a>
				<a href="writerBoard.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
			</div>


			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!-- [if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif] -->
			<script src="assets/js/main.js"></script>
</body>
</html>
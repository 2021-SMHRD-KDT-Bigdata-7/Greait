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
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	table{
		width: 1500px;
	}
	td{
		width: 500px;
	}
	.title{
		width: 718px;
	}
</style>
</head>
<body>
<div>
<%//C:\Users\smhrd\OneDrive\���� ȭ��\Web_Study\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps %>
<%
MemberVO vo =null;
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	String userID =vo.getM_id();
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
				<form action="c_Communitychange" method="post" enctype="multipart/form-data" >
				
				<table id="list">
					<tr>
						<td><input type="text" name="title" class="title" placeholder="������ �ٽ� �Է����ּ���" > </td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content"  rows="20" cols="100" style="resize: none;"><%=cvo.getContent() %></textarea>			
						</td>
					</tr>
					<tr>
					<td colspan="2">
					<input name="file1" type="file">
					<input name="file2" type="file">
					<input name="file3" type="file">
					</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ">
							<input value="<%=cvo.getC_seq()%>" name="num" style="display:none">
							<input type="submit" value="�����ϱ�">
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
</body>
</html>
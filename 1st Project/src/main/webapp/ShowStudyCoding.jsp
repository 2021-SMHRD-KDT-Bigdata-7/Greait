<%@page import="Model.DAO"%>
<%@page import="Model.CodingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int seq = Integer.parseInt(request.getParameter("seq"));
DAO dao = new DAO();
CodingVO codingvo = dao.ShowStudyCoding(seq);
%>
	<div>
	������ ������ ���ʰ��� ���� �� 
	</div>
	<div>
	������ ���� ���� ��
	<%if(seq==codingvo.getCoding_seq()){ %>
		<p><%=codingvo.getCoding_q()%></p>
	<%} %>
	</div>
	<div>
	������ ���� �ؼ�(Ŭ�� ��)���� ��
	
	<%if(seq==codingvo.getCoding_seq()) {%>
	<% System.out.println("�ؼ����� ����..");%>
	<p><%=codingvo.getCoding_a() %></p>
	<%} %>
	
	

	</div>
		
</body>
</html>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
<%if(sample.contains("ENFP")){%>
	<%job_no=job_no+"�ΰ�����/�ӽŷ���,�۰�����"; %>
	<p> Psit �˻� ��� ��Ī ������ �ΰ�����/�ӽŷ���,�۰����� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>
	 <P><img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=3"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("ENTJ")){%>
	<%job_no=job_no+"������ �����Ͼ�"; %>
	<p> Psit �˻� ��� ��Ī ������ ������ �����Ͼ� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("ENTP")){%>
	<%job_no=job_no+"�ΰ�����/�ӽŷ���,������ �����Ͼ�"; %>
	<p> Psit �˻� ��� ��Ī ������ �ΰ�����/�ӽŷ���,������ �����Ͼ� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("ESFJ")){%>
	<%job_no=job_no+"������Ʈ �Ŵ���"; %>
	<p> Psit �˻� ��� ��Ī ������ ������Ʈ �Ŵ��� �Դϴ�.! �����ϼ���~~~ </p>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a></P>
<% }%>
<%if(sample.contains("ESFP")){%>
	<%job_no=job_no+"������Ʈ �Ŵ���"; %>
	<p> Psit �˻� ��� ��Ī ������ ������Ʈ �Ŵ��� �Դϴ�.! �����ϼ���~~~ </p>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a></P>
 <% }%>
<%if(sample.contains("ESTJ")){%>
<%job_no=job_no+"������ �����Ͼ�,������Ʈ �Ŵ���"; %>
<p> Psit �˻� ��� ��Ī ������ ������ �����Ͼ�,������Ʈ �Ŵ��� �Դϴ�.! �����ϼ���~~~ </p>
	
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a></P>
	
	
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a></P>
	 
	
	
<% }%>
<%if(sample.contains("ESTP")){%>
	<%job_no="������ �����Ͼ�"; %>
	<p> Psit �˻� ��� ��Ī ������ ������ �����Ͼ� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("INFJ")){%>
	<%job_no=job_no+"�鿣�� ������, �ΰ�����/�ӽŷ���"; %>
	<p> Psit �˻� ��� ��Ī ������ �鿣�� ������, �ΰ�����/�ӽŷ��� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a></P>	
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>
<% }%>
<%if(sample.contains("INFP")){%>
	<%job_no="�ΰ�����/�ӽŷ���"; %>
	<p> Psit �˻� ��� ��Ī ������ �ΰ�����/�ӽŷ��� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("INTJ")){%>
	<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>
	<p> Psit �˻� ��� ��Ī ������ �鿣�� ������, �ΰ�����/�ӽŷ��� �Դϴ�.! �����ϼ���~~~ </p>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>
	<% }%>
<%if(sample.contains("INTP")){%>
	<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>
	<p> Psit �˻� ��� ��Ī ������ �鿣�� ������, �ΰ�����/�ӽŷ��� �Դϴ�.! �����ϼ���~~~ </p>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>
<% }%>
<%if(sample.contains("ISFJ")){%>
	<%job_no="������Ʈ �Ŵ���"; %>
	<p> Psit �˻� ��� ��Ī ������ ������Ʈ �Ŵ��� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("ISFP")){%>
	<%job_no="����Ʈ ������"; %>
	<p> Psit �˻� ��� ��Ī ������ ����Ʈ ������ �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if(sample.contains("ISTJ")){%>
	<%job_no="���� ���� ������"; %>
	<p> Psit �˻� ��� ��Ī ������ ���� ���� ������ �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=4"> ��Ī ���� �ε�� ���� ����</a></P>
<% }%>
<%if(sample.contains("ISTP")){%>
	<%job_no="�ΰ�����/�ӽŷ���"; %>
	<p> Psit �˻� ��� ��Ī ������ �ΰ�����/�ӽŷ��� �Դϴ�.! �����ϼ���~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a></P>	
<% }%>
<%if (vo != null){%>	
	 <a href="c_Psit?sample=<%=sample%>">  ���� �� MY PSIT�� �̵��ϱ�</a>
	 <%//  a�±׸� Ŭ���ؾ� ���� �� !!!   %>
<% }else{%>
	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> ù��° ��Ī ���� ����������</a>
<%} %>
</body>
</html>
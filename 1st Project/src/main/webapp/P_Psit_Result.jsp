<%@page import="Model.PsitVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
border: 2px solid;
}

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

p{
text-align: center;
font-size: 20px;
font-weight: 800px;
}


</style>
</head>
<body>
	<%
	MemberVO vo = null;
	if(session.getAttribute("vo") != null){
		vo=(MemberVO)session.getAttribute("vo");
	}
	DAO dao = new DAO();
	PsitVO pstore=dao.PSTORE(vo.getM_id());
	String sample = pstore.getPSIT_TYPE();
	 
	String job_no = pstore.getPSIT_JOB();
	
	%>
	<!--  ���� MBTI �����ֱ�  -->
	<table>
	<div id = big>
		<%if(sample.contains("ENFJ")){%>
			<%-- <%job_no=job_no+"�ΰ�����/�ӽŷ���"; %> --%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> �ΰ����� & �ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"><button> ��Ī ���� �ε�� ���� ����</button></a>
				<br><br>
			</div>
			 
		<% }%>
		<%if(sample.contains("ENFP")){%>
			<%--<%job_no=job_no+"�ΰ�����/�ӽŷ���,�۰�����"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> 1. �ΰ����� & �ӽŷ���<br> 2. �۰�����</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>
			<div>
			 	<img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png">
				<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=3"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ENTJ")){%>
			<%--<%job_no=job_no+"������ �����Ͼ�"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> ������ �����Ͼ�</strong> </p>
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ENTP")){%>
			<%--<%job_no=job_no+"�ΰ�����/�ӽŷ���,������ �����Ͼ�"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong>1. �ΰ�����/�ӽŷ���<br> 2. ������ �����Ͼ�</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>
			<div> 
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ESFJ")){%>
			<%--<%job_no=job_no+"������Ʈ �Ŵ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong>������Ʈ �Ŵ���</strong> </p>
		 	<div>
			 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			 	<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a>
			 	<br><br>
		 	</div>
		<% }%>
		<%if(sample.contains("ESFP")){%>
			<%--<%job_no=job_no+"������Ʈ �Ŵ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> ������Ʈ �Ŵ���</strong> </p>
		 	<div>
			 	<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			 	<br><br>
			 	<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a>
			 	<br><br>
		 	</div>
		 <% }%>
		<%if(sample.contains("ESTJ")){%>
		<%--<%job_no=job_no+"������ �����Ͼ�,������Ʈ �Ŵ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br> <strong>1. ������ �����Ͼ�<br> 2.������Ʈ �Ŵ���</strong> </p> 
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png">
			<br><br>
			<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"><button>��Ī ���� �ε�� ���� ����</button></a>
			<br><br>
			</div>
			<div>
				<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
			<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"><button> ��Ī ���� �ε�� ���� ����</button></a>
			<br><br>
			</div>
		
		<% }%>
		<%if(sample.contains("ESTP")){%>
			<%--<%job_no="������ �����Ͼ�"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong>������ �����Ͼ� </strong> </p>
			<div>
				<img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("INFJ")){%>--%>
			<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> 1. �鿣�� ������<br> 2. �ΰ�����/�ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
			    <br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a>
			    <br><br>
			</div>	
			<div>
				 <img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				 <br><br>
				 <a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				 <br><br>
			 </div>
		<% }%>
		<%if(sample.contains("INFP")){%>
			<%--<%job_no="�ΰ�����/�ӽŷ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> �ΰ�����/�ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("INTJ")){%>
			<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> 1. �鿣�� ������<br> 2. �ΰ�����/�ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>
			<% }%>
		<%if(sample.contains("INTP")){%>
			<%--<%job_no="�鿣�� ������, �ΰ�����/�ӽŷ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> 1. �鿣�� ������<br> 2. �ΰ�����/�ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>
		<% }%>
		<%if(sample.contains("ISFJ")){%>
			<%--<%job_no="������Ʈ �Ŵ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> ������Ʈ �Ŵ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ISFP")){%>
			<%--<%job_no="����Ʈ ������"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> ����Ʈ ������</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>	
		<% }%>
		<%if(sample.contains("ISTJ")){%>
			<%--<%job_no="���� ���� ������"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> ���� ���� ������</strong> </p>
			<div>
				<img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png">
				<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=4"> ��Ī ���� �ε�� ���� ����</a>
				<br><br>
			</div>
		<% }%>
		<%if(sample.contains("ISTP")){%>
			<%--<%job_no="�ΰ�����/�ӽŷ���"; %>--%>
			<p><%=vo.getM_id()%> ���� PSIT �˻� ��� ��Ī�� ���� <br><br><strong> �ΰ�����/�ӽŷ���</strong> </p>
			<div>
				<img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png">
			<br><br>
				<a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> ��Ī ���� �ε�� ���� ����</a>
			<br><br>
			</div>	
		<% }%>
		

		
		<%-- �ε�� �ȿ� �н��Ϸ����Ⱑ �����ϱ� ���°� ���� �� ���ƿ�.
		 <%if (vo != null){%>
			<a href="http://localhost:8081/1st_Project/StudyPage.jsp">�н��Ϸ� ����</a>
		
			<!-- job_no �̿��Ͽ� �ش�  ���� ���� -->
			
		<% } else{%>
			<a href=""> ����!! �ٽýõ�~!!! </a>
			
		<%} //job_no �̿��Ͽ� �ش�  ���� ���� %>  --%>
	</div>
	</table>
	
</body>
</html>
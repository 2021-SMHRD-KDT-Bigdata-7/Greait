<%@page import="Model.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CodingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	body{
            height: 100vh;
    }
    #c{
            height: 15%;
            border
    }
    #q{
            height: 15%;
    }
    #a{
            height: 15%;
            
    }
</style>
</head>
<body>
<%
ArrayList<CodingVO> codingarray=(ArrayList<CodingVO>)request.getAttribute("codingarray"); 
DAO dao = new DAO();
/* ArrayList<CodingVO> codingarray = dao.ShowAllCoding(); */
CodingVO vo=null;
%>
	<form action="ShowCoding" method="post">
		���̽�<input type="radio" name="lang" value="���̽�">
		<input type="submit">
    </form>
    
    <form action="ShowAnswer" methos="post">
    
    
    </form>
	<div id="c">�н�����</div>
	<div id="c">
	</div>
    <div id="q">��� ���� ������ ��</div>
    
 	<!-- ��� ���ÿ� ���� ��� ������ ������ �ϱ� -->
	<%if(codingarray!=null){ %>
		<%for(int i=0; i<codingarray.size(); i++){%>
				<%vo=codingarray.get(i); %>
				<p><%= vo.getCoding_q() %></p>
		<%} %>
	<%}else{ %>
		�� �������ּ���.
	<%} %>
	
	</div>
    <div id="a">Ǯ��</div>
    
    
    
    
    <div id="a">
    </div>
</body>
</html>
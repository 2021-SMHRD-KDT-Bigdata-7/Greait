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
 ArrayList<CodingVO> codingarray = (ArrayList<CodingVO>)request.getAttribute("codingarray"); 
CodingVO vo = (CodingVO)request.getAttribute("codingvo");
%>


	<form action="ShowCoding">
		���̽�<input type="radio" name="lang", value="PYTHON">
		�ڹ�<input type="radio" name="lang", value="JAVA">
		HTML<input type="radio" name="lang", value="HTML">
    </form>
	<div id="c">�н�����</div>
	<div id="c">
	
	</div>
    <div id="q">����</div>
    <div id="q">
	<%-- <%for(int i=0; i<codingarray.size(); i++){%>
	<%CodingVO codingvo = codingarray.get(i); }%> --%>
	<% vo.getCoding_q();%>
	</div>
    <div id="a">Ǯ��</div>
    <div id="a">
    <%-- <%=codingvo.getCoding_a() %> --%>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>PSIT.com - Road_map</title>
</head>
<body>

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
   
</body>
</html>
<%@page import="java.util.ArrayList"%>
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
<body>
<%
MemberVO vo = null;
if(session.getAttribute("vo") !=null){
	vo = (MemberVO)session.getAttribute("vo");
}
DAO dao = new DAO();
%>
<%	
String userID= null;
if (session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	userID = vo.getM_id();
	System.out.print(userID);
}else{%>
Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
   <form action="P_PSit"><table width = "600px"align = "center">
   
   
         <caption><h2><img src="images/psit2.png" alt="" /></h2></caption>                               
         <tr>
         	<th><p> �ϱ� ������ ���� �� ������ �ּ���.!</p></th>
         </tr>
                   <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>  ����� ������ ������? </h2> </th>                     
                   </tr>
                   <td>                 
                      ���࿡
                      <input type = "radio" name ="s_psit1" value = "ENFP/10">  
                      <BR>
                      �� ���
                      <input type = "radio" name ="s_psit1" value = "ESFP/14">     
                      <BR>
                      �� �ȵǴµ�?
                       <input type="radio" name ="s_psit1" value = "ENTP/14">
                       <br>
                       ����? 
                       <input type="radio" name ="s_psit1" value = "ISTP/10">
                       <br>
                       �� ������ 
                       <input type="radio" name ="s_psit1" value = "INFJ/14">
                       <br>
                       ����������
                       <input type="radio" name ="s_psit1" value = "ISFJ/14">
                       <br>
                       �翬�Ѱ� �ƴϾ�??
                       <input type="radio" name ="s_psit1" value = "ENTJ/14">
                       <br>
                      ���� �Ұ�
                      <input type="radio" name ="s_psit1" value = "ESTJ/14">
                       <br>
                       ����/ �̾���
                       <input type="radio" name ="s_psit1" value = "INFP/14">
                       <br>
                       �� .... ��¥?? 
                       <input type="radio" name ="s_psit1" value = "ISFP/13">
                       <br>
                       ��?? 
                       <input type="radio" name ="s_psit1" value = "INTP/10">
                       <br>
                       ���� �ɽ���
                       <input type="radio" name ="s_psit1" value = "ESTP/14">
                       <br>
                       ����/������
                       <input type="radio" name ="s_psit1" value = "ENFJ/10">
                       <br>
                       �ƾ�...
                       <input type="radio" name ="s_psit1" value = "ESFJ/10">
                       <br>                    
                       �װ� �ƴ�
                       <input type="radio" name ="s_psit1" value = "INTJ/14">
                       <br>
                       ���� �����ݾ�
                       <input type="radio" name ="s_psit1" value = "ISTJ/12">
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                                          
                        
                       </td>                      
                    <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> �б����� ����� ��������???</h2> </th>                     
                   </tr>
                   <td>                 
                      ���� 1��
                      <input type = "radio" name ="s_psit2" value = "INTJ/08">  
                      <BR>
                      �̴�������
                      <input type = "radio" name ="s_psit2" value = "INFJ/08">  
                      <BR>
                      �ƹ��� �𸣴� ���� 2��
                      <input type = "radio" name ="s_psit2" value = "IDFJ/08">  
                      <BR>
                      ���� �Ź��� ���� ������ �����
                      <input type = "radio" name ="s_psit2" value = "ISTJ/08">  
                      <BR>
                      ��ü�� �����̶� ���� �� �ȵ����� ��
                      <input type = "radio" name ="s_psit2" value = "ISFP/08">  
                      <BR>
                      �� ���ڸ����� �ǳ� �̾��� ���� â�� ���� ��
                      <input type = "radio" name ="s_psit2" value = "INFP/07">  
                      <BR>
                      ������ õ��
                      <input type = "radio" name ="s_psit2" value = "INTP/07">  
                      <BR>
                      ������ 3�и��� �԰� ������ �౸�ϴ¾�
                      <input type = "radio" name ="s_psit2" value = "ISTP/07">  
                      <BR>
                      �б� ��� ���ָ� �ð� �ִ� �л� ��ȸ��
                      <input type = "radio" name ="s_psit2" value = "ENTJ/08">  
                      <BR>
                      �� ��ǥ ��λ���
                      <input type = "radio" name ="s_psit2" value = "ENFJ/08">  
                      <BR>
                      ����
                      <input type = "radio" name ="s_psit2" value = "ESFJ/08">  
                      <BR>
                      �л�ȸ��
                      <input type = "radio" name ="s_psit2" value = "ESTJ/08">  
                      <BR>
                      �мŴϽ�Ÿ
                      <input type = "radio" name ="s_psit2" value = "ESFP/08">  
                      <BR>
                      ����� ��
                      <input type = "radio" name ="s_psit2" value = "ENFP/05">  
                      <BR>
                      ������ õ��
                      <input type = "radio" name ="s_psit2" value = "ENTP/08">  
                      <BR>
                      �������� �������� �����ϴ� ��
                   	  <input type = "radio" name ="s_psit2" value = "ESTP/08">  
                      <BR> 
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>
                     
                       </td>                      
                       <tr>
                   <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>���� �λ��� �� (       ) �̶�� �����Ѵ� </h2> </th>                     
                   </tr>
                   <td>
                       �������ٸ� ������ �޴����� �Ѵ�.               
                   	  <input type = "radio" name ="s_psit3" value = "INFP/INTP/ISFP/ISTP/04">  
                      <BR>
                      �������ٸ�, �ټ��� �÷��� ������ ���.  
                      <input type = "radio" name ="s_psit3" value = "ENFP/ENTP/ESFP/ESTP/04">  
                      <BR>
                      �ش���� ����
                      <input type = "radio" name ="s_psit3" value = "edd">  
                      <BR>
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>
                     
                    </td> 
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>����� ��ʹ� ������??? </h2> </th>                     
                   </tr>
                   <td>
                       ������ ���ΰ��踦 ����. 
                     <input type = "radio" name ="s_psit4" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">  
                      <BR>
                      ���� �ִ� ���� ���� ���� 
                      <input type = "radio" name ="s_psit4" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">
                       <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr>
                       </th>             
                    </td> 
                     
                     <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>���� ������??? </h2> </th>                     
                   </tr>
                   <td>
                       �米��/Ȱ����/�������� ������ ������ �ִ�. 
                     <input type = "radio" name ="s_psit5" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/02">  
                      <BR>
                     �����ϰ�, �����ϴ�. / ������ ������ �����Ѵ�.  
                      <input type = "radio" name ="s_psit5" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP02">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>����??? </h2> </th>                     
                   </tr>
                   <td>
                       �ν� Ÿ���̴�. 
                     <input type = "radio" name ="s_psit6" value = "ENFJ/ENTP/ENTJ/ENTP/ENFJ/ESFP/ESTJ/ESTP/12">  
                      <BR>
                       �ƽ� Ÿ���̴�.  
                      <input type = "radio" name ="s_psit6" value = "INFJ/INFP/INTJ/INTP/ISFJ/ISFP/ISTJ/ISTP/12">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ���� �ϳ��� ������.~ </h2> </th>                     
                   </tr>
                   <td>
                       ���� �������̰� ��Ÿ���̴�.
                     <input type = "radio" name ="s_psit7" value = "ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">  
                      <BR>
                       ���� �������̰�, �̱����̴�.   
                      <input type = "radio" name ="s_psit7" value = "ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
                        <Br><Br><Br><Br><Br><Br>
                       <tr><td>------------------------------------------------------------</tr></th>                 
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ���� �ϳ��� ������.~ </h2> </th>                     
                   </tr>
                   <td>
                       ���� ���� ����, ��÷�� ���翡 ���߰� ���� ó���Ѵ�.
                     <input type = "radio" name ="s_psit8" value = "ESFJ/ESFP/ESTJ/ESTP/ISFJ/ISFP/ISTJ/ISTP/02">  
                      <BR>
                       ���� �̷��������̰�, �ż�, ��������� ���� ó���Ѵ�.   
                      <input type = "radio" name ="s_psit8" value = "ENFJ/ENFP/ENTJ/ENTP/INFJ/INFP/INTJ/INTP/02">
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ���� �ϳ��� ������.~ </h2> </th>                     
                   </tr>
                   <td>
                       ���� ���, �ְ��� �ѷ��ϴ�. ���ǰ� ��ǿ� �ַ� ������ ������. ����, �м���, ���������� �Ǵ��Ѵ�.
                     <input type = "radio" name ="s_psit9" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">  
                      <BR>
                       ���� �������̰�, �ٸ������ ��ġ�� ���� ���̴�. ��Ȳ���� ħ���ϰ� ���� �� �� �ִ�.
                      <input type = "radio" name ="s_psit9" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">  
                      <BR>
                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ��Ȱ �����?  </h2> </th>                     
                   </tr>
                   <td>
                       öó�ϰ� ������ȹ�� �����, �и��� ��������� ������ �����Ѵ�.
                     <input type = "radio" name ="s_psit10" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">  
                      <BR>
                      ����, ������ ��ȭ�� �����ϴٰ� �����ϰ�, ��Ȳ�� ���� ������ ����, �������̰� ���뼺 �ִ�. 
                     <input type = "radio" name ="s_psit10" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP/ISFP/ISTP/02">  
                      <BR>

                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ��û�� ���´�?  </h2> </th>                     
                   </tr>
                   <td>
                       �Ѽ����� ������������ ���� �뼭�� �� ����
                     <input type = "radio" name ="s_psit11" value = "ENTJ/ESFJ/ESTJ/ISTJ/05">  
                      <BR>
                      ���� ����ϰų�, ���� �������ϰų�...
                      <input type = "radio" name ="s_psit11" value = "ESTP/INFJ/INTJ/ISFJ/05">
                       <BR>
                      �Ⱥ��̴� ���� �� ���� �ְ� �����ϴٸ� ������ 
                      <input type = "radio" name ="s_psit11" value = "ENTP/INFP/ISTP/ENFJ/04">
                       <BR>
                      û�Ұ� ����?? �װ� �Դ°���? 
                      <input type = "radio" name ="s_psit11" value = "ENTP/ESFP/INTP/ISFP/04">
                       <BR>

                     
                        <Br><Br><Br><Br><Br><Br>
                          
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� �ֺ�������� � ������� ���� ��������??  </h2> </th>                     
                   </tr>
                   <td>
                       ������ ���
                     <input type = "radio" name ="s_psit12" value = "ENFJ/14">
                     <BR>
                       ���� ���� ���
                       <input type = "radio" name ="s_psit12" value = "INTP/14">
                     <BR>
                       �ش� ���� ���� 
                       <input type = "radio" name ="s_psit12" value = "">
                     <BR>
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2>����� ���� ������ �ȵȴٸ�... �� ������??   </h2> </th>                     
                   </tr>
                   <td>
                      ���� �� 
                      <input type = "radio" name ="s_psit13" value = "ISTJ/12">
                     <BR>
                      ���� ���� ����
                      <input type = "radio" name ="s_psit13" value = "ISFJ/14">
                     <BR>
                      ���ϴ��� �ٻ�
                      <input type = "radio" name ="s_psit13" value = "INTJ/14">
                     <BR>
                      �ڱ��� �ϴ��� �ٻ�
                      <input type = "radio" name ="s_psit13" value = "INFJ/14">
                     <BR>
                      ���� �׷� ������
                      <input type = "radio" name ="s_psit13" value = "ISTP/10">
                     <BR>
                      ���θ��� �ð��� ���� ����
                      <input type = "radio" name ="s_psit13" value = "ISFP/13">
                     <BR>
                      ���� �ߵǴ°� �̻��� ������ 
                      <input type = "radio" name ="s_psit13" value = "INTP/10">
                     <BR>
                      �� �̻��� �����ϰ� ����
                      <input type = "radio" name ="s_psit13" value = "INFP/14">
                     <BR>
                      ���ñ��� ��ȹ�ߴ��� �ϰ� �־��� 
                      <input type = "radio" name ="s_psit13" value = "ESTJ/14">
                     <BR>
                      ģ���� ������ �����ð� �־���
                      <input type = "radio" name ="s_psit13" value = "ESFJ/10">
                     <BR>
                      �Ƹ�����Ʈ & ���ϴ��� �ٻ���
                      <input type = "radio" name ="s_psit13" value = "ENTJ/14">
                     <BR>
                      ģ�� ��λ�� ����ְ� �־���
                      <input type = "radio" name ="s_psit13" value = "ENFJ/10">
                     <BR>
                      ���Ҳ� ���ϰ� ���߿� �����Ұ���
                      <input type = "radio" name ="s_psit13" value = "ESTP/14">
                     <BR>
                      ģ���� ��ȭ����
                      <input type = "radio" name ="s_psit13" value = "ESFP/14">
                     <BR>
                      �׳� �����
                      <input type = "radio" name ="s_psit13" value = "ENTP/14">
                     <BR>
                      �����°� �ƴµ� �����Ƽ� ����
                      <input type = "radio" name ="s_psit13" value = "ENFP/10">
                     <BR>
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ���� ��Ÿ����??  </h2> </th>                     
                   </tr>
                   <td>
                       ������ ����, ���� ������ Ÿ�� �������� �˾ƾ� ������ �� 
                     <input type = "radio" name ="s_psit14" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
                     <BR>
                       ���� ��� ������ �𸣰ڴµ� �׷��ٰ� ��� ����ϰ� ������ �ȳ����� �Ǵ� �켱 ����.
                     <input type = "radio" name ="s_psit14" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ���� �� �����ٰ� �����ϴ� ����??   </h2> </th>                     
                   </tr>
                   <td>
                       �̰� �Ϻ��ϰ� �������ϴ� �� ����!
                     <input type = "radio" name ="s_psit15" value = "ENFJ/ENTJ/ESFJ/ESTJ/INFJ/INTJ/ISFJ/ISTJ/02">
                     <BR>
                       �̰� ������ �����ϴ� �� ����!! 
                     <input type = "radio" name ="s_psit15" value = "ENFP/ENTP/ESFP/ESTP/INFP/INTP*ISFP/ISTP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ģ���� �ڵ��� ��� ���� �� ����� ������???   </h2> </th>                     
                   </tr>
                   <td>
                       ���� �ҷ���?? ������??
                     <input type = "radio" name ="s_psit16" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       ������? �Ф� �������̾�!!! �� ���ƾ�????? �Ф�
                     <input type = "radio" name ="s_psit16" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� �ֺ� ����� ����� �ȵ� ������ϴ� ��Ȳ�� �� ����� ������?   </h2> </th>                     
                   </tr>
                   <td>
                       ���� �غ��ϰ� �־�??? �̷¼��� �־���??
                     <input type = "radio" name ="s_psit17" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       ���� �������ФФФФФ�(����� ������ ���� �������� ����Ѵ�.)
                     <input type = "radio" name ="s_psit17" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ģ���� ���迡 ������ �����ϰ� ���� �� ����� ������??    </h2> </th>                     
                   </tr>
                   <td>
                       ���������̾�???? �����ε�??? 
                     <input type = "radio" name ="s_psit18" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       �������� �� �����ž�~~ !! 
                     <input type = "radio" name ="s_psit18" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> "�ϴ��� ������ ��ȭ�� �þ�"�� ���� ����� ������??    </h2> </th>                     
                   </tr>
                   <td>
                       �ϴ��� ���۵� �� �������� ��??? 
                     <input type = "radio" name ="s_psit19" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       �����̾�~~~ ����آ�
                     <input type = "radio" name ="s_psit19" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� Ī���ϴ� �����???     </h2> </th>                     
                   </tr>
                   <td>
                       ���߳�!!!!! �� �κи� �����ϸ� �� ���ھ�~~ 
                     <input type = "radio" name ="s_psit20" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/02">
                     <BR>
                       ����߾�~~ ������ �߱���~~ 
                     <input type = "radio" name ="s_psit20" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/02">
                     <BR>
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� �ܷӴٰ� ���� �� ����??      </h2> </th>                     
                   </tr>
                   <td>
                       ���� �ܷӴٰ� ���������� ����..... �λ��� ȥ�ھ�
                     <input type = "radio" name ="s_psit21" value = "ISTP/10">
                     <BR>
                     ȥ�������� �׻� �ܷο�~~
                     <input type = "radio" name ="s_psit21" value = "ESFJ/10">
                     <BR>
                     �ش���� ����
                     <input type = "radio" name ="s_psit21" value = "">
                     <BR>
                       
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> �̼��� ���� ����൵ ����� ��������?      </h2> </th>                     
                   </tr>
                   <td>
                      ������.
                     <input type = "radio" name ="s_psit22" value = "ENFP/INTP/ISFP/ISTP/03">
                     <Br>
                     �ȼ�����.
                     <input type = "radio" name ="s_psit22" value = "">
                     <Br>

                       
                    
                
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>   
                                   
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> �����ϴ� ������� ������ ǥ���ϰ� �; �� �ȵ����ְ�, �̷� ���� �ʹ� ����ϳ���?       </h2> </th>                     
                   </tr>
                   <td>
                      �׷���.
                     <input type = "radio" name ="s_psit23" value = "INTP/ISTJ/ISTP/04">
                     <Br>
                     �ƴϴ�. 
                     <input type = "radio" name ="s_psit23" value = "">
                     <Br>
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ������ �ʰ� ������� ���� ���� �ִٰ� �� �� ����� �����??       </h2> </th>                     
                   </tr>
                   <td>
                      �����̾�.... ��ġ�� ���� ������
                      <input type = "radio" name ="s_psit24" value = "ENFJ/ENFP/ESFJ/ESFP/04">
                     <Br>
                      �׷�???�������
                      <input type = "radio" name ="s_psit24" value = "ENTJ/ENTP/ESTJ/ESTP/05">
                     <Br>
                      �ʰ� ������ �� ��ư� ������ ���°�...
                      <input type = "radio" name ="s_psit24" value = "INFJ/INFP/ISFJ/ISFP/05">
                     <Br>
                      ��~~~~~`
                     <input type = "radio" name ="s_psit24" value = "INTJ/INTP/ISTJ/ISTP/04">
                     <Br>

                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ���� �� "������ ����"��� �ǹ̴�??      </h2> </th>                     
                   </tr>
                   <td>
                      ���� Ȥ�� ���� �˾Ƽ� �Ѵٴ� �ǹ�
                     <input type = "radio" name ="s_psit25" value = "ENFJ/ENFP/ESFJ/ESFP/INFJ/INFP/ISFJ/ISFP/04">
                     <Br>
                     �̸��� ��¥ �´� ������ ������ �����غ��ٴ� �ǹ�
                     <input type = "radio" name ="s_psit25" value = "ENTJ/ENTP/ESTJ/ESTP/INTJ/INTP/ISTJ/ISTP/04">
                     <Br>
                     
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    <tr>                  
                    <th align="center" colspan="16" bgcolor = "white" aligen = "left" > <h2> ����� ���� ������ �� ����� ��Ÿ����??    </h2> </th>                     
                   </tr>
                   <td>
                      �� �������� �̿�
                      <input type = "radio" name ="s_psit26" value = "ISTJ/05">
                     <Br>
                      �к�Ŭ���� �̿�
                      <input type = "radio" name ="s_psit26" value = "ENFJ/INFJ/05">
                     <Br>
                     ���Ѳ��� �̿�
                     <input type = "radio" name ="s_psit26" value = "ENFP/05">
                     <Br>
                      �������� ����
                      <input type = "radio" name ="s_psit26" value = "ESFJ/ESTJ/04">
                     <Br>
                      ���ٷ� ����
                      <input type = "radio" name ="s_psit26" value = "ISFJ/ISFP/04">
                     <Br>
                      ������ ���Ƽ� ����
                      <input type = "radio" name ="s_psit26" value = "ESFP/ESTP/05">
                     <Br>
                      �ŵ�����
                      <input type = "radio" name ="s_psit26" value = "ENTJ/INTJ/05">
                     <Br>
                      ������ �׳� ����
                      <input type = "radio" name ="s_psit26" value = "INFP/INTP/05">
                     <Br>
                      ������ ��� ��                      
                     <input type = "radio" name ="s_psit26" value = "ENTP/ISTP/05">
                     <Br>

                     
                        <Br><Br><Br><Br><Br><Br>                       
                       <tr><td>------------------------------------------------------------</tr></th>                                     
                    </td>
                    
                    
                    
                    
                    
                    
                    <tr><Td><input type = "submit" name = "sub"></tr></td>
                     
                       
                   
   </table></form>

</body>


</body>
</html>
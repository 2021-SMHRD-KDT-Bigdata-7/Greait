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
out.print(sample); 
String job_no = pstore.getPSIT_JOB();
out.print(job_no);
%>
<!--  직무 MBTI 보여주기  -->
<%if(sample.contains("ENFJ")){%>
	<%job_no=job_no+"인공지능/머신러닝"; %>
	<p> Psit 검사 결과 매칭 직무는 인공지능/머신러닝 입니다.! 참고하세요~~~ </p>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br> <a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>	
	 
<% }%>
<%if(sample.contains("ENFP")){%>
	<%job_no=job_no+"인공지능/머신러닝,앱개발자"; %>
	<h1> Psit 검사 결과 매칭 직무는 인공지능/머신러닝,앱개발자 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	 <P><img src="JOB_EP_IMG/App_1.png" alt=""/><img src = "JOB_EP_IMG/App_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=3"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ENTJ")){%>
	<%job_no=job_no+"데이터 엔지니어"; %>
	<h1> Psit 검사 결과 매칭 직무는 데이터 엔지니어 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ENTP")){%>
	<%job_no=job_no+"인공지능/머신러닝,데이터 엔지니어"; %>
	<h1> Psit 검사 결과 매칭 직무는 인공지능/머신러닝,데이터 엔지니어 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ESFJ")){%>
	<%job_no=job_no+"프로젝트 매니져"; %>
	<h1> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </h1>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ESFP")){%>
	<%job_no=job_no+"프로젝트 매니져"; %>
	<h1> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </h1>
 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
 <% }%>
<%if(sample.contains("ESTJ")){%>
<%job_no=job_no+"데이터 엔지니어,프로젝트 매니져"; %>
<p> Psit 검사 결과 매칭 직무는 데이터 엔지니어,프로젝트 매니져 입니다.! 참고하세요~~~ </p>
	
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>
	
	
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>
	 
	
	
<% }%>
<%if(sample.contains("ESTP")){%>
	<%job_no="데이터 엔지니어"; %>
	<h1> Psit 검사 결과 매칭 직무는 데이터 엔지니어 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/DataEG_1.png" alt=""/><img src = "JOB_EP_IMG/DataEG_1.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=6"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("INFJ")){%>
	<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>
	<h1> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("INFP")){%>
	<%job_no="인공지능/머신러닝"; %>
	<h1> Psit 검사 결과 매칭 직무는 인공지능/머신러닝 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("INTJ")){%>
	<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>
	<h1> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </h1>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
	<% }%>
<%if(sample.contains("INTP")){%>
	<%job_no="백엔드 개발자, 인공지능/머신러닝"; %>
	<h1> Psit 검사 결과 매칭 직무는 백엔드 개발자, 인공지능/머신러닝 입니다.! 참고하세요~~~ </h1>
	<P><img src="JOB_EP_IMG/Backend_1.png" alt=""/><img src = "JOB_EP_IMG/Backend_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=2"> 매칭 직무 로드맵 보러 가기</a></P>	
	<P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ISFJ")){%>
	<%job_no="프로젝트 매니져"; %>
	<h1> Psit 검사 결과 매칭 직무는 프로젝트 매니져 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/ProjectMG_1.png" alt=""/><img src = "JOB_EP_IMG/ProjectMG_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=7"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ISFP")){%>
	<%job_no="프론트 개발자"; %>
	<h1> Psit 검사 결과 매칭 직무는 프론트 개발자 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/Front_1.png" alt=""/><img src = "JOB_EP_IMG/Front_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=1"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>
<%if(sample.contains("ISTJ")){%>
	<%job_no="정보 보안 전문가"; %>
	<h1> Psit 검사 결과 매칭 직무는 정보 보안 전문가 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/Security_1.png" alt=""/><img src = "JOB_EP_IMG/Security_2.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=4"> 매칭 직무 로드맵 보러 가기</a></P>
<% }%>
<%if(sample.contains("ISTP")){%>
	<%job_no="인공지능/머신러닝"; %>
	<h1> Psit 검사 결과 매칭 직무는 인공지능/머신러닝 입니다.! 참고하세요~~~ </h1>
	 <P><img src="JOB_EP_IMG/AM_01.png" alt=""/><img src = "JOB_EP_IMG/AM_02.png"><br><a href="http://localhost:8081/1st_Project/Road_map.jsp?num=5"> 매칭 직무 로드맵 보러 가기</a></P>	
<% }%>



<%if (vo != null){%>

<form>
	<a href="http://localhost:8081/1st_Project/StudyPage.jsp">학습하러 가기</a>
</form>
	<!-- job_no 이용하여 해당  직무 보기 -->
	
<% }else{%>
	<a href="">실패!! 다시시도~!!! </a>
	
<%} //job_no 이용하여 해당  직무 보기 %>
</body>
</html>
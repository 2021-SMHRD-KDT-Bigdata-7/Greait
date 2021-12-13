<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Model.CommunityVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.MemberVO"%>  
<!DOCTYPE html>
<html>
<head>
<title>IT_job - Grea:it</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>
	table{
		width: 1000px;
		border: 1px solid #444444;
	}
	tr{
		border: 1px solid #444444;
	}
	#head_tr{
		background-color: black;
		text-align: center;
		color: white;
	}
	.main_td{
		text-align:center;
		color: black;
	}
	.main_a{
		color: black;
	}
	#cho{
		color: red;
		font-size: 20px;
	}

</style>		
</head>
<body>

<%
CommunityVO cvo = null;
if(session.getAttribute("cvo") !=null){
	cvo = (CommunityVO)session.getAttribute("cvo");
}
DAO dao = new DAO();
ArrayList<CommunityVO> arr = dao.Community();
%>
<%
MemberVO vo =null;
if(session.getAttribute("vo") != null){
	vo = (MemberVO)session.getAttribute("vo");
	String userID =vo.getM_id();
}else{%>
	Response.Write("<script>alert('�α��� �� �̿��Ͻ� �� �ִ� ���� �Դϴ�.');</script>");
	Response.Write("<script>location.href='Main.jsp';</script>");
<%}%>
<%!
	public Integer toInt(String x){
		int a = 0;
		try{
			a = Integer.parseInt(x);
		}catch(Exception e){}
		return a;
	}
%>	
<%
	int pageno = toInt(request.getParameter("pageno"));
	if(pageno<1){
		pageno = 1;
	}
	int total_record = arr.size();
	int page_per_record_cnt = 5;  
	int group_per_page_cnt =99;     											
	int record_end_no = pageno*page_per_record_cnt;				
	int record_start_no = record_end_no-(page_per_record_cnt-1);
	if(record_end_no>total_record){
		record_end_no = total_record;
	}								   									   
	int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
	if(pageno>total_page){
		pageno = total_page;
	}
	int group_no = pageno/group_per_page_cnt+(pageno%group_per_page_cnt>0 ? 1:0);			  	
	int page_eno = group_no*group_per_page_cnt;		
	int page_sno = page_eno-(group_per_page_cnt-1);		
	if(page_eno>total_page){	
		page_eno=total_page;
	}
	
	int prev_pageno = page_sno-group_per_page_cnt;
	int next_pageno = page_sno+group_per_page_cnt;
	if(prev_pageno<1){	
		prev_pageno=1;

	}
	if(next_pageno>total_page){	
		next_pageno=total_page/group_per_page_cnt*group_per_page_cnt+1;
	
	}

%>
									<!-- Sidebar -->
										<section>
											<h3>�ٸ� Ŀ�´�Ƽ�� �̵��ϱ�</h3>
											<ul class="links">
												<li><a href="c_Used_Community.jsp">�߰�ŷ� Ŀ�´�Ƽ</a></li>
												<li><a href="c_Study_Community.jsp">���͵� Ŀ�´�Ƽ</a></li>
											</ul>
										</section>

								</div>
							</div>
							<div class="col-8  col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
								
									
			<div id="board">
			<h1>�����Խ���</h1>
				<table>
					<tr id="head_tr" class="cm_tr">
						<td class="cm_td">��ȣ</td>
						<td class="cm_td">����</td>
						<td class="cm_td">�ۼ���</td>
						<td class="cm_td">�ð�</td>
						<td class="cm_td">��ȸ��</td>
					</tr>
						
						<%if(arr.size()>(pageno)*5){%>
							<%for(int i=0;i<5;i++){%>
							<tr class="main_tr">
							<%String result = arr.get(i+(pageno-1)*5).getDay().substring(5,11);%>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getC_seq()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getTitle()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getWriter()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=result%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getC_cnt()%></a></td>
							</tr>
							<%}%>
						<%}else if(arr.size()<(pageno)*5) {%>
							<%for(int i=0;i<(pageno)*5-arr.size();i++){%>
							<tr class="main_tr">
							<%String result = arr.get(i+(pageno-1)*5).getDay().substring(5,11);%>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getC_seq()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getTitle()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getWriter()%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=result%></a></td>
							<td class="main_td"><a class="main_a" href="c_Communityview?num=<%=arr.get(i+(pageno-1)*5).getC_seq()%>"><%=arr.get(i+(pageno-1)*5).getC_cnt()%></a></td>
							</tr>
							<%}%>		
						<%}else{%>
							
						<%}%>
					</table>
<%-- <a href="c_Community.jsp?pageno=1">[�Ǿ�����]</a>
<a href="c_Community.jsp?pageno=<%=prev_pageno%>">[����]</a>  --%>
<%for(int i =1;i<=page_eno;i++){%>
	<a href="c_Community.jsp?pageno=<%=i %>">
		<%if(pageno == i){ %>
			<span id="cho"><%=i %></span>
		<%}else{ %>
			<%=i %>
		<%} %>
	</a> 
	<%if(i<page_eno){ %>
		,
	<%} %>
<%} %>
<%-- <a href="c_Community.jsp?pageno=<%=next_pageno%>" >[����]</a>
<a href="c_Community.jsp?pageno=<%=total_page %>">[�ǵڷ�]</a> --%>
				</table>
				<form action="search_community">
				<select><option value="����">����</option><option value="����">����</option><option value="�ۼ���">�ۼ���</option></select>
				<input type="text"><input class="search_button" type="button" value="�˻��ϱ�">
				<a href="c_Communitywrite.jsp">�ۼ��Ϸ�����</a>
				</form>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!-- [if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif] -->
			<script src="assets/js/main.js"></script>
										</article>

								</div>
							</div>
						</div>
					</div>
				</section>
		</div>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>
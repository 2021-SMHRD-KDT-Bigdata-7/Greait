package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.s_CommunityVO;
@WebServlet("/u_c_Comment")
public class u_c_Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = "doflsld";
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		s_CommunityVO cvo = (s_CommunityVO)session.getAttribute("cvo");
		request.setCharacterEncoding("euc-kr");
		DAO dao=new DAO();
		int c_seq=Integer.parseInt(request.getParameter("num"));
		String cm_content=request.getParameter("C_comment");
		String writer=userID;
		int lognum = dao.s_cm_write(c_seq,cm_content,writer);
		if (lognum>0) {
			System.out.println("��� �ۼ� ����!");
			response.sendRedirect("c_Study_Communityview.jsp?cvo=cvo");
		}else {
			System.out.println("��� �ۼ� ����!");
			response.sendRedirect("c_Study_Community.jsp");
		}
			
			
		}
	}

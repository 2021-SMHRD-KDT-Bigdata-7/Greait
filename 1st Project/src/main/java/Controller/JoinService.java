package Controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		int cnt = 0;
		DAO dao = new DAO();
		
		String m_id = request.getParameter("id");
		String m_pw = request.getParameter("pw");
		String m_email = request.getParameter("email");
		String m_name = request.getParameter("name");
		String m_nick = request.getParameter("nick");
		String m_gender = request.getParameter("gender");
		String m_memo = request.getParameter("memo");
	
		try {
			cnt = dao.Join(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);
			if (cnt > 0) {
				
				MemberVO vo = new MemberVO(m_id, m_pw, m_email, m_name, m_nick, m_gender, m_memo);
				
				RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
				
				request.setAttribute("vo", vo);
				
				rd.forward(request, response);
				
				dao.Insertlang(m_id);
				System.out.println("ȸ������ ����");
			}	 
			else {
				System.out.println("ȸ������ ����");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
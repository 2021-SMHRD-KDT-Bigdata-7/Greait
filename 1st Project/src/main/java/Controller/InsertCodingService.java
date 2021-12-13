package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/InsertCodingService")
public class InsertCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("euc-kr");
	
	String lang = request.getParameter("lang");
	String coding_explain1 = request.getParameter("coding_explain1");
	String coding_explain2 = request.getParameter("coding_explain2");
	String coding_q = request.getParameter("coding_q");
	String coding_a = request.getParameter("coding_a");

	String id = request.getParameter("id");
	
//	HttpSession session = request.getSession();
//	MemberVO vo = (MemberVO)session.getAttribute("vo");
//	String id = vo.getM_id();
	
	
	DAO dao =new DAO();
//	���� �ֱ�
	int cnt = dao.insertExplain(coding_a, coding_explain1, coding_explain2, id);
	
		if(cnt>0) {
			System.out.println("����ֱ� ����");
		}
		else {
			System.out.println("����ֱ� ���� ��");
		}
	
//	����, �ؼ� �ֱ�
	int cnt1 = dao.insertCoding(lang, coding_q, coding_a, id);
	
		if(cnt1>0) {
			System.out.println("�����ֱ� ����");
		}
		else {
			System.out.println("�����ֱ� ����");
		}
	
	}

}

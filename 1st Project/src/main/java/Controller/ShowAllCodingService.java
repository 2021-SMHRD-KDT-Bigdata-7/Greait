package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CheckVO;
import Model.CodingVO;
import Model.DAO;
import Model.MemberVO;

@WebServlet("/ShowAllCodingService")
public class ShowAllCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		���� �� ��� ���� ������ �ϱ�
		String lang =null;
		request.setCharacterEncoding("euc-kr");
		if(request.getAttribute("lang") != null) {
			lang =(String)request.getAttribute("lang");
		}else {
			lang = request.getParameter("lang");
		}
		DAO dao = new DAO();
		ArrayList<CodingVO> codingarray = new ArrayList<>();
		codingarray = dao.ShowAllCoding(lang);
		System.out.println("���������⼺��");
		RequestDispatcher rd = request.getRequestDispatcher("StudyPage.jsp"); 
		request.setAttribute("codingarray", codingarray);
		rd.forward(request, response); 
	}

}

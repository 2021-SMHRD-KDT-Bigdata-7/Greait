package Controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.DAO;
import Model.MemberVO;

@WebServlet("/InsertCodingService")
public class InsertCodingService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("euc-kr");
//	String id = request.getParameter("id");
	
//	HttpSession session = request.getSession();
//	MemberVO vo = (MemberVO)session.getAttribute("vo");
//	String id = vo.getM_id();
	File file = new File("C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images"); //�����(class���ϰ� ������ ����) 
	if(file.exists()) {
		System.out.println("�ش� ���� Ȯ��");
	}else{ 
		file.mkdir(); System.out.println("�ش� ���� ����.");
	}
	HttpSession session = request.getSession();
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	String savePath = "C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images";
	int maxSize =5*1024*1024;
	String encoding = "euc-kr";
	MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
	String id =vo.getM_id();
	String lang = multi.getParameter("lang");
	String coding_q = multi.getParameter("coding_q");
	String coding_a = multi.getParameter("coding_a");
	String filename1 = "none.png";
	try {
		filename1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
	} catch (Exception e) {
	}

////////////////////////////////////////////////	
	DAO dao =new DAO();
	
//	����, �ؼ� �ֱ�
	int cnt1 = dao.insertCoding(lang, coding_q, coding_a, id,filename1);
	
		if(cnt1>0) {
			response.sendRedirect("insertExplain.jsp");
			System.out.println("�����ֱ� ����");
		}
		else {
			response.sendRedirect("InsertCoding.jsp");
			System.out.println("�����ֱ� ����");
		}
	
	}

}

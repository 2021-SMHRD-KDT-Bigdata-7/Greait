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
@WebServlet("/u_c_Communitywrite")
public class u_c_Communitywrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		File file = new File("C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images"); //�����(class���ϰ� ������ ����) 
		if(file.exists()) {
			System.out.println("�ش� ���� Ȯ��");
		}else{ 
			file.mkdir(); 
			System.out.println("�ش� ���� ����.");
		}
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String userID =vo.getM_id();
		String savePath = "C:/Users/smhrd/git/PSIT/1st Project/src/main/webapp/images";
		System.out.println(request.getServletContext().getRealPath("./"));
		int maxSize =5*1024*1024;
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		String title = multi.getParameter("title");
		String way = multi.getParameter("way");
		String writer= userID;
		String status = multi.getParameter("status");
		String kinds = multi.getParameter("kinds");
		int price = Integer.parseInt(multi.getParameter("price"));
		String content = multi.getParameter("content");
		String filename1 = "none.png";
		try {
			filename1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} catch (Exception e) {
		}
		DAO dao=new DAO();
		int lognum=dao.u_community_write(title,way,writer,status,kinds,price,content,filename1);
		if (lognum>0) {
			System.out.println("�߰�Խñ� �ۼ� ����!");
			response.sendRedirect("c_Used_Community.jsp");
		}else {
			System.out.println("�߰�Խñ� �ۼ� ����!");
			response.sendRedirect("c_Used_Community.jsp");
		}
		
	}

}

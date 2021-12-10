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
@WebServlet("/u_c_Comment")
public class u_c_Communitychange extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getServletContext().getRealPath("images"));
		File file = new File("images"); //�����(class���ϰ� ������ ����) 
		if(file.exists()) {
			System.out.println("getPath : "+file.getPath());//�����
			System.out.println("getAbsolutePath : "+file.getAbsolutePath());//������ 
		}else { 
			file.mkdir(); System.out.println("�ش� ���� ����."); 
		}
		HttpSession session = request.getSession();
		String savePath = request.getServletContext().getRealPath("images");
		int maxSize =5*1024*1024;
		String encoding = "euc-kr";
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,new DefaultFileRenamePolicy());
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String filename1 = "none.png";
		int num = Integer.parseInt(multi.getParameter("num"));
		try {
			filename1 = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} catch (Exception e) {
		}
		String filename2 = "none.png";
		try {
			filename2 = URLEncoder.encode(multi.getFilesystemName("file2"), "euc-kr");
		} catch (Exception e) {
		}
		String filename3 = "none.png";
		try {
			filename3 = URLEncoder.encode(multi.getFilesystemName("file3"), "euc-kr");
		} catch (Exception e) {
		}
		System.out.println(filename1);
		DAO dao=new DAO();
		int lognum=dao.community_change(title,content,filename1, filename2, filename3,num);
		if (lognum>0) {
			System.out.println("�Խñ� ���� ����!");
			response.sendRedirect("c_Communityview?num="+num);
		}else {
			System.out.println("�Խñ� ���� ����!");
			response.sendRedirect("c_Community.jsp");
		}
		
	}

}
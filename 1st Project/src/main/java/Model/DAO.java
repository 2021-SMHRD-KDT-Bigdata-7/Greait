package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;


public class DAO {
	 MemberVO vo = null;
	   CommunityVO bo=null;
	   Connection conn = null;   
	   PreparedStatement psmt = null;
	   ResultSet rs = null;
	   int lognum=0;
	 public void connection() {
		      try {
		         // 1. ���� �ε�
		         Class.forName("oracle.jdbc.driver.OracleDriver");

		         // 2. DB ���� / connection ��ü ����
		         String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
		         String dbic = "hr";
		         String dbpw = "hr";
		         conn = DriverManager.getConnection(url, dbic, dbpw);
		      } catch (Exception e) {

		      }
		   }
	public void close() {
		      // jdbc ��� ���� �ݾ��ֱ�
		      // �ݾ��ٶ��� ������ ������ �ݴ�
		      try {
		         if (rs != null) {
		            rs.close();
		         }
		         if (psmt != null) {
		            psmt.close();
		         }
		         if (conn != null) {
		            conn.close();
		         }
		      } catch (Exception e) {
		         // �ƹ��͵� ����� �ȴ�.
		         e.printStackTrace();
		      }

		   }
	
	public int Join(String id, String pw, String email, String name, String nick, String gender, String memo) throws ParseException {
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		ArrayList<MemberVO> list = new ArrayList<>();
		
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "insert into tbl_member values(?,?,?,?,?,?,sysdate,?,sysdate,N)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, email);
			psmt.setString(4, name);
			psmt.setString(5, nick);
			psmt.setString(6, gender);
			psmt.setString(7, memo);
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return cnt;
	}

	public MemberVO Login(String m_id, String m_pw) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		MemberVO vo = null;

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.19:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select * from tbl_member where m_id = ? and m_pw = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
				System.out.println("�α��� ����");
				
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String email = rs.getString(3);
				String name = rs.getString(4);
				String nick = rs.getString(5);
				String gender = rs.getString(6);
				String birthdate = rs.getString(7);
				String memo = rs.getString(8);
				Date joindate = rs.getDate(9);
				String admin_yn = rs.getString(10);
				
				vo = new MemberVO(id, pw, email, name, nick, gender, birthdate, memo, joindate, admin_yn);
			} else {
				System.out.println("�α��� ����");
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
			}
		}
		return vo;
	}
	
	public ArrayList<CommunityVO> Community() { 
		ArrayList<CommunityVO> arr = new ArrayList<CommunityVO>(); 
		connection();
		 try{ 
			 String sql = "select* from tbl_community order by article_seq desc";
			 psmt = conn.prepareStatement(sql);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int c_seq = rs.getInt("ARTICLE_SEQ");
			      String title = rs.getString("ARTICLE_SUBJECT");
			      String content = rs.getString("ARTICLE_CONTENT");
			      String day = rs.getString("REG_DATE");
			      int c_cnt = rs.getInt("ARTICLE_CNT");
			      String writer = rs.getString("M_ID");
			      String file1 = rs.getString("ARTICLE_FILE1");
			      String file2 = rs.getString("ARTICLE_FILE2");
			      String file3 = rs.getString("ARTICLE_FILE3");
			      CommunityVO vo =new CommunityVO(c_seq, title, content,day,c_cnt,writer,file1,file2,file3);
			      arr.add(vo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }
	
	public CommunityVO communityview(int num) {
		connection();  
	 	try{
		   String sql = "select * from tbl_community where ARTICLE_SEQ=?";
		   psmt = conn.prepareStatement(sql);
		   //5. ���ε� ���� ä���
		   psmt.setInt(1,num);
		   rs = psmt.executeQuery();
		   if(rs.next() == true) {
			   int c_seq = rs.getInt("ARTICLE_SEQ");
			   String title = rs.getString("ARTICLE_SUBJECT");
			   String content = rs.getString("ARTICLE_CONTENT");
			   String date = rs.getString("REG_DATE");
			   int cnt = rs.getInt("ARTICLE_CNT");
			   String writer = rs.getString("M_ID");
			   String filename1 = rs.getString("ARTICLE_FILE1");
			   String filename2 = rs.getString("ARTICLE_FILE2");
			   String filename3 = rs.getString("ARTICLE_FILE3");
		       bo = new CommunityVO(c_seq,title,content,date,cnt,writer,filename1,filename2,filename3);
		      }
		   String sql_seq = "update tbl_community set ARTICLE_CNT = tbl_community_cnt.NEXTVAL where ARTICLE_SEQ=?";
		   psmt = conn.prepareStatement(sql_seq);
		   psmt.setInt(1,num);
		   lognum = psmt.executeUpdate();
		      }catch(Exception e){
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return bo;
} 
	public int community_write(String title, String writer, String content, String file1,String file2,String file3) {
		
		 connection();  
		 	try{
			   String sql = "insert into tbl_community(article_seq, article_subject,article_content,m_id,ARTICLE_FILE1,ARTICLE_FILE2,ARTICLE_FILE3) values(tbl_community_SEQ.NEXTVAL, ?,?,?,?,?,?)";
			   psmt = conn.prepareStatement(sql);	 
			   psmt.setString(1,title);
			   psmt.setString(2,content);
			   psmt.setString(3,writer);
			   psmt.setString(4,file1);
			   psmt.setString(5,file2);
			   psmt.setString(6,file3);
			   lognum = psmt.executeUpdate();
			   if (lognum>0) {
				   System.out.println("����");
			   }
			      }catch(Exception e){
			    	 System.out.println("����");
			        e.printStackTrace();
			      }finally{
			        close();
	     }
		   return lognum; 
	}
	public int communitydelete(int num) {
		 connection();  
		 	try{
			   String sql = "delete from tbl_community where article_seq=?";
			   psmt = conn.prepareStatement(sql);
			   //5. ���ε� ���� ä���
			   psmt.setInt(1,num);
			   lognum = psmt.executeUpdate();
			      }catch(Exception e){
			        e.printStackTrace();
			      }finally{
			        close();
	     }
		   return lognum;	   
	}
	public int cm_write(int c_seq, String cm_content, String writer) {
		connection();  
	 	try{
		   String sql = "insert into tbl_community_reply(COMM_REPLY_SEQ, ARTICLE_SEQ,COMM_REPLY_CONTENT,M_ID) values(TBL_COMMUNITY_REPLY_SEQ.NEXTVAL, ?,?,?)";
		   psmt = conn.prepareStatement(sql);	 
		   psmt.setInt(1,c_seq);
		   psmt.setString(2,cm_content);
		   psmt.setString(3,writer);
		   lognum = psmt.executeUpdate();
		   if (lognum>0) {
			   System.out.println("����");
		   }
		      }catch(Exception e){
		    	 System.out.println("����");
		        e.printStackTrace();
		      }finally{
		        close();
     }
	   return lognum; 
  }
	public ArrayList<Community_commentVO> cm_Community(int c_seq) { 
		ArrayList<Community_commentVO> arr = new ArrayList<Community_commentVO>(); 
		connection();
		 try{ 
			 String sql = "select* from tbl_community_reply WHERE ARTICLE_SEQ=? order by REG_DATE desc";
			 psmt = conn.prepareStatement(sql);
			 psmt.setInt(1,c_seq);
			 rs =  psmt.executeQuery();
			 while(rs.next()) {
				  int cm_seq = rs.getInt("COMM_REPLY_SEQ");
			      c_seq = rs.getInt("ARTICLE_SEQ");
			      String content = rs.getString("COMM_REPLY_CONTENT");
			      String day = rs.getString("REG_DATE");
			      String writer = rs.getString("M_ID");
			      Community_commentVO vo =new Community_commentVO(cm_seq, c_seq, content, day, writer);
			      arr.add(vo);
			 }
			
		 }catch(Exception e){
			 e.printStackTrace(); 
		 }finally{ 
			 close(); 
			 }
		return arr;
	 }
}

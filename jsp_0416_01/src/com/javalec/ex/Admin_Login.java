package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String id,pw;
	
    public Admin_Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		id=request.getParameter("admin_id");
		pw=request.getParameter("admin_pw");
		String sql= "select * from lms_member where id='"+id+"' and pw='"+pw+"'";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				while(rs.next()) {
					id = rs.getString("id");
					pw = rs.getString("pw");
				}
				
				// session 추가
				HttpSession session = request.getSession();
				session.setAttribute("user_id", id);
				session.setAttribute("user_pw", pw);
				session.setAttribute("authUser", id);
				
				response.sendRedirect("admin_main.jsp");
			}else {
				// id, pw 데이터가 없는 경우, 
				String str;
				   str="<script type=\"text/javascript\">\r\n" + 
				       "alert(\"아이디, 패스워드가  일치하지 않습니다. 다시 입력해주세요.\");\r\n" + 
				       "location.href='admin_login.html';\r\n" + 
				       "</script>";
				writer.println("<html><head></head><body>");
				writer.println(str);
				writer.println("</body></html>");
				writer.close();
			}
	
		}catch(Exception e) {
			e.printStackTrace();
			String str;
			   str="<script type=\"text/javascript\">\r\n" + 
			       "alert(\"아이디, 패스워드가  일치하지 않습니다. 다시 입력해주세요.\");\r\n" + 
			       "location.href='admin_login.html';\r\n" + 
			       "</script>";
			writer.println("<html><head></head><body>");
			writer.println(str);
			writer.println("</body></html>");
			writer.close();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
				String str;
				   str="<script type=\"text/javascript\">\r\n" + 
				       "alert(\"아이디, 패스워드가  일치하지 않습니다. 다시 입력해주세요.\");\r\n" + 
				       "location.href='admin_login.html';\r\n" + 
				       "</script>";
				writer.println("<html><head></head><body>");
				writer.println(str);
				writer.println("</body></html>");
				writer.close();
			}
		}
	
	}

}

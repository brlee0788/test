package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Admin_Join")
public class Admin_Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String name,id,pw,email,address,phone,birth,gender,news,sms;
		String sql;
		int check;
		
	
    public Admin_Join() {
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
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		email = request.getParameter("email");
		address = request.getParameter("address2");
		phone = request.getParameter("phone");
		birth = request.getParameter("birth");
		gender = request.getParameter("gender");
		news = request.getParameter("news_letter");
		sms = request.getParameter("sms_letter");
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			sql = "insert into lms_member values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, pw);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, phone);
			pstmt.setString(7, birth);
			pstmt.setString(8, gender);
			pstmt.setString(9, news);
			pstmt.setString(10, sms);
			
			check = pstmt.executeUpdate();
			
			if(check==1) {
				response.sendRedirect("admin_main.jsp");
			}else {
				String str;
				   str="<script type=\"text/javascript\">\r\n" + 
				       "alert(\"입력하신 내용이 저장되지 않았습니다. 다시 시도해주세요.\");\r\n" + 
				       "history.back(-1);\r\n" + 
				       "</script>";
					writer.println("<html><head></head><body>");
					writer.println(str);
					writer.println("</body></html>");
					writer.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}

}

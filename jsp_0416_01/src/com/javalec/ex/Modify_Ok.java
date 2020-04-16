package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Modify_Ok")
public class Modify_Ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		int check;
		String id,pw,name,email,address,phone,birth,gender,news,sms;
		String sql;
		
	public Modify_Ok() {
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
		PrintWriter writer = response.getWriter();
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		email = request.getParameter("email");
		address = request.getParameter("address");
		phone = request.getParameter("phone");
		birth = request.getParameter("birth");
		gender = request.getParameter("gender");
		news = request.getParameter("news");
		sms = request.getParameter("sms");
		
		sql = "update lms_member set  pw=?, name=?, email=?, address=?, phone=?, birth=?, gender=? ,news=?, sms=? where id=?";
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3,email);
			pstmt.setString(4, address);
			pstmt.setString(5, phone);
			pstmt.setString(6, birth);
			pstmt.setString(7, gender);
			pstmt.setString(8, news);
			pstmt.setString(9, sms);
			pstmt.setString(10, id);
			
			check = pstmt.executeUpdate();
			
			if(check==1) {
				response.sendRedirect("main.jsp");
			}else {
				// 수정한 데이터가 DB에 제대로 업데이트 되지 않았을 때 
				String str;
				   str="<script type=\"text/javascript\">\r\n" + 
				       "alert(\"수정하신 내용이 저장되지 않았습니다. 다시 시도해주세요.\");\r\n" + 
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

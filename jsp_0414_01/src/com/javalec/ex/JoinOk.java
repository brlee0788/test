package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinOk() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet으로 들어옴");
		actionDo(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost로 들어옴");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id, pw, name, phone1, phone2, phone3, gender;
		Connection conn=null;
		Statement stmt=null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");
		
		String sql = "insert into member2 values('"+id+"','"+pw+"','"+name+"','"+phone1+"','"+phone2+"','"+phone3+"','"+gender+"')";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			stmt = conn.createStatement();
			// 저장 ok -> 1을 리턴, 저장 x -> 0을 리턴
			int result = stmt.executeUpdate(sql);   // insert,update,delete - executeUpdate() 사용, select - executeQuery() 사용
			
			// 저장 결과에 따른 페이지 분기
			if(result==1) {
				response.sendRedirect("joinResult.jsp");
			}else {
				PrintWriter writer = response.getWriter();
				writer.println("<html><head>");
//				writer.println("<meta charset='UTF-8'></head>");
				writer.println("<body>");
				writer.println("<script>alert('저장이 되지 않았습니다. 다시 입력해주세요.');");
				writer.println("location.href='join.html';</script>");
				writer.println("</body></html>");
				writer.close();
			}
			
		}catch(Exception e) {
			// 에러 발생
			e.printStackTrace();
			PrintWriter writer = response.getWriter();
			writer.println("<html><head>");
//			writer.println("<meta charset='UTF-8'></head>");
			writer.println("<body>");
			writer.println("<script>alert('저장이 되지 않았습니다. 다시 입력해주세요.');");
			writer.println("location.href='join.html';</script>");
			writer.println("</body></html>");
			writer.close();
		}finally {
			try {
				if(stmt !=null) stmt.close();
				if(conn !=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
				PrintWriter writer = response.getWriter();
				writer.println("<html><head>");
//				writer.println("<meta charset='UTF-8'></head>");
				writer.println("<body>");
				writer.println("<script>alert('저장이 되지 않았습니다. 다시 입력해주세요.');");
				writer.println("location.href='join.html';</script>");
				writer.println("</body></html>");
				writer.close();
			}
		}
	}
}

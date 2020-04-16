package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S_ok")
public class Script_ok extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    public Script_ok() {
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
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		String str;
		   str="<script type=\"text/javascript\">\r\n" + 
		       "alert(\"아이디,패스워드가 잘못되었습니다. 다시 입력해주세요.\");\r\n" + 
		       "location.href='script_link.html';\r\n" + 
		       //"history.back(-1);\r\n" +
		       "</script>";
		writer.println("<html><head></head><body>");
		writer.println(str);
		writer.println("</body></html>");
		writer.close();
		
	}

}

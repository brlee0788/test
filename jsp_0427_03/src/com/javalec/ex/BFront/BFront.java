package com.javalec.ex.BFront;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BCommand.BCommand;
import com.javalec.ex.BCommand.BContentcommand;
import com.javalec.ex.BCommand.BListcommand;

@WebServlet("*.do")
public class BFront extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BFront() {
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
		String viewPage=null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		BCommand bcomm = null;
		
		if(com.equals("/list.do")) {
			bcomm = new BListcommand();
			bcomm.execute(request, response);
			viewPage="list.jsp";
		}else if(com.equals("/content_view.do")) {
			bcomm = new BContentcommand();
			bcomm.execute(request, response);
			viewPage="content_view.jsp";
		}else if(com.equals("/write.do")) {
//			bcomm = new BWritecommand();
			bcomm.execute(request, response);
			viewPage="list.do";
		}else if(com.equals("/write_view.do")) {
			viewPage="write_view.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	
	}

}

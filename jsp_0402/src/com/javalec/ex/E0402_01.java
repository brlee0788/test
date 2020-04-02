package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

@WebServlet("/E01")
public class E0402_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	// 생성자
    public E0402_01() {
    	
    }
    
    //선처리
    @PostConstruct
    public void postConstruct() {
		System.out.println("postConstruct()는 init()메소드 보다 먼저 실행");
	}
    
    @PreDestroy
    public void preDestroy() {
    	System.out.println("preDestroy()는 destroy()메소드 이후에 실행");
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("Servlet 생성 시, 최초 한번 init()메소드 실행");
    	System.out.println("최초 실행 시 servlet에서 처리해야 할 구문이 있다면 여기에 입력");
    }
    
    @Override
    public void destroy() {
    	System.out.println("Servlet 종료 시, 최초 한번 destroy()메소드 실행");
    	System.out.println("종료 시 servlet에서 처리해야 할 구문이 있다면 여기에 입력");
    }

    // 주소로 바로 접근 시, doGet() 실행, form에서 method="get"인 경우도 deGet() 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("콘솔창으로 doGet() 프린트");
		
		actionDo(request, response);
	}

	// method="post" 방식이면 doPost() 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("콘솔창으로 doPost() 프린트");
		
		request.setCharacterEncoding("utf-8");
		
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("콘솔창으로 actionDo() 프린트");
		
		request.setCharacterEncoding("utf-8");
		
		// form에서 name의 value 값을 전송받음
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String[] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String address = request.getParameter("address");

		for(int i=0; i<hobby.length; i++) {
			switch (hobby[i]) {
			case "read": 
				hobby[0] ="독서";
				break;
				
			case "cook":
				hobby[1] ="요리";
				break;
				
			case "run":
				hobby[2] ="조깅";
				break;	
				
			case "swim":
				hobby[3] ="수영";
				break;		

			default:
				break;
			}
		}
		
		if(major.equals("kor")) {
			major = "국어국문학과";
		}else if(major.equals("eng")) {
			major = "영어영문학과";
		}else if(major.equals("math")) {
			major = "수학과";
		}else if(major.equals("design")) {
			major = "디자인학과";
		}
		
		if(address.equals("seoul")) {
			address="서울";
		}else if(address.equals("busan")) {
			address="부산";
		}else if(address.equals("incheon")) {
			address="인천";
		}
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style>p{font-size: 20px; color: pink;}</style>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<p>안녕하세요.</p>" + "<p>" + name + "님 반갑습니다.</p>");
		writer.println("<p>아이디: " + id + "</p>" + "<p>패스워드: " + pw + "</p>");
		writer.println("<p>취미: " + Arrays.toString(hobby) + "</p>");
		writer.println("<p>전공: " + major + "</p>");
		writer.println("<p>주소: " + address + "</p>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
		
	}

}

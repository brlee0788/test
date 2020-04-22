<%@page import="com.javalec.ex.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.BoardDao"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String b_num="";
	String b_title="";
	String b_content="";
	String b_user="";
	// 저장경로 지정
	String path = request.getRealPath("upload");
	// 파일 사이즈 - 업로드 파일 용량 제한   
	int size = 1024 * 1024 * 10;  // 1024byte= 1kb * 1024kbyte = 1mb * 10 =  총 10MB 용량 제한    
	// 파일 이름  최종 설정
	String file="";
	BoardDao bdao = BoardDao.getInstance();
	BoardDto bdto = new BoardDto();
	
	try{
		// request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 정책(동일한 파일명 존재시 뒤에 (1),(2)와 같이 숫자를 넣어주는 것)
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8", new DefaultFileRenamePolicy());
		
		b_num = multi.getParameter("b_num");  
		b_title = multi.getParameter("b_title");
		b_content = multi.getParameter("b_content");
		b_user = multi.getParameter("b_user");
		
		// 첨부한 파일 이름들을 가져오기 
		Enumeration files =	multi.getFileNames();
		String name1 = (String)files.nextElement();
		file = multi.getFilesystemName(name1);  	// 파일의 실질적인 이름(value 값)을 찾음
		
		bdto.setB_num(b_num);
		bdto.setB_title(b_title);
		bdto.setB_content(b_content);
		bdto.setB_user(b_user);
		bdto.setFile(file);
				
		int check = bdao.insertBoard(bdto);
		
		if(check==0){
%>
			<script type="text/javascript">
				alert("게시물 저장을 실패하였습니다. 다시 시도해주세요.");
				history.back();
			</script>
<%			
		}else {
			response.sendRedirect("list.jsp");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

	</body>
</html>
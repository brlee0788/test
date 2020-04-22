<%@page import="com.sun.corba.se.impl.encoding.CodeSetConversion.BTCConverter"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.javalec.ex.BoardDto"%>
<%@page import="com.javalec.ex.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String b_num="";
	String b_title="";
	String b_content="";
	String b_user="";
	String path = request.getRealPath("upload");
	int size = 1024 * 1024 * 10;  
	String file="";
	
	BoardDao bdao = BoardDao.getInstance();
	BoardDto bdto = new BoardDto();
	// request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 정책(동일한 파일명 존재시 뒤에 (1),(2)와 같이 숫자를 넣어주는 것)
	try{
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String name = (String)files.nextElement();
		file = multi.getFilesystemName(name);
		if(file==null){
			file = multi.getParameter("b_file");			
		}
		
		b_num = multi.getParameter("b_num");
		b_title = multi.getParameter("b_title");
		b_content = multi.getParameter("b_content");
		b_user = multi.getParameter("b_user");
		
		bdto.setB_num(b_num);
		bdto.setB_title(b_title);
		bdto.setB_content(b_content);
		bdto.setB_user(b_user);
		bdto.setFile(file);
		
		int check = bdao.modify_board(bdto);
		
		if(check==1){
%>	
		<script type="text/javascript">
			alert("게시물 수정이 완료되었습니다.");
			location.href="list.jsp";
		</script>		
<% 		
		}else {
%>	
			<script type="text/javascript">
				alert("게시물 수정을 실패하였습니다. 다시 시도해주세요.");
				history.back();
			</script>		
<% 			
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
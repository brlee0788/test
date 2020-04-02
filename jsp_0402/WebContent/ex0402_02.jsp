<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
			table{width:700px; border-collapse: collapse;
				  border: 1px solid black; font-size: 14px;
				  margin-bottom: 10px;}
			tr, td{border: 1px solid black;}
			td{padding-left: 5px; height:40px;}
			td:first-child {width: 200px;  font-weight: bold; background: #efefef;}
		</style>
</head>
<% request.setCharacterEncoding("utf-8"); %>
<body>
			<table> 
				<tr>
					<td>이름</td>
					<td><%=request.getParameter("name") %></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><%=request.getParameter("id") %></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><%=request.getParameter("pw") %></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><%=request.getParameter("pw2") %></td>
				</tr>
				<tr>
					<td>휴대전화</td>
					<td><%=request.getParameter("phone") %></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><%
						String job=request.getParameter("job");
						switch(job){
							case "student":
								job = "학생";
							break;
							
							case "office":
								job = "학생";
							break;
							
							case "self":
								job = "자영업자";
							break;
							
							case "housekeeper":
								job = "전업주부";
							break;
							
							case "etc":
								job = "기타";
							break;
						}
						
						out.println(job);
					%>
					</td>
				</tr>
				<tr>
					<td>결혼여부</td>
					<td><%
					String marital=request.getParameter("marital_s");
					
					switch(marital){
					case "yes":
						marital = "예";
					break;
					
					case "no":
						marital = "아니오";
					break;
					}
					out.println(marital);
					%></td>
				</tr>
				<tr>
					<td>관심사</td>
					<td><% 
						String[] interest = request.getParameterValues("interest");
						for(int i=0;i<interest.length;i++){
							switch(interest[i]){
								case "computer":
									interest[i] = "컴퓨터/인터넷";
								break;
								
								case "movie":
									interest[i] = "영화/비디오";
								break;
								
								case "music":
									interest[i] = "음악";
								break;
								
								case "shopping":
									interest[i] = "쇼핑";
								break;
								
								case "culture":
									interest[i] = "문화/예술";
								break;
								
								case "cook":
									interest[i] = "요리";
								break;
								
								case "interior":
									interest[i] = "인테리어";
								break;
								
								case "leisure":
									interest[i] = "레저/여가";
								break;
								
								case "health":
									interest[i] = "건강/다이어트";
								break;
								
							}
						}
						
						out.println(Arrays.toString(interest));
					%></td>
				</tr>
			</table>

</body>
</html>
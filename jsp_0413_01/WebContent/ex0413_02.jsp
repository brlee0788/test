<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	int employee_id;
	String emp_name;
	float salary;
	String job_id;
	
	

%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			stmt = conn.createStatement();
			String in1 = request.getParameter("salary1");
			String in2 = request.getParameter("salary2");
			String name1 = request.getParameter("name");
			String sql="";
			String s_type = request.getParameter("search_t");
			String o_type=request.getParameter("order");
			String sort="";
			switch(o_type){
				case "id_asc":
					sort = "order by employee_id";
				break;
				case "id_desc":
					sort = "order by employee_id desc";
				break;
				case "salary_asc":
					sort = "order by salary";
				break;
				case "salary_desc":
					sort = "order by salary desc";
				break;
			}
				
			
			switch(s_type){
				case "n_search":
					sql = "select employee_id, emp_name, salary, job_id from employees where emp_name like '%"+name1+"%'"+sort;
				break;
				
				case "s_search":
					sql = "select employee_id, emp_name, salary, job_id from employees where salary between "+in1+" and "+in2+sort;
				break;	
			}
			
// 			if(s_type.equals("n_search")){
// 				sql = "select employee_id, emp_name, salary, job_id from employees where emp_name like '%"+name1+"%'";
// 			}else if(s_type.equals("s_search")){
// 				sql = "select employee_id, emp_name, salary, job_id from employees where salary between "+in1+" and "+in2+" order by salary";
// 			}
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				employee_id = rs.getInt("employee_id");
				emp_name = rs.getString("emp_name");
				salary = rs.getFloat("salary");
				job_id = rs.getString("job_id");
				out.println("사원번호: "+employee_id+"<br>");
				out.println("이름: "+emp_name+"<br>");
				out.println("월급: "+salary+"<br>");
				out.println("부서명: "+job_id+"<br>");
				out.println("-------------------------<br>");
			}
			out.println("<a href='form_02.html'>다시검색하기</a>");
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs !=null) rs.close();
				if(stmt !=null) stmt.close();
				if(conn !=null) conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	
	%>
	
</body>
</html>
package com.javalex.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	// 생성자
	public MemberDao() {
		
		try {
			//객체 선언 시 바로  jdbc connection 연결
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			// jdbc 로딩 
//			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	// 전역으로 선언
	ArrayList<MemberDto> dtos= new ArrayList<MemberDto>();
	
	// DB접속에 필요한 객체 선언
	DataSource dataSource;
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String id,pw,name,phone1,phone2,phone3,gender;
	String sql;
	
	// 전체 리스트 출력
	public ArrayList<MemberDto> member_Select(){
		
		// DB연결
		try {
			sql="select * from member2";
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "1234");
			
			conn=dataSource.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 데이터 담기
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone1 = rs.getString("phone1");
				phone2 = rs.getString("phone2");
				phone3 = rs.getString("phone3");
				gender = rs.getString("gender");
				
				MemberDto mdto = new MemberDto(id, pw, name, phone1, phone2, phone3, gender);
				
				dtos.add(mdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		// 리턴 값으로 돌려줌
		return dtos;
	}
		
	
	

}

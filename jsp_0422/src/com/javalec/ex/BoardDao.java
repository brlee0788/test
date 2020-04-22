package com.javalec.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {

	private BoardDao() {
		
	}
	
	private static BoardDao instance = new BoardDao();
	
	public static BoardDao getInstance() {
		return instance;
	}
	
	BoardDto bdto=null;
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql="";
	
	
	// 선택한 게시물 삭제 메소드
	public int delete_board(String b_num) {
		int check=0;
		sql="delete from b_board where b_num=?";
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, bdto.getB_num());
			check = pstmt.executeUpdate();
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return check;
	}
	
	
	// 수정한 게시물 업로드 메소드
	public int modify_board(BoardDto bdto) {
		int check=0;
		sql="update b_board set b_title=?, b_content=?, b_user=?, b_file=? where b_num=?";
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, bdto.getB_title());
			pstmt.setString(2, bdto.getB_content());
			pstmt.setString(3, bdto.getB_user());
			pstmt.setString(4, bdto.getFile());
			pstmt.setString(5, bdto.getB_num());
			check = pstmt.executeUpdate();
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return check;
	}
	
	// 수정하려는 게시물 데이터 가져오기 메소드
	public BoardDto getBoard(String b_num) {
		sql="select * from b_board where b_num=?";
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, b_num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bdto = new BoardDto();
				bdto.setB_num(rs.getString("b_num"));
				bdto.setB_title(rs.getString("b_title"));
				bdto.setB_content(rs.getString("b_content"));
				bdto.setB_user(rs.getString("b_user"));
				bdto.setFile(rs.getString("b_file"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return bdto;
	}
	
	
	// board 저장 내용 가져오기 메소드
	public ArrayList<BoardDto> getBoards(){
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		sql = "select * from b_board order by b_num desc";
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				bdto = new BoardDto();
				bdto.setB_num(rs.getString("b_num"));
				bdto.setB_title(rs.getString("b_title"));
				bdto.setB_content(rs.getString("b_content"));
				bdto.setB_user(rs.getString("b_user"));
				bdto.setFile(rs.getString("b_file"));
				
				list.add(bdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
		
	//insert 메소드
	public int insertBoard(BoardDto bdto) {
		int check=0;
		sql="insert into b_board values(?,?,?,?,?)";
		
		try {
			con=getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, bdto.getB_num());
			pstmt.setString(2, bdto.getB_title());
			pstmt.setString(3, bdto.getB_content());
			pstmt.setString(4, bdto.getB_user());
			pstmt.setString(5, bdto.getFile());
			check = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return check;
	}
	
	
	// Connection 메소드
	
	public Connection getConnection() {
		Context context=null;
		DataSource ds=null;
		
		try {
			context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	
}

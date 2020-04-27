package com.javalec.ex.BDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ex.BDto.BDto;


public class BDao {
	
	Context context = null;
	DataSource ds= null;
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="";
	ArrayList<BDto> dtos = new ArrayList<BDto>();
	BDto dto = new BDto();
	
	int bId,bHit,bGroup,bStep,bIndent;
	String bName,bTitle,bContent;
	Timestamp bDate;
	
	
	
	
	// 조회수 1증가  메소드
	public int upHit(int bId) {
		int check=0;
			
			sql="update mvc_board set bHit=bHit+1 where bId=?";
			
			try {
				con=ds.getConnection();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, bId);
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
	
	
	// 1개 select - 선택한 게시물 가져오는 메소드
	public BDto content_view(int bId) {
		
		// 조회수 1증가 메소드 호출
		upHit(bId);
				
		sql = "select * from mvc_board where bId=?";
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bName = rs.getString("bName");
				bTitle = rs.getString("bTitle");
				bContent = rs.getString("bContent");
				bDate =  rs.getTimestamp("bDate");
				bHit = rs.getInt("bHit");
				bGroup = rs.getInt("bGroup");
				bStep = rs.getInt("bStep");
				bIndent = rs.getInt("bIndent");
				
				dto = new BDto(bId,bName,bTitle,bContent,bDate,bHit,bGroup,bStep,bIndent);
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
		return dto;
	}
	
	// select - 리스트 가져오기
	public ArrayList<BDto> list(){
		
		sql = "select * from mvc_board";
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bId = rs.getInt("bId");
				bName = rs.getString("bName");
				bTitle = rs.getString("bTitle");
				bContent = rs.getString("bContent");
				bDate =  rs.getTimestamp("bDate");
				bHit = rs.getInt("bHit");
				bGroup = rs.getInt("bGroup");
				bStep = rs.getInt("bStep");
				bIndent = rs.getInt("bIndent");
				
				dto = new BDto(bId,bName,bTitle,bContent,bDate,bHit,bGroup,bStep,bIndent);
				dtos.add(dto);
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
		
		return dtos;
	}
	
	
	public BDao() {
		try {
			context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}

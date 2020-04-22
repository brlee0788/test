package com.javalec.ex;

public class BoardDto {

	public BoardDto() {
		
	}
	
	public BoardDto(String b_num, String b_title, String b_content, String b_user, String file) {
		this.b_num = b_num;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_user = b_user;
		this.file = file;
	}
	
	
	private String b_num,b_title,b_content,b_user,file;


	public String getB_num() {
		return b_num;
	}


	public void setB_num(String b_num) {
		this.b_num = b_num;
	}


	public String getB_title() {
		return b_title;
	}


	public void setB_title(String b_title) {
		this.b_title = b_title;
	}


	public String getB_content() {
		return b_content;
	}


	public void setB_content(String b_content) {
		this.b_content = b_content;
	}


	public String getB_user() {
		return b_user;
	}


	public void setB_user(String b_user) {
		this.b_user = b_user;
	}


	public String getFile() {
		return file;
	}


	public void setFile(String file) {
		this.file = file;
	}



	
	
	
}

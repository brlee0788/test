package com.javalec.ex;

public class Student {
	
	Student(){}
	
	Student(String stu_num, String stu_name, int stu_kor, int stu_eng, int stu_math){
		this.stu_num = stu_num;
		this.stu_name = stu_name;
		this.stu_kor = stu_kor;
		this.stu_eng = stu_eng;
		this.stu_math = stu_math;
		this.stu_total = stu_kor+stu_eng+stu_math;
		this.stu_avg = (double)stu_total/3;
	}
	
	
	private String stu_num;
	private String stu_name;
	private int stu_kor;
	private int stu_eng;
	private int stu_math;
	private int stu_total;
	private double stu_avg;
	
	public String getStu_num() {
		return stu_num;
	}
	public void setStu_num(String stu_num) {
		this.stu_num = stu_num;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public int getStu_kor() {
		return stu_kor;
	}
	public void setStu_kor(int stu_kor) {
		this.stu_kor = stu_kor;
	}
	public int getStu_eng() {
		return stu_eng;
	}
	public void setStu_eng(int stu_eng) {
		this.stu_eng = stu_eng;
	}
	public int getStu_math() {
		return stu_math;
	}
	public void setStu_math(int stu_math) {
		this.stu_math = stu_math;
	}
	public int getStu_total() {
		return stu_total;
	}
	public void setStu_total(int stu_total) {
		this.stu_total = stu_total;
	}
	public double getStu_avg() {
		return stu_avg;
	}
	public void setStu_avg(double stu_avg) {
		this.stu_avg = stu_avg;
	}
	
	
	
}

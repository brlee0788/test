package jsp_0406;

public class Student {
	
	public Student(){
		
	}
	
	public Student(String s_num, String s_name, int s_kor, int s_eng, int s_math){
		this.s_num = s_num;
		this.s_name = s_name;
		this.s_kor = s_kor;
		this.s_eng = s_eng;
		this.s_math = s_math;
		this.s_total = s_kor + s_eng + s_math;
		this.s_avg = (double)s_total/3.0;
		this.rank = 0;
	}
	
	// 앞에 아무것도 안 붙이면 이름을 바로 바꿀 수 있으므로 private을 붙여서 get/set을 이용해서만 접근할 수 있도록 만듦
	private String s_num;
	private String s_name;
	private int s_kor;
	private int s_eng;
	private int s_math;
	private int s_total;
	private double s_avg;
	private int rank;
	
	
	public String getS_num() {
		return s_num;
	}
	public void setS_num(String s_num) {
		this.s_num = s_num;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public int getS_kor() {
		return s_kor;
	}
	public void setS_kor(int s_kor) {
		this.s_kor = s_kor;
	}
	public int getS_eng() {
		return s_eng;
	}
	public void setS_eng(int s_eng) {
		this.s_eng = s_eng;
	}
	public int getS_math() {
		return s_math;
	}
	public void setS_math(int s_math) {
		this.s_math = s_math;
	}
	public int getS_total() {
		return s_total;
	}
	public void setS_total(int s_total) {
		this.s_total = s_total;
	}
	public double getS_avg() {
		return s_avg;
	}
	public void setS_avg(double s_avg) {
		this.s_avg = s_avg;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}


	
	
}

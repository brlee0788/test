
public class Student {
	int hak_num;
	String name;
	int total;
	
	
	Student(){}
	Student(int hak_num, String name, int total){
		this.hak_num = hak_num;
		this.name = name;
		this.total = total;
	}
	
	public String toString() {
		return "학번: "+hak_num+" 이름: "+name+" 합계: "+total;
	}
	
}

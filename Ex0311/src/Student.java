
public class Student {

static int count=0;
int hak_num;
String name;
int kor;
int eng;
int math;
int total;
float avg;
int rank;

{
	this.hak_num = ++count;
	}

Student(){};
Student(String name, int kor, int eng, int math){
	this.name = name;
	this.kor = kor;
	this.eng = eng;
	this.math = math;
	this.total = kor+eng+math;
	this.avg = (float)(total/3);
	this.rank = 1;
}


public String toString() {
	return "학번: "+hak_num+"/ 이름: "+name+"/ 국어: "+kor+"/ 영어: "+eng+"/ 수학: "+math+"/ 합계: "+total+"/ 평균: "+avg;
}
	
}

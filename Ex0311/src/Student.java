
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
	return "�й�: "+hak_num+"/ �̸�: "+name+"/ ����: "+kor+"/ ����: "+eng+"/ ����: "+math+"/ �հ�: "+total+"/ ���: "+avg;
}
	
}

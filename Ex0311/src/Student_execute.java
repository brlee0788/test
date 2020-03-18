import java.util.ArrayList;
import java.util.Scanner;

public class Student_execute {

	ArrayList<Student> st = new ArrayList<Student>();
	int select = 0;
	
	Student_execute(){}
	
	
	void def() {
		st.add(new Student("ȫ�浿", 99, 90, 80));
		st.add(new Student("�̼���", 88, 92, 100));
		st.add(new Student("������", 70, 80, 75));
	}
	
	void subject() {
	
		System.out.println("--------------------------");
		System.out.println("[�л��������α׷�]");
		System.out.println("1) �л��Է�");
		System.out.println("2) �л����");
		System.out.println("3) �л��˻�");
		System.out.println("4) ���Ȯ��");
		System.out.println("0) ����");
		System.out.println("--------------------------");
		System.out.println("���ϴ� ��ȣ�� �Է��ϼ���.>>");
	}
	
	void input() {
		Scanner scan = new Scanner(System.in);
		System.out.println("[�л����� �Է�]");
		int kor=0;
		int eng=0;
		int math=0;
		
		while(true) {
			System.out.println("�л��� �̸��� �Է��ϼ���.>>(���� ȭ��: 99)");
			String name = scan.nextLine();
			if(name.equals("99")) {
				System.out.println("���� ȭ������ ���ư��ϴ�.");
				break;
			}
			while(true) {
				System.out.println("�л��� ���������� �Է��ϼ���.>>");
				try {
					kor = scan.nextInt();
					if(!(kor>=0 && kor<=100)) {
						System.out.println("������ �߸� �Է��ϼ̽��ϴ�. 0~100������ ������ �ٽ� �Է��ϼ���.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("�߸� �Է��ϼ̽��ϴ�. ���� �� ���ڷ� �ٽ� �Է��ϼ���.");
					scan.nextLine();
					continue;
				}
				break;
			}
			
			while(true){
				System.out.println("�л��� ���������� �Է��ϼ���.>>");
				try {
					eng = scan.nextInt();
					if(!(eng>=0 && eng<=100)) {
						System.out.println("������ �߸� �Է��ϼ̽��ϴ�. 0~100������ ������ �ٽ� �Է��ϼ���.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("�߸� �Է��ϼ̽��ϴ�. ���� �� ���ڷ� �ٽ� �Է��ϼ���.");
					scan.nextLine();
					continue;
				}
				break;
			}
				
			while(true) {
				System.out.println("�л��� ���������� �Է��ϼ���.>>");
				try {
					math = scan.nextInt();
					scan.nextLine();
					if(!(math>=0 && math<=100)) {
						System.out.println("������ �߸� �Է��ϼ̽��ϴ�. 0~100������ ������ �ٽ� �Է��ϼ���.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("�߸� �Է��ϼ̽��ϴ�. ���� �� ���ڷ� �ٽ� �Է��ϼ���.");
					scan.nextLine();
					continue;
				}
				break;
			}
			
			st.add(new Student(name, kor, eng, math));
		}
	}
	
	void print() {
		System.out.println("[�л����� ���]");
		for(int i=0; i<st.size();i++) {
			System.out.println(st.get(i));
		}
	}
	
	void search() {
		Scanner scan = new Scanner(System.in);
		System.out.println("[�л����� �˻�]");
		while(true) {
			int count = 0;
			System.out.println("ã���ô� �л��� �̸��� �ּ� �ѱ��� �Է��ϼ���.>> (���� ȭ��: 99)");
			String search_n = scan.nextLine();
			
			if(search_n.equals("99")) {
				System.out.println("���� ȭ������ �̵��մϴ�.");
				break;
			}
			
			for(int i=0;i<st.size();i++) {
				if(st.get(i).name.contains(search_n)) {
					count++;
					System.out.println(st.get(i));
				}
			}
			if(count==0) {
				System.out.println("ã���ô� �л��� ������ �����ϴ�. �̸��� �ٽ� �Է��ϼ���.");
				continue;	
			}
		}
	}
		
	void rank() {
		for(int i=0;i<st.size();i++) {
			st.get(i).rank = 1;
			for(int j=0;j<st.size();j++) {
				if(st.get(i).total<st.get(j).total) {
					st.get(i).rank++;
				}
			}
		}
		for(int i=0; i<st.size();i++) {
			System.out.print(st.get(i)+"/ ���: "+st.get(i).rank);
			System.out.println();
		}
	}
	

	
	
}

import java.util.ArrayList;
import java.util.Scanner;

public class Student_execute {

	ArrayList<Student> st = new ArrayList<Student>();
	int select = 0;
	
	Student_execute(){}
	
	
	void def() {
		st.add(new Student("홍길동", 99, 90, 80));
		st.add(new Student("이순신", 88, 92, 100));
		st.add(new Student("강감찬", 70, 80, 75));
	}
	
	void subject() {
	
		System.out.println("--------------------------");
		System.out.println("[학생성적프로그램]");
		System.out.println("1) 학생입력");
		System.out.println("2) 학생출력");
		System.out.println("3) 학생검색");
		System.out.println("4) 등수확인");
		System.out.println("0) 종료");
		System.out.println("--------------------------");
		System.out.println("원하는 번호를 입력하세요.>>");
	}
	
	void input() {
		Scanner scan = new Scanner(System.in);
		System.out.println("[학생정보 입력]");
		int kor=0;
		int eng=0;
		int math=0;
		
		while(true) {
			System.out.println("학생의 이름을 입력하세요.>>(이전 화면: 99)");
			String name = scan.nextLine();
			if(name.equals("99")) {
				System.out.println("이전 화면으로 돌아갑니다.");
				break;
			}
			while(true) {
				System.out.println("학생의 국어점수를 입력하세요.>>");
				try {
					kor = scan.nextInt();
					if(!(kor>=0 && kor<=100)) {
						System.out.println("점수를 잘못 입력하셨습니다. 0~100사이의 점수를 다시 입력하세요.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("잘못 입력하셨습니다. 범위 내 숫자로 다시 입력하세요.");
					scan.nextLine();
					continue;
				}
				break;
			}
			
			while(true){
				System.out.println("학생의 영어점수를 입력하세요.>>");
				try {
					eng = scan.nextInt();
					if(!(eng>=0 && eng<=100)) {
						System.out.println("점수를 잘못 입력하셨습니다. 0~100사이의 점수를 다시 입력하세요.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("잘못 입력하셨습니다. 범위 내 숫자로 다시 입력하세요.");
					scan.nextLine();
					continue;
				}
				break;
			}
				
			while(true) {
				System.out.println("학생의 수학점수를 입력하세요.>>");
				try {
					math = scan.nextInt();
					scan.nextLine();
					if(!(math>=0 && math<=100)) {
						System.out.println("점수를 잘못 입력하셨습니다. 0~100사이의 점수를 다시 입력하세요.");
						continue;
					}
				} catch (Exception e) {
					System.out.println("잘못 입력하셨습니다. 범위 내 숫자로 다시 입력하세요.");
					scan.nextLine();
					continue;
				}
				break;
			}
			
			st.add(new Student(name, kor, eng, math));
		}
	}
	
	void print() {
		System.out.println("[학생정보 출력]");
		for(int i=0; i<st.size();i++) {
			System.out.println(st.get(i));
		}
	}
	
	void search() {
		Scanner scan = new Scanner(System.in);
		System.out.println("[학생정보 검색]");
		while(true) {
			int count = 0;
			System.out.println("찾으시는 학생의 이름을 최소 한글자 입력하세요.>> (이전 화면: 99)");
			String search_n = scan.nextLine();
			
			if(search_n.equals("99")) {
				System.out.println("이전 화면으로 이동합니다.");
				break;
			}
			
			for(int i=0;i<st.size();i++) {
				if(st.get(i).name.contains(search_n)) {
					count++;
					System.out.println(st.get(i));
				}
			}
			if(count==0) {
				System.out.println("찾으시는 학생의 정보가 없습니다. 이름을 다시 입력하세요.");
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
			System.out.print(st.get(i)+"/ 등수: "+st.get(i).rank);
			System.out.println();
		}
	}
	

	
	
}

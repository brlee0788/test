
import java.util.Scanner;

public class Ex0311_01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Student_execute stu_e = new Student_execute();
		stu_e.def();
	
		Scanner scan = new Scanner(System.in);
		
		Loop1:
		while(true) {
			stu_e.subject();
			int select= 0;
			try {
				select = scan.nextInt();
			} catch (Exception e) {
				System.out.println("잘못 입력하셨습니다. 범위 내 숫자로 다시 입력하세요.");
				scan.nextLine();
				continue;
			}
					
        	switch (select) {
			case 1:
				stu_e.input();
				break;
				
			case 2:
				stu_e.print();
				break;
				
			case 3:
				stu_e.search();
				break;
				

			case 4:
				stu_e.rank();
				break;
				
			case 0:
				System.out.println("시스템을 종료합니다.");
				break Loop1;
				
				
			default:
				System.out.println("잘못된 번호를 입력하셨습니다. 다시 입력하세요.");
				break;
			}
		}
		
		
	}

}



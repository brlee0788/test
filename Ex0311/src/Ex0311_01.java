
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
				System.out.println("�߸� �Է��ϼ̽��ϴ�. ���� �� ���ڷ� �ٽ� �Է��ϼ���.");
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
				System.out.println("�ý����� �����մϴ�.");
				break Loop1;
				
				
			default:
				System.out.println("�߸��� ��ȣ�� �Է��ϼ̽��ϴ�. �ٽ� �Է��ϼ���.");
				break;
			}
		}
		
		
	}

}



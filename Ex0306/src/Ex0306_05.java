import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class Ex0306_05 {

	public static void main(String[] args) {
		// set ->4,6,57,3,2,10  �����ϰ� ���
		// map -> (1,��)  (2,��)  (3,��)  (4,��) (5,����)
		// �α��� ���¸� ��������.
		// map ��� ���

		HashSet s = new HashSet();
		
		s.add(new Integer(4));
		s.add(new Integer(6));
		s.add(new Integer(57));
		s.add(new Integer(3));
		s.add(new Integer(2));
		s.add(new Integer(10));
		
		
		Iterator it_1 = s.iterator();
		
		while(it_1.hasNext()) {
			System.out.println(it_1.next());
		}

		
		System.out.println("--------------------------------------");
		
		Scanner scan = new Scanner(System.in);
		HashMap m = new HashMap();
		
		m.put("1", "��");
		m.put("2", "��");
		m.put("3", "��");
		m.put("4", "��");
		m.put("5", "����");
		
		Iterator it_2 = m.entrySet().iterator();
		
		while(true) {
			System.out.println("���̵� �Է��ϼ���.>>");
			String id = scan.nextLine();
			
			if(!(m.containsKey(id))) {  			// ���Ҷ��� map ��ü���� �ְ� ���� ��  
				System.out.println("��ġ�ϴ� ���̵� �����ϴ�. �ٽ� �Է��ϼ���.");
				continue;
			}
			
			System.out.println("��й�ȣ�� �Է��ϼ���.>>");
			String pw = scan.nextLine();
			
			if(!(m.get(id).equals(pw))) {
				System.out.println("��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� �Է��ϼ���.");
				continue;
			}else {
				System.out.println("�α����� �Ǿ����ϴ�.");
				System.out.println("�ý����� �����մϴ�.");
				break;
			}
		}
		
	}

}

import java.util.HashMap;
import java.util.Scanner;

public class Ex0306_03 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		HashMap map = new HashMap();
	
		map.put("myid", "1234");
		map.put("aaa", "1234");
		map.put("koitt", "k0001");
		map.put("bbb", "1111");
		map.put("dream", "d0001");
		
		while(true) {
			System.out.println("���̵�� �н����带 �Է��ϼ���.>> (��ҹ��ڸ� �����մϴ�.)");
			System.out.print("id: ");
			String id = scan.nextLine().trim();  // trim()  �յ� ���� ���ִ� �޼ҵ�
			if(!(map.containsKey(id))) { // ������ �Է��� id�� map�� �ִ��� �������� Ȯ���ؼ� boo��ean���� �˷���
				System.out.println("�Է��� ID�� �����ϴ�. �ٽ� �Է��ϼ���.");
				continue;
			}
			
			System.out.print("pw: ");
			String pw = scan.nextLine().trim();
			if(!(map.get(id).equals(pw))) {  // map������ get(key) �޼ҵ�� �Է��� key�� �ش��ϴ� ��(value)�� ������ �� 
				System.out.println("pw�� ��ġ���� �ʽ��ϴ�. �ٽ� �Է��ϼ���.");
				continue;
			}else {
				System.out.println("�α��� �Ǿ����ϴ�.");
				break;
			}
		}
		
		System.out.println("�ý��� ����");
		

	}

}

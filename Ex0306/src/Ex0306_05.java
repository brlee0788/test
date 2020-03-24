import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;

public class Ex0306_05 {

	public static void main(String[] args) {
		// set ->4,6,57,3,2,10  저장하고 출력
		// map -> (1,개)  (2,소)  (3,말)  (4,범) (5,돼지)
		// 로그인 형태를 만들어보세요.
		// map 모두 출력

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
		
		m.put("1", "개");
		m.put("2", "소");
		m.put("3", "말");
		m.put("4", "범");
		m.put("5", "돼지");
		
		Iterator it_2 = m.entrySet().iterator();
		
		while(true) {
			System.out.println("아이디를 입력하세요.>>");
			String id = scan.nextLine();
			
			if(!(m.containsKey(id))) {  			// 비교할때는 map 객체명을 넣고 직접 비교  
				System.out.println("일치하는 아이디가 없습니다. 다시 입력하세요.");
				continue;
			}
			
			System.out.println("비밀번호를 입력하세요.>>");
			String pw = scan.nextLine();
			
			if(!(m.get(id).equals(pw))) {
				System.out.println("비밀번호가 일치하지 않습니다. 다시 입력하세요.");
				continue;
			}else {
				System.out.println("로그인이 되었습니다.");
				System.out.println("시스템을 종료합니다.");
				break;
			}
		}
		
	}

}

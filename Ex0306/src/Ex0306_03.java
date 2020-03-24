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
			System.out.println("아이디와 패스워드를 입력하세요.>> (대소문자를 구분합니다.)");
			System.out.print("id: ");
			String id = scan.nextLine().trim();  // trim()  앞뒤 공백 없애는 메소드
			if(!(map.containsKey(id))) { // 위에서 입력한 id가 map에 있는지 없는지를 확인해서 booㅣean으로 알려줌
				System.out.println("입력한 ID가 없습니다. 다시 입력하세요.");
				continue;
			}
			
			System.out.print("pw: ");
			String pw = scan.nextLine().trim();
			if(!(map.get(id).equals(pw))) {  // map에서는 get(key) 메소드는 입력한 key에 해당하는 값(value)가 나오게 됨 
				System.out.println("pw가 일치하지 않습니다. 다시 입력하세요.");
				continue;
			}else {
				System.out.println("로그인 되었습니다.");
				break;
			}
		}
		
		System.out.println("시스템 종료");
		

	}

}

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class Ex0306_04 {

	public static void main(String[] args) {
		HashMap map = new HashMap();
		HashSet set1 = new HashSet();
		ArrayList list = new ArrayList();
		
		list.add(new Integer(1));
		list.add(new Integer(2));
		list.add(new Integer(3));
		
		map.put("myId", "1234");
		map.put("dream", "d1111");
		map.put("aaa", "aoooo");
		map.put("bbb", "d1111");
		map.put("aaa", "axxxx");
		
		Iterator it = list.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		System.out.println("--------------------------");
		
		// Collection에 Iterator가 있는데 map은 Collection을 상속받지 않아서 set으로 바꿔서 iterator 사용해야함
		map.entrySet();  // iterator 사용하기 위해 map을 set으로 바꿈
		Iterator it1 = map.entrySet().iterator();
		while(it1.hasNext()) {               // hasNext()  읽어올 요소가 남아있는지
			System.out.println(it1.next());  // next()  다음 요소를 읽어옴 -> map에 저장되어 있는 id와 pw 모두 출력됨
		}
	}

}

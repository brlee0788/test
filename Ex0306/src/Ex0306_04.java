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
		
		// Collection�� Iterator�� �ִµ� map�� Collection�� ��ӹ��� �ʾƼ� set���� �ٲ㼭 iterator ����ؾ���
		map.entrySet();  // iterator ����ϱ� ���� map�� set���� �ٲ�
		Iterator it1 = map.entrySet().iterator();
		while(it1.hasNext()) {               // hasNext()  �о�� ��Ұ� �����ִ���
			System.out.println(it1.next());  // next()  ���� ��Ҹ� �о�� -> map�� ����Ǿ� �ִ� id�� pw ��� ��µ�
		}
	}

}

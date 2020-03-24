import java.util.HashSet;
import java.util.Iterator;


public class Ex0306_02 {

	public static void main(String[] args) {
		HashSet set1 = new HashSet();
		
		set1.add(new Integer(1));
		set1.add(new Integer(2));
		set1.add(new Integer(1));
		set1.add(new Integer(4));
		set1.add(new Integer(1));
		set1.add(new Integer(5));
		
		// set은 중복을 허용하지 않아서 중복된 1은 한번만 출력됨
		// 순서가 없기 때문에, 넣은 순서랑 상관없이 값 기준 오름차순으로 출력됨
		
		Iterator it = set1.iterator(); // 1회용이라서 2번 출력하려면 매번 선언을 해줘야함 
		while(it.hasNext()) {
			System.out.println(it.next());
			it.remove();
		}
		
		System.out.println("2번째 출력");
		Iterator it1 = set1.iterator();
		while(it1.hasNext()) {
			System.out.println(it1.next());
//			it.remove();
		}
		
	}

}

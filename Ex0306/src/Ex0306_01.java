import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Scanner;

public class Ex0306_01 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int[] hak_num = {1001,1002,1003};
		String[] name = {"홍길동", "이순신","김유신"};
		int[] total = {299, 288, 300};
		
		ArrayList<Student> list = new ArrayList<Student>();
		
		for(int i=0;i<hak_num.length;i++) {
			list.add(new Student(hak_num[i], name[i], total[i]));
//			System.out.println(list.get(i));
		}
		
		
		while(true) {
			System.out.println("1)학번정렬 2)이름정렬 3)점수정렬");
			int num=scan.nextInt();
			switch (num) {
			case 1: // 학번 정렬
				Collections.sort(list, new Comparator<Student>() {

					@Override
					public int compare(Student s1, Student s2) {  // s1은 현재 학생, s2 두번쨰 학생이라고 생각하면 된다
						if(s1.hak_num < s2.hak_num) {
							return -1;
						}else if(s1.hak_num > s2.hak_num) {
							return 1;
						}
						return 0;
					}
					
				});
				for(int i=0;i<list.size();i++) {
					System.out.println(list.get(i));
				}
				
				break;

			case 2: //이름 정렬
				Collections.sort(list, new Comparator<Student>() {

					@Override
					public int compare(Student s1, Student s2) {
						return s1.name.compareTo(s2.name);
					}
				});
				for(int i=0;i<list.size();i++) {
					System.out.println(list.get(i));
				}
						
				break;
				
			case 3: //점수 정렬
				Collections.sort(list, new Comparator<Student>() {

					@Override
					public int compare(Student s1, Student s2) {  // 오름차순으로 정렬됨. 내림차순으로 하고 싶으면 return값 -1과 1을 바꾸면 됨
						if(s1.total<s2.total) {
							return -1;
						}else if(s1.total>s2.total) {
							return 1;
						}
						return 0;
					}
				});
				for(int i=0;i<list.size();i++) {
					System.out.println(list.get(i));
				}
				
				break;
			default:
				break;
			}
		}
		
	}

}

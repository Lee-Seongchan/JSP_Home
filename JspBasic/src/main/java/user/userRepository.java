package user;

import java.util.ArrayList;
import java.util.List;

public class userRepository {

	private static List<User> userList = new ArrayList<>();
	
	public static void save(User user) {
		userList.add(user);
	}
	
	public static void showUsers() {
		System.out.println("### 회원정보 ###");
		
		for(User user : userList) {
			System.out.println("아이디:" + user.getAccout());
			System.out.println("비밀번호:" + user.getPassword());
			System.out.println("이름:" + user.getName());
			System.out.println("별명:" + user.getNickName());
			System.out.println("==============================");
		}
	}
	
}

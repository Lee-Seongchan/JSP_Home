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
	
	// 계정명을 통해 해당 계정명의 정보를 가지고 있는 User객체를 리턴하는 메서드
	public static User getUser(String inputId) {
		for(User user : userList) {
			if(user.getAccout().equals(inputId)) {
				return user;
			}
		}
		return null;
	}
	
	
}

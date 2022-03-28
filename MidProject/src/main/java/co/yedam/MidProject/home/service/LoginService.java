package co.yedam.MidProject.home.service;

public interface LoginService {
	
	UserVO fetchUser(String id);

	UserVO ispwCheck(String pw);  // 본인확인
	
	int userUp(UserVO vo); // 비밀번호 변경
}

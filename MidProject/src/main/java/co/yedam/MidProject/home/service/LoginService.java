package co.yedam.MidProject.home.service;

public interface LoginService {
	
	UserVO fetchUser(String id);

	UserVO ispwCheck(String pw);  // 본인확인
}

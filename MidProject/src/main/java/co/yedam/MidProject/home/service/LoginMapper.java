package co.yedam.MidProject.home.service;

public interface LoginMapper {
	
	UserVO fetchUser(String id);

	UserVO ispwCheck(String pw);  // 본인확인
}

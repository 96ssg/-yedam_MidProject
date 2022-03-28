package co.yedam.MidProject.home.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.home.service.LoginMapper;
import co.yedam.MidProject.home.service.LoginService;
import co.yedam.MidProject.home.service.UserVO;

public class LoginServiceImpl implements LoginService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private LoginMapper map = sqlSession.getMapper(LoginMapper.class);
	
	@Override
	public UserVO fetchUser(String id) {
		return map.fetchUser(id);
	}

	@Override
	public UserVO ispwCheck(String pw) {
		// TODO Auto-generated method stub
		return map.ispwCheck(pw);
	}
	
	@Override
	public int userUp(UserVO vo) {
		return map.userUp(vo);
	}
	
}

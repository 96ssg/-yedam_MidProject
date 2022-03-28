package co.yedam.MidProject.myPage.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.home.service.LoginService;
import co.yedam.MidProject.home.service.UserVO;
import co.yedam.MidProject.home.serviceImpl.LoginServiceImpl;

public class ChangePassword implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LoginService userDAO = new LoginServiceImpl();
		
		UserVO vo = new UserVO();
		
		vo.setUserPassword(request.getParameter("userPassword"));
		
		int n = userDAO.userUp(vo);
		if(n != 0) {			
			return "home/loginForm";
		} else {
			return "myPage/changePasswordForm";
		}
	}

}

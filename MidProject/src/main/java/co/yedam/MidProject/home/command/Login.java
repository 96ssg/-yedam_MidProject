package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.home.service.LoginService;
import co.yedam.MidProject.home.service.UserVO;
import co.yedam.MidProject.home.serviceImpl.LoginServiceImpl;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String userId = request.getParameter("id");
		
		LoginService loginDao = new LoginServiceImpl();
		
		UserVO user = loginDao.fetchUser(userId);
		
		Gson gson = new Gson();
		String data = gson.toJson(user);
		
		
		return "ajax:" + data;
	}

}

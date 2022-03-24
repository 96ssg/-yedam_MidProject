package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;

public class HomeCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");

		// 로그인 없는 접근 차단
		if (role == null) return "home/loginForm";
		
		return "home/home";
		
	}

}
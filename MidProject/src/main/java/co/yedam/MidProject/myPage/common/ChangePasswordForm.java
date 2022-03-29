package co.yedam.MidProject.myPage.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;

public class ChangePasswordForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String pwdCheck = (String) session.getAttribute("pwdCheck");

		// 비밀번호 확인 없는 접근 차단
		if (pwdCheck == null|| pwdCheck.equals("no")) {
			return "myPage/checkPasswordForm";
		}else {
			return "myPage/changepasswordForm";
			
		}
	}

}

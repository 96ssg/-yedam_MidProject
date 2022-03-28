package co.yedam.MidProject.myPage.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxCheckPassword implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();

		String checkPw = request.getParameter("input");
		System.out.println(checkPw);
		
		String role = (String) session.getAttribute("role");
		String password = "";
		
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			password = user.getStudentPassword();
			String result = (password.equals(checkPw))? "success" : "fail";
			
			System.out.println(password);
			return "ajax:" + result;
					
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			password = user.getProfPassword();
			String result = (password.equals(checkPw))? "success" : "fail";
			
			System.out.println(password);
			return "ajax:" + result;
		}
		
	}
}

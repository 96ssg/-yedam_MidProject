package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class AjaxProfessorHome implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		String loginId = request.getParameter("loginId");
		
		// 새로 로그인 한 경우
		if (loginId != null) {
			ProfessorService pDao = new ProfessorServiceImpl();
			user = new ProfessorVO();
			user.setProfId(loginId);
			user = pDao.selectProfessor(user);
			
			System.out.println("new login : prof " + user.getProfName());

			session.setAttribute("user", user);

			// 학과장(admin)은 번호가 001
			role = (user.getProfId().endsWith("001"))? "admin" : "professor";
			session.setAttribute("role", role);
		}

		System.out.println("current user is prof " + user.getProfName());
		
		
		
		return "ajax:";
	}

}

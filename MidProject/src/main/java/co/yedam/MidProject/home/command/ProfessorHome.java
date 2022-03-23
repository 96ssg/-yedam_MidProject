package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorHome implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		
		// 이미 로그인 중인 경우
		if (user == null) return "home/professorHome";
		
		// 새로 로그인 한 경우
		if (user != null) {
			user = new ProfessorVO();
			user.setP_Id(request.getParameter("userId"));

			ProfessorService pDao = new ProfessorServiceImpl();
			session.setAttribute("user", pDao.selectProfessor(user));

			// 학과장(admin)은 번호가 001
			role = (user.getP_Id().endsWith("001"))? "admin" : "professor";
			session.setAttribute("role", role);
		}
				
				
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		return "home/professorHome";
	}

}

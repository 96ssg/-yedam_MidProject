package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class HomeCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String userId = request.getParameter("loginId");
		
		// 이미 로그인 중인 경우
		if (userId == null) {
			String user = session.getAttribute("user").getClass().getName();
			user = user.substring("co.yedam.MidProject.".length());
			if (user.startsWith("student")) {
				return "home/studentHome";
			}
			
			return "home/professorHome";
		};
		
		// 새로 로그인 하는 경우
		if (userId.length() > 6) {
			// 로그인 한 유저가 학생일 경우
			StudentVO user = new StudentVO();
			user.setStudentId(userId);
			StudentService sDao = new StudentServiceImpl();
			
			session.setAttribute("user", sDao.selectStudent(user));
			session.setAttribute("role", "student");
			return "home/studentHome";
			
		} else {
			// 로그인 한 유저가 교수일 경우
			ProfessorVO user = new ProfessorVO();
			user.setProfId(userId);
			ProfessorService pDao = new ProfessorServiceImpl();
			
			session.setAttribute("user", pDao.selectProfessor(user));
			
			// 학과장(admin)은 번호가 001
			String role = (userId.endsWith("001"))? "admin" : "professor";
			session.setAttribute("role", role);
			return "home/professorHome";
		}
		
	}

}
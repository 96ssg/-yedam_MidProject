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
		
		String userId = request.getParameter("loginId");
		
		// 로그인 하지 않은 경우
		if (userId == null) return "home/home";
		
//		if (userId.length() > 6) {
//			// 로그인 한 유저가 학생일 경우
//			HttpSession session = request.getSession();
//			StudentVO user = new StudentVO();
//			user.setS_Id(userId);
//			StudentService sDao = new StudentServiceImpl();
//			
//			session.setAttribute("user", sDao.selectStudent(user));
//			
//		} else {
//			// 로그인 한 유저가 교수일 경우
//			HttpSession session = request.getSession();
//			ProfessorVO user = new ProfessorVO();
//			user.setP_Id(userId);
//			ProfessorService pDao = new ProfessorServiceImpl();
//			
//			session.setAttribute("user", pDao.selectProfessor(user));
//		}
		
		return "home/home";
	}

}
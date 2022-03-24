package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.home.service.LoginService;
import co.yedam.MidProject.home.service.UserVO;
import co.yedam.MidProject.home.serviceImpl.LoginServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String userId = request.getParameter("id");
		String userPassword = request.getParameter("password");
		
		LoginService loginDao = new LoginServiceImpl();
		
		UserVO loginUser = loginDao.fetchUser(userId);
		
		// 로그인 실패
		if (loginUser == null) return "ajax:id";
		if (!userPassword.equals(loginUser.getUserPassword())) return "ajax:password";
		
		
		// 로그인 성공
		HttpSession session = request.getSession();
		session.setAttribute("userId", userId);
		
		String role = (userId.length() == 10)? "student" : (userId.endsWith("001"))? "admin" : "professor";
		session.setAttribute("role", role);
		
		if (role.equals("student")) {
			StudentService sDao = new StudentServiceImpl();
			StudentVO user = new StudentVO();
			user.setStudentId(userId);
			user = sDao.selectStudent(user);
			
			System.out.println("new login : student " + user.getStudentName());

			session.setAttribute("user", user);
			
			return "ajax:success";
			
		} else {
			ProfessorService pDao = new ProfessorServiceImpl();
			ProfessorVO user = new ProfessorVO();
			user.setProfId(userId);
			user = pDao.selectProfessor(user);
			
			System.out.println("new login : prof " + user.getProfName());

			session.setAttribute("user", user);
			
			return "ajax:success";
		}
		
	}

}

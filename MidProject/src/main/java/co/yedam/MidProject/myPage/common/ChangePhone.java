package co.yedam.MidProject.myPage.common;

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

public class ChangePhone implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		
		
		if (role.equals("student")) {
			StudentService studentDAO = new StudentServiceImpl();
			StudentVO user = (StudentVO) session.getAttribute("user");
			user.getStudentId();
			user.setStudentPhone(request.getParameter("phone"));
			studentDAO.updateStudent(user);
		} else {
			ProfessorService professorDAO = new ProfessorServiceImpl();
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			user.getProfId();
			user.setProfPhone(request.getParameter("phone"));
			professorDAO.updateProfessor(user);
		}
		return "myPage/myView";
	}

}

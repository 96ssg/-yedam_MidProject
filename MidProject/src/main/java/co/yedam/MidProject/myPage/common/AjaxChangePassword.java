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

public class AjaxChangePassword implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String cPw = request.getParameter("currentPw");
		String nPw = request.getParameter("password");
		if (role.equals("student")) {
			// 학생 비밀번호 수정
			StudentService sservice = new StudentServiceImpl();
			StudentVO student = (StudentVO) session.getAttribute("user");
			if (student.getStudentPassword().equals(cPw)) {
				student.setStudentPassword(nPw);
				sservice.updateStudent(student);
				return "ajax:success";
			} else {
				return "ajax:fail";
			}
		} else {
			// 교수 비밀번호 수정
			ProfessorService pservice = new ProfessorServiceImpl();
			ProfessorVO professor = (ProfessorVO) session.getAttribute("user");
			if (professor.getProfPassword().equals(cPw)) {
				professor.setProfPassword(nPw);
				pservice.updateProfessor(professor);
				return "ajax:success";
			} else {
				return "ajax:fail";
			}

		}
	}

}

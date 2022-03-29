package co.yedam.MidProject.student.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String deptId;
		
		if(role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			deptId = user.getDeptId();
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			deptId = user.getDeptId();
		}
		
		//학생리스트.
		
		StudentService studentDao = new StudentServiceImpl();
		List<StudentVO> list = studentDao.selectStudentList();
		List<StudentVO> students = new ArrayList<>();
		
		for(StudentVO s : list) {
			if(s.getDeptId().equals(deptId)) {
				students.add(s);
			}
		}
		
		request.setAttribute("students", students);
		
		return "student/studentList";
		
		
	}

}

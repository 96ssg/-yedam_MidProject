package co.yedam.MidProject.student.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentUpdateForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		StudentService studentDao = new StudentServiceImpl();
		String studentId = request.getParameter("studentId");
		
		StudentVO student = new StudentVO();
		student.setStudentId(studentId);
		student = studentDao.selectStudent(student);
		
		request.setAttribute("students", student);
		
		System.out.println(student);
		return "student/studentUpdateForm";
	}

}

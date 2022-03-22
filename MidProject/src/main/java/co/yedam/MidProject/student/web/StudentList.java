package co.yedam.MidProject.student.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//학생리스트.
		
		StudentService studentDao = new StudentServiceImpl();
		request.setAttribute("students", studentDao.selectStudentList());
		
		return "student/studentList";
		
		
	}

}

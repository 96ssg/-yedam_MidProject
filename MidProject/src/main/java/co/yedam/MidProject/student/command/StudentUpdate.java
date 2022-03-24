package co.yedam.MidProject.student.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		/*
		 * StudentService studentDao = new StudentServiceImpl();
		 * 
		 * ObjectMapper mapper = new ObjectMapper(); List<StudentVO> list =
		 * studentDao.selectStudentList(); String jsonInString = ""; try { jsonInString
		 * = new ObjectMapper().writeValueAsString(list); } catch (IOException e) { //
		 * TODO Auto-generated catch block e.printStackTrace(); }
		 * 
		 * request.setAttribute("students", jsonInString);
		 */
		
		
		/* student.setStudentName(request.getParameter("studentName")); */
		/*
		 * student.setStudentPhone(request.getParameter("studentPhone"));
		 * student.setStudentBirth(request.getParameter("studentBirth"));
		 * student.setStudentImg(request.getParameter("studentImg"));
		 * student.setStudentGrade(Integer.parseInt("studentGrade"));
		 * student.setStudentScore(Integer.parseInt("studentScore"));
		 * student.setStudentSemster(Integer.parseInt("studentSemster"));
		 * student.setDeptId(request.getParameter("deptId"));
		 */
		StudentService service = new StudentServiceImpl();
		StudentVO student = new StudentVO();
		student.setStudentId(request.getParameter("studentId"));
		student.setStudentPassword(request.getParameter("studentPassword"));

		
		
		service.updateStudent(student);
		
		
		return "studentList.do";
	}

}

package co.yedam.MidProject.student.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		
		StudentVO student = new StudentVO();
		
		student.setStudentId(request.getParameter("sId"));
		student.setStudentName(request.getParameter("sName"));
		student.setStudentPassword(request.getParameter("sPassword"));
		student.setStudentPhone(request.getParameter("sPhone"));
		student.setStudentBirth(request.getParameter("sBirth"));
		student.setStudentImg(request.getParameter("sImg"));
		student.setStudentGrade(Integer.parseInt(request.getParameter("sGrade")));
		student.setStudentScore(Integer.parseInt(request.getParameter("sScore")));
		student.setStudentSemster(Integer.parseInt(request.getParameter("sSemster")));
		student.setDeptId(request.getParameter("dId"));
		
		StudentService service = new StudentServiceImpl();
		service.insertStudent(student);
		
		
		request.setAttribute("students", student);
		System.out.println(student);
		return "studentList.do";
	}

}

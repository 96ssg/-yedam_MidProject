package co.yedam.MidProject.student.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {


		StudentService service = new StudentServiceImpl();
		StudentVO student = new StudentVO();
		
		student.setStudentId(request.getParameter("studentId"));
		student.setStudentName(request.getParameter("studentName"));
		student.setStudentPassword(request.getParameter("studentPassword"));
		student.setStudentStatus(Integer.parseInt(request.getParameter("studentStatus")));
		
		service.updateStudent(student);
		System.out.println(student.getStudentId());
		return "studentList.do";
	}

}

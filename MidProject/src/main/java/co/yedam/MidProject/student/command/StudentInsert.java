package co.yedam.MidProject.student.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.charge.service.ChargeService;
import co.yedam.MidProject.charge.service.ChargeVO;
import co.yedam.MidProject.charge.serviceImpl.ChargeServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");

		StudentVO student = new StudentVO();
		
		student.setStudentId(request.getParameter("sId"));
		student.setStudentName(request.getParameter("sName"));
		student.setStudentPassword(request.getParameter("sPassword"));
		student.setStudentPhone(request.getParameter("sPhone"));
		student.setStudentBirth(request.getParameter("sBirth"));
		student.setStudentImg(request.getParameter("sImg"));
		student.setStudentGrade(Integer.parseInt(request.getParameter("sGrade")));
		student.setStudentScore(Integer.parseInt(request.getParameter("sScore")));
		student.setStudentSemester(Integer.parseInt(request.getParameter("sSemester")));
		student.setDeptId(request.getParameter("dId"));
		student.setStudentStatus(Integer.parseInt(request.getParameter("sStatus")));
		
		
		StudentService service = new StudentServiceImpl();
		service.insertStudent(student);
		request.setAttribute("students", student);
		return "studentList.do";
	}

}

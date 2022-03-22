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
		String id = request.getParameter("sId");
		String name = request.getParameter("sName");
		String pass = request.getParameter("sPassword");
		String phone = request.getParameter("sPhone");
		String birth = request.getParameter("sBirth");
		String img = request.getParameter("sImg");
		int grade = Integer.parseInt(request.getParameter("sGrade"));
		int score = Integer.parseInt(request.getParameter("sScore"));
		int semster = Integer.parseInt(request.getParameter("sSemster"));
		String did = request.getParameter("did");
		
		StudentVO student = new StudentVO();
		student.setS_Id(id);
		student.setS_Name(name);
		student.setS_Password(pass);
		student.setS_Phone(phone);
		student.setS_Birth(birth);
		student.setS_Img(img);
		student.setS_Grade(grade);
		student.setS_Score(score);
		student.setS_Semster(semster);
		student.setD_Id(did);
		
		StudentService service = new StudentServiceImpl();
		service.insertStudent(student);
		
		
		request.setAttribute("students", student);
		System.out.println(student);
		return "student/studentInsert";
	}

}

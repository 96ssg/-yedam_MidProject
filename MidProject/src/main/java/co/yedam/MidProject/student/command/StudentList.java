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

public class StudentList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//학생리스트.
		
		StudentService studentDao = new StudentServiceImpl();
		
		ObjectMapper mapper = new ObjectMapper();
		List<StudentVO> list = studentDao.selectStudentList();
		String jsonInString = "";
		try {
			jsonInString = new ObjectMapper().writeValueAsString(list);		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("students", jsonInString);
		
		return "student/studentList";
		
		
	}

}

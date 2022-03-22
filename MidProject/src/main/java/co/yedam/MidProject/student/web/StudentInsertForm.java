package co.yedam.MidProject.student.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;

public class StudentInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//학생등록폼.
		
		
		return "student/studentInsertForm";
	}

}

package co.yedam.MidProject.course.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;

public class CourseApplicationForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "course/courseApplicationForm";
	}

}

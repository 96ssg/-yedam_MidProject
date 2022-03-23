package co.yedam.MidProject.course.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;

public class CourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> list = courseDao.courseSelectList();
		request.setAttribute("courseList", list);
		
		return "course/courseList";
	}

}

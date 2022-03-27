package co.yedam.MidProject.course.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;

public class CourseDetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> courseList = new ArrayList<>();
		String lectureId = request.getParameter("lectureId");
		courseList = courseDao.myCourse(role, lectureId);
		
		request.setAttribute("courseList", courseList);
		
		return "course/courseDetail";
	}

}

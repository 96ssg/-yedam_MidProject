package co.yedam.MidProject.course.command;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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

		// 학기 수강생 성적
		List<CourseVO> semesterCourseList = courseList.stream()
				.filter(course -> course.getCourseYear() == CourseMethods.year && course.getCourseSemester() == CourseMethods.semester)
				.collect(Collectors.toList());
		
		request.setAttribute("semesterCourseList", semesterCourseList);

		// 전체 수강생 성적 (학기성적 제외)
		List<CourseVO> allCourseList = courseList.stream()
				.filter(course -> course.getCourseYear() != CourseMethods.year || course.getCourseSemester() != CourseMethods.semester)
				.collect(Collectors.toList());
		
		request.setAttribute("allCourseList", allCourseList);
		
		return "course/courseDetail";
	}

}

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
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class ProfessorCourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();

		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> list = courseDao.courseSelectList();
		List<CourseVO> courses = new ArrayList<>();
		
		StudentVO user = (StudentVO) session.getAttribute("user");
		userId = user.getStudentId();
		
		// 학생 본인의 수강 기록만 전달
		for (CourseVO c : list) {
			if (userId.equals(c.getStudentId())) courses.add(c);
		}
		
		request.setAttribute("courseList", courses);

		
		LectureService lectureDao = new LectureServiceImpl();
		List<LectureVO> lectures = lectureDao.selectLectureList();
		request.setAttribute("lectures", lectures);
		
		return "course/studentCourseList";
		
	}

}

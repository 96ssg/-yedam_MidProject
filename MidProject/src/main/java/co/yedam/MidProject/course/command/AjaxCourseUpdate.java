package co.yedam.MidProject.course.command;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;

public class AjaxCourseUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 브라우저에서 온 정보
		int lectureId = Integer.parseInt(request.getParameter("lectureId"));
		String studentId = request.getParameter("studentId");
		int courseMid = Integer.parseInt(request.getParameter("courseMid"));
		int courseFinal = Integer.parseInt(request.getParameter("courseFinal"));
		String courseScore = request.getParameter("courseScore");
		
		// 수정할 courseVO
		// 현재 연도, 학기
		LocalDate now = LocalDate.now();
		int thisYear = now.getYear();
		int thisSemester = (now.getMonthValue() < 8) ? 1 : 2;
		CourseService courseDao = new CourseServiceImpl();
		CourseVO vo = new CourseVO();
		vo.setLectureId(lectureId);
		vo.setStudentId(studentId);
		vo.setCourseYear(thisYear);
		vo.setCourseSemester(thisSemester);
		vo = courseDao.selectCourse(vo);
		
		// 수정
		vo.setCourseMid(courseMid);
		vo.setCourseFinal(courseFinal);
		vo.setCourseScore(courseScore);
		courseDao.updateCourse(vo);
		System.out.println("course updated");
		
		return "ajax:updated";
	}

}

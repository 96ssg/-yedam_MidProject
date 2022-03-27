package co.yedam.MidProject.course.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;

public class AjaxCourseUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ajaxcourseupdate");

		// 브라우저에서 온 정보
		int lectureId = Integer.parseInt(request.getParameter("lectureId"));
		System.out.println(lectureId);
		String studentId = request.getParameter("studentId");
		System.out.println(studentId);
		int courseMid = Integer.parseInt(request.getParameter("courseMid"));
		System.out.println(courseMid);
		int courseFinal = Integer.parseInt(request.getParameter("courseFinal"));
		System.out.println(courseFinal);
		String courseScore = request.getParameter("courseScore");
		System.out.println(courseScore);
		
		// 수정할 courseVO
		CourseService courseDao = new CourseServiceImpl();
		CourseVO vo = new CourseVO();
		vo.setLectureId(lectureId);
		vo.setStudentId(studentId);
		vo = courseDao.selectCourse(vo);
		
		// 수정
		vo.setCourseMid(courseMid);
		vo.setCourseFinal(courseFinal);
		vo.setCourseScore(courseScore);
		courseDao.updateCourse(vo);
		System.out.println("updated");
		
		return "ajax:updated";
	}

}

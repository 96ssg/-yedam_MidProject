package co.yedam.MidProject.course.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxCourseDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		
		// 삭제할 수강정보 선택
		// 현재 연도, 학기
		CourseService courseDao = new CourseServiceImpl();
		CourseVO vo = new CourseVO();
		vo.setLectureId(Integer.parseInt(request.getParameter("lectureId")));
		vo.setStudentId(user.getStudentId());
		vo.setCourseYear(CourseMethods.year);
		vo.setCourseSemester(CourseMethods.semester);
		
		courseDao.deleteCourse(vo);
		System.out.println("course deleted");
		
		return "ajax:deleted";
	}

}

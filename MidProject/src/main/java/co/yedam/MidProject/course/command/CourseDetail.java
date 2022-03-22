package co.yedam.MidProject.course.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;

public class CourseDetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		CourseService courseDao = new CourseServiceImpl();
		CourseVO vo = new CourseVO();
		vo.setLectureId(Integer.parseInt(request.getParameter("l_id")));
		vo.setStudentId(request.getParameter("s_id"));
		
		vo = courseDao.courseSelect(vo);
		
		request.setAttribute("course", vo);
		
		return "course/courseDetail";
	}

}

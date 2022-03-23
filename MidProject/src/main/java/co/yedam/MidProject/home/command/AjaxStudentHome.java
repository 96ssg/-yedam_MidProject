package co.yedam.MidProject.home.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class AjaxStudentHome implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		String loginId = request.getParameter("loginId");
		
		// 새로 로그인 한 경우
		if (loginId != null) {
			StudentService sDao = new StudentServiceImpl();
			user = new StudentVO();
			user.setStudentId(loginId);
			user = sDao.selectStudent(user);
			
			System.out.println("new login : student " + user.getStudentName());

			session.setAttribute("user", user);
			
			role = "student";
			session.setAttribute("role", role);
		}

		System.out.println("current user is student " + user.getStudentName());
		
		
		
		CourseService cDao = new CourseServiceImpl();
		List<CourseVO> myCourseList = cDao.myCourse(role, user.getStudentId());

		Gson gson = new Gson();
		String list = gson.toJson(myCourseList);
		
		
		return "ajax:" + list;
	}

}

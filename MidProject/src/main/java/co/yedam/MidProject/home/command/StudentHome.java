package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentHome implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		
		// 이미 로그인 중인 경우
		if (user == null) return "home/studentHome";
		
		// 새로 로그인 한 경우
		if (user != null) {
			user = new StudentVO();
			user.setS_Id(request.getParameter("userId"));

			StudentService sDao = new StudentServiceImpl();
			session.setAttribute("user", sDao.selectStudent(user));

			role = "student";
			session.setAttribute("role", role);
		}
		
		
		
//		CourseService cDao = new CourseServiceImpl();
//		List<CourseVO> myCourseList = cDao.myCourse(role, user.getS_Id());
//		
//		request.setAttribute("myCourseList", myCourseList);
		
		
		
		
		
		
		return "home/studentHome";
	}

}

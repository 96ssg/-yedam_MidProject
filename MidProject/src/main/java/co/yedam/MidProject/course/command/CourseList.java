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
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class CourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String userId = "";

		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> list = courseDao.selectCourseList();
		List<CourseVO> courses = new ArrayList<>();
		
		if (role.equals("student")) {
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
			
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			userId = user.getProfId();
			
			// 학과 소속 학생의 수강 기록만 전달
			for (CourseVO c : list) {
				String studentId = c.getStudentId();
				String deptId = studentId.substring(studentId.length()-6, studentId.length()-3);
				String profDeptId = user.getDeptId();
				System.out.println("deptId : " + deptId);
				System.out.println("profDeptId : " + profDeptId);
				
				if (profDeptId.equals(deptId)) courses.add(c);
			}

			request.setAttribute("courseList", courses);
			return "course/professorCourseList";
		}
		
		
	}

}

package co.yedam.MidProject.course.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class StudentCourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String studentId;
		String role = (String) session.getAttribute("role");
		
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			studentId = user.getStudentId();
		} else {
			// 교수가 학생의 성적을 조회할 때는 session이 아닌 받아온 값을 이용
			studentId = request.getParameter("studentId");
		}
		
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> courseList = courseDao.myCourse("student", studentId);

		// 전체 수강 목록
		request.setAttribute("courseList", courseList);
		
		// 학기 수강 목록
		List<CourseVO> semesterCourseList =  new CourseMethods().getSemesterCourseList(courseList);
		request.setAttribute("semesterCourseList", semesterCourseList);
		
		
		// 강의번호 => 강의명
		LectureService lectureDao = new LectureServiceImpl();
		List<LectureVO> lectures = lectureDao.selectLectureList();
		
		Gson gson = new Gson();
		String lectureList = gson.toJson(lectures);
		request.setAttribute("lectures", lectureList);
		
		

		return "course/studentCourseList";

	}

}

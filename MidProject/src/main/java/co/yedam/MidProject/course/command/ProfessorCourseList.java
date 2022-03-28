package co.yedam.MidProject.course.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.MidProject.charge.service.ChargeService;
import co.yedam.MidProject.charge.service.ChargeVO;
import co.yedam.MidProject.charge.serviceImpl.ChargeServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseMethods;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorVO;

public class ProfessorCourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");

		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> list = courseDao.selectCourseList();
		List<CourseVO> courses = new ArrayList<>();
		

		// 학과 소속 학생의 수강 기록만 전달
		for (CourseVO c : list) {
			// 학과 소속 확인
			String studentId = c.getStudentId();
			String studentDeptId = studentId.substring(studentId.length()-6, studentId.length()-3);
			if (!user.getDeptId().equals(studentDeptId)) continue;
			
			// 일반 교수는 지도학생의 이번 학기 성적만 조회 가능
			System.out.println("role : " + role);
			if (!role.equals("admin")) {
				// 수강연도, 학기 확인
				CourseMethods cm = new CourseMethods();
				if (c.getCourseYear() != cm.getNow("year") || c.getCourseSemester() != cm.getNow("semester")) continue;
				
				// 지도학생 여부 확인
				ChargeVO vo = new ChargeVO();
				vo.setStudentId(studentId);
				vo.setProfessorId(user.getProfId());
				
				ChargeService chargeDao = new ChargeServiceImpl();
				if (chargeDao.selectCharge(vo).size() == 0) {
					System.out.println("not my student");
					continue;
				}
			}

			courses.add(c);
		}
		
		request.setAttribute("courseList", courses);
		
		// 학과명 표시
		LectureService lectureDao = new LectureServiceImpl();
		List<LectureVO> lectures = lectureDao.selectLectureList();
		
		Gson gson = new Gson();
		String lectureList = gson.toJson(lectures);
		request.setAttribute("lectures", lectureList);
		

		return "course/professorCourseList";
		
	}

}

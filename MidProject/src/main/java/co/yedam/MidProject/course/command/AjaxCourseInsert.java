package co.yedam.MidProject.course.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.exceptions.PersistenceException;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxCourseInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		
		// 수강신청하려고 하는 강의
		LectureService lectureDao = new LectureServiceImpl();
		LectureVO lecture = new LectureVO();
		int lectureId = Integer.parseInt(request.getParameter("lectureId"));
		lecture.setLectureId(lectureId);
		lecture = lectureDao.selectLecture(lecture);
		
		// =================================================
		// 조건1 : 강의번호 오입력
		if (lecture == null) return "ajax:lectureId";
		
		
		// =================================================
		// 조건2 : 최대이수학점
		// 현재 수강신청 목록의 이수학점 총합 계산
		List<LectureVO> semesterLectureList = new CourseMethods().getSemesterLectureList(request);
		int creditSum = lecture.getLectureCredit();
		for (LectureVO l : semesterLectureList) creditSum = creditSum + l.getLectureCredit();
		
		// 최대이수학점 초과 시 수강신청 불가
		if (creditSum > user.getStudentScore()) return "ajax:credit";
		
		
		// =================================================
		// 조건3 : 수강정원
		// 현재 학기의 해당 강의 수강신청 인원 조회
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> courseList = courseDao.myCourse("admin", Integer.toString(lectureId));
		List<CourseVO> semesterCourseList = new ArrayList<CourseVO>();
		
		for (CourseVO c : courseList) {
			if (c.getCourseYear() != CourseMethods.year) continue;
			if (c.getCourseSemester() != CourseMethods.semester) continue;
			semesterCourseList.add(c);
		}
		
		// 정원초과 시 신청 불가
		if (lecture.getLectureCapacity() == semesterCourseList.size()) return "ajax:capacity";
		
		// =================================================
		// 조건4 : 이미 신청한 강의
		try {
			CourseVO course = new CourseVO();
			course.setLectureId(lectureId);
			course.setStudentId(user.getStudentId());
			course.setCourseYear(CourseMethods.year);
			course.setCourseSemester(CourseMethods.semester);
			
			courseDao.insertCourse(course);
		
		} catch (PersistenceException e) {
			e.printStackTrace();
			return "ajax:applied";
		}

		// =================================================
		// 수강신청 성공
		return "ajax:success";
	}

}

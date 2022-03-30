package co.yedam.MidProject.course.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class CourseMethods {
	
	static LocalDate now = LocalDate.now();
	public static int year = now.getYear();
	public static int semester = (now.getMonthValue() < 8) ? 1 : 2; 
	

	public List<CourseVO> getSemesterCourseList(List<CourseVO> courseList) {

		// 현재 학기의 수강목록
		List<CourseVO> semesterCourseList = new ArrayList<>();
		for (CourseVO c : courseList) {
			if (year != c.getCourseYear()) continue;
			if (semester != c.getCourseSemester()) continue;

			semesterCourseList.add(c);
		}
		
		return semesterCourseList;
	}
	
	public List<LectureVO> getSemesterLectureList(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		
		// 수강신청한 강의의 정보
		// 수강신청 정보
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> courseList = courseDao.myCourse(role, user.getStudentId());
		List<CourseVO> semesterCourseList = getSemesterCourseList(courseList);
		
		// 검색결과가 없을 경우
		if (semesterCourseList.size() == 0) return new ArrayList<LectureVO>();
		
		LectureService lectureDao = new LectureServiceImpl();
		List<LectureVO> lectureList = lectureDao.selectLectureList();
		List<LectureVO> semesterLectureList = new ArrayList<>();
		
		// 전체 강의 중 신청한 강의만 추출
		Label: for (LectureVO l : lectureList) {
			for (CourseVO c : semesterCourseList) {
				if (l.getLectureId() == c.getLectureId()) semesterLectureList.add(l);
				if (semesterLectureList.size() == semesterCourseList.size()) break Label;
			}
		}
		
		return semesterLectureList;
	}
}

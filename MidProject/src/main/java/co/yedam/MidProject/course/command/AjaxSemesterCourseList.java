package co.yedam.MidProject.course.command;

import java.util.ArrayList;
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
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxSemesterCourseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		Gson gson = new Gson();
		
		// 수강신청한 강의의 정보
		// 수강신청 정보
		CourseService courseDao = new CourseServiceImpl();
		List<CourseVO> courseList = courseDao.myCourse(role, user.getStudentId());
		List<CourseVO> semesterCourseList = new CourseMethods().getSemesterCourseList(courseList);
		
		// 검색결과가 없을 경우
		if (semesterCourseList.size() == 0) return "ajax:noResult";
		
		
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
		
		String data = gson.toJson(semesterLectureList);
		
		
		// 신청한 강의의 교수명 표시
		ProfessorService professorDao = new ProfessorServiceImpl();
		List<String> professorName = new ArrayList<>();
		ProfessorVO vo = new ProfessorVO();
		
		for (LectureVO l : semesterLectureList) {
			vo.setProfId(l.getProfessorId());
			vo = professorDao.selectProfessor(vo);
			professorName.add(vo.getProfName());
		}
		
		data = data + "~" + gson.toJson(professorName);
		
		
		return "ajax:" + data;
	}

}

package co.yedam.MidProject.course.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

public class AjaxApplicationSearch implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 강의 검색 결과
		LectureService lectureDAO = new LectureServiceImpl();
		String val = request.getParameter("val");
		List<LectureVO> lectureList = lectureDAO.selectLectureSearchList("강의명", val);
		
		// 검색결과가 없을 경우
		if (lectureList.size() == 0) return "ajax:noResult";
		
		Gson gson = new Gson();
		String data = gson.toJson(lectureList);
		
		// 검색한 강의의 교수명 표시
		ProfessorService professorDao = new ProfessorServiceImpl();
		List<String> profNames = new ArrayList<>();
		
		for (LectureVO l : lectureList) {
			ProfessorVO vo = new ProfessorVO();
			vo.setProfId(l.getProfessorId());
			String name  = professorDao.selectProfessor(vo).getProfName();
			profNames.add(name);
		}
		
		data = data + "~" + gson.toJson(profNames);
		
		// 검색한 과목의 현재 신청 인원 조회
		// 선택한 과목을 신청한 수강 목록 
		CourseService courseDao = new CourseServiceImpl();
		String lectureId = Integer.toString(lectureList.get(0).getLectureId());
		List<CourseVO> courseList = courseDao.myCourse("admin", lectureId);
		
		// 현재 학기의 수강 목록만 추출
		courseList = new CourseMethods().getSemesterCourseList(courseList);
		int currentApplicationNum = courseList.size();
		
		data = data + "~" + currentApplicationNum;
		
		return "ajax:" + data;
	}

}

package co.yedam.MidProject.course.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorVO;

public class CourseInsertList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		
		LectureService lectureDao = new LectureServiceImpl();
		List<LectureVO> lectureList = lectureDao.selectLectureSearchList("교수번호", user.getProfId());
		
		request.setAttribute("lectureList", lectureList);
		
		return "course/courseInsertList";
	}

}

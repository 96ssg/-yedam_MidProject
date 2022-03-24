package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorVO;

public class LectureList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO p = (ProfessorVO) session.getAttribute("user");
		System.out.println("lectureList : " + p.getProfName());
		
		// 강의 전체 리스트
		LectureService lectureDAO = new LectureServiceImpl();
		request.setAttribute("lectures", lectureDAO.selectLectureList());
		return "lecture/lectureList";
	}

}

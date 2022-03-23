package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class LectureList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강의 전체 리스트
		LectureService lectureDAO = new LectureServiceImpl();
		request.setAttribute("lectures", lectureDAO.selectLectureList());
		return "lecture/lectureList";
	}

}

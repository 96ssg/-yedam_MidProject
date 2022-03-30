package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class AjaxLectureDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			// 강의 리스트 삭제
			LectureService lectureDAO = new LectureServiceImpl();
			LectureVO vo = new LectureVO();
			vo.setLectureId(Integer.parseInt(request.getParameter("lectureId")));
			lectureDAO.deleteLecture(vo);

		return "ajax:deleted";
	}

}

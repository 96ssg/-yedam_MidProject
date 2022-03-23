package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class LectureDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LectureVO vo = new LectureVO();
		vo.setLectureId(Integer.parseInt(request.getParameter("lectureId")));

		LectureService lectureDAO = new LectureServiceImpl();
		lectureDAO.deleteLecture(vo);

		return "lectureList.do";
	}

}

package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class LectureUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강의 수정
		LectureService service = new LectureServiceImpl();
		LectureVO vo = new LectureVO();
		vo.setLectureId(Integer.parseInt(request.getParameter("lectureId")));
		vo.setLectureName(request.getParameter("lectureName"));
		vo.setLectureCredit(Integer.parseInt(request.getParameter("lectureCredit")));
		vo.setLectureDay(request.getParameter("lectureDay"));
		vo.setLectureStart(request.getParameter("lectureStart"));
		vo.setLectureEnd(request.getParameter("lectureEnd"));
		vo.setLectureRoom(request.getParameter("lectureRoom"));
		vo.setLectureCapacity(Integer.parseInt(request.getParameter("lectureCapacity")));
		service.updateLecture(vo);

		return "lectureList.do";
	}

}

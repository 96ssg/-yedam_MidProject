package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class LectureInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강의 등록
		LectureService lectureDAO = new LectureServiceImpl();
		LectureVO vo = new LectureVO();
		vo.setLectureName(request.getParameter("lectureName"));
		vo.setLectureCredit(Integer.parseInt(request.getParameter("lectureCredit")));
		vo.setLectureDay(request.getParameter("lectureDay"));
		vo.setLectureStart(request.getParameter("lectureStart"));
		vo.setLectureEnd(request.getParameter("lectureEnd"));
		vo.setLectureRoom(request.getParameter("lectureRoom"));
		vo.setProfessorId(request.getParameter("professorId"));
		vo.setLectureCapacity(Integer.parseInt(request.getParameter("lectureCapacity")));
		
		// 등록이 정상 실행되지 않으면 Error출력
		int r = lectureDAO.insertLecture(vo);
		if(r != 0) {
			return "lectureList.do";
		}else {
			request.setAttribute("message", "강의 등록이 정상 수행되지 못했습니다.");
			return "lecture/lectureError";
		}
	}

}

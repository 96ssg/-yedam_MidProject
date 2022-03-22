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
		vo.setLId(Integer.parseInt(request.getParameter("lId")));
		vo.setLRoom(request.getParameter("lRoom"));
		System.out.println("강의실수정:"+request.getParameter("lRoom"));
		service.updateLecture(vo);

		return "lectureList.do";
	}

}

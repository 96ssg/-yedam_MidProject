package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class LectureView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		

		LectureVO vo = new LectureVO();
		vo.setLId(Integer.parseInt(request.getParameter("lId")));

		LectureService service = new LectureServiceImpl();
		vo = service.selectLecture(vo);

		request.setAttribute("vo", vo);

		return "lecture/lectureView";
	}

}

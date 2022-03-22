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
		// TODO Auto-generated method stub
		LectureService lectureDAO = new LectureServiceImpl();
		LectureVO vo = new LectureVO();
		vo.setLName(request.getParameter("lName"));
		vo.setLCredit(Integer.parseInt(request.getParameter("lCredit")));
		vo.setLDay(request.getParameter("lDay"));
		vo.setLStart(request.getParameter("lStart"));
		vo.setLEnd(request.getParameter("lEnd"));
		vo.setLRoom(request.getParameter("lRoom"));
		vo.setPId(request.getParameter("pId"));
		vo.setLCapacity(Integer.parseInt(request.getParameter("lCapacity")));
		
		
		int r = lectureDAO.insertLecture(vo);
		if(r != 0) {
			return "lectureList.do";
		}else {
			request.setAttribute("message", "강의 등록이 정상 수행되지 못했습니다.");
			return "lecture/lectureError";
		}
	}

}

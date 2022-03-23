package co.yedam.MidProject.lecture.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class LectureView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		

		LectureVO lecture = new LectureVO();
		lecture.setLectureId(Integer.parseInt(request.getParameter("lectureId")));

		LectureService service = new LectureServiceImpl();
		lecture = service.selectLecture(lecture);
		
		
		ProfessorVO p = new ProfessorVO();
		p.setP_Id(request.getParameter("professorId"));
		
		ProfessorService pDao = new ProfessorServiceImpl();
		p = pDao.selectProfessor(p);
		
		request.setAttribute("vo", lecture);
		request.setAttribute("p", p);

		return "lecture/lectureView";
	}

}

package co.yedam.MidProject.lecture.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class LectureList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String deptId;
		
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			deptId = user.getDeptId();
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			deptId = user.getDeptId();
		}

		// 강의 리스트 출력시 접속계정의 해당학과 강의만 출력
		LectureService lectureDAO = new LectureServiceImpl();

		List<LectureVO> list = lectureDAO.selectLectureList();
		List<LectureVO> lectures = new ArrayList<>();
		
		for (LectureVO l : list) {
			if (l.getProfessorId().substring(0,3).equals(deptId)) {
				lectures.add(l);
			}
		}
		
		request.setAttribute("lectures", lectures);
		
		// LectureList.jsp에서 profName 추출
		ProfessorService pDao = new ProfessorServiceImpl();
		List<ProfessorVO> pList = pDao.selectProfessorList();
		
		Gson gson = new Gson();
		String professors = gson.toJson(pList); 
		request.setAttribute("professors", professors);
		
		
		return "lecture/lectureList";
	}

}

package co.yedam.MidProject.home.command;

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
import co.yedam.MidProject.professor.service.ProfessorVO;

public class AjaxProfessorInfo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		
		// 강의 정보
		LectureService lDao = new LectureServiceImpl();
		List<LectureVO> allLectures = lDao.selectLectureList();
		List<LectureVO> myLectureList = new ArrayList<>();
		
		for (LectureVO l : allLectures) {
			if (l.getProfessorId().equals(user.getProfId())) {
				myLectureList.add(l);
			}
		}
		
		
		
		
		
		
		
		
		Gson gson = new Gson();
		String list = gson.toJson(myLectureList);
		
		return "ajax:" + list;
		
	}

}

package co.yedam.MidProject.lecture.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class LectureInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강의 등록시 접속한 admin과 같은 학과 교수만 등록
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		
		ProfessorService pDao = new ProfessorServiceImpl();
		
		List<ProfessorVO> list = pDao.selectProfessorList();
		List<ProfessorVO> profs = new ArrayList<>();
		for (ProfessorVO p : list) {
			if (p.getDeptId().equals(user.getDeptId())) {
				profs.add(p);
			}
		}
		request.setAttribute("list", profs);

		return "lecture/lectureInsertForm";
	}

}

package co.yedam.MidProject.lecture.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class LectureInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		ProfessorVO user = new ProfessorVO();
		user.setProfId(request.getParameter("loginId"));
		ProfessorService pDao = new ProfessorServiceImpl();
		user = pDao.selectProfessor(user);
		System.out.println("유저:"+user.getProfName());
		List<ProfessorVO> list = pDao.selectProfessorList();
		List<ProfessorVO> profs = new ArrayList<>();
		for (ProfessorVO p : list) {
			System.out.println(p);
			if (p.getDeptId() == user.getDeptId()) {
				profs.add(p);
				System.out.println(p);
			}
			System.out.println("profs:"+profs.toString());
		}

		request.setAttribute("list", profs);

		return "lecture/lectureInsertForm";
	}

}

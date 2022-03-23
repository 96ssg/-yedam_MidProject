package co.yedam.MidProject.lecture.command;

import java.util.ArrayList;
import java.util.List;

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
		
//		HttpSession session = request.getSession();
//				
//		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
//		
//		
//		
//		ProfessorService pDao = new ProfessorServiceImpl();
//		List<ProfessorVO> list = pDao.selectProfessorList();
//		List<ProfessorVO> profs = new ArrayList<>();
//		System.out.println(user.getProfName());
//		for (ProfessorVO p : list) {
//			if(p.getDeptId() == "2") {
//				profs.add(p);
//			}
//		}
//		
//		System.out.println("profs"+profs);
//		System.out.println("session:"+user);
//		
//		request.setAttribute("list", profs);
		
		
		
		return "lecture/lectureInsertForm";
	}

}

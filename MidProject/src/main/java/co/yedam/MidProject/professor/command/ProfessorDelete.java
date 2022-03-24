package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		ProfessorVO professor = new ProfessorVO();
		professor.setProfId(request.getParameter("profId"));

		ProfessorService professorDao = new ProfessorServiceImpl();
		professorDao.deleteProfessor(professor);
		
		return "professorList.do";
		
		
	}

}

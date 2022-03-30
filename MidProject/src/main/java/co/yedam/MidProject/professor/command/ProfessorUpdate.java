package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		ProfessorService service = new ProfessorServiceImpl();
		ProfessorVO professor = new ProfessorVO();
		
		professor.setProfId(request.getParameter("profId"));
		professor.setProfName(request.getParameter("profName"));
		professor.setProfPassword(request.getParameter("profPassword"));
		professor.setProfPhone(request.getParameter("profPhone"));
		
		service.updateProfessor(professor);

		return "professorList.do";
	}

}

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
		professor.setProfBirth(request.getParameter("prof"));
		professor.setProfPhone(request.getParameter("profphone"));
		professor.setProfImg(request.getParameter("profimg"));
		professor.setDeptId(request.getParameter("profdid"));
		
		service.updateProfessor(professor);
		
		
		request.setAttribute("professors", professor);
		System.out.println(professor);
		return "professor/professor";
	}

}

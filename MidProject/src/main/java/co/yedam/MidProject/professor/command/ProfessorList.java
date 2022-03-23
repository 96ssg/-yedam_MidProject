package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//학생리스트.
		
		ProfessorService professorDao = new ProfessorServiceImpl();
		request.setAttribute("professors", professorDao.selectProfessorList());
		
		return "professor/professorList";
		
		
	}

}

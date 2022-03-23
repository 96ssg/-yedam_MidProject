package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class ProfessorUpdateForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// UpdateForm으로 넘어갔을 때 값을 넘겨줘야하니까 여기에 셋시켜둬야함.
		ProfessorService professorDao = new ProfessorServiceImpl();
		String professorId = request.getParameter("professorId");
		
		ProfessorVO professor = new ProfessorVO();
		professor.setProfId(professorId);
		professor = professorDao.selectProfessor(professor);
		
		request.setAttribute("professors", professor);
		System.out.println(professor.getProfName());

		return "professor/professorUpdateForm";
	}

}

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
		ProfessorVO professor = new ProfessorVO();
		professor.setP_Id(request.getParameter("id"));
		professor.setP_Password(request.getParameter("password"));
		professor.setP_Img(request.getParameter("img"));
		professor.setP_Birth(request.getParameter("birth"));
		professor.setP_Phone(request.getParameter("phone"));
		
		request.setAttribute("professor", professorDao.selectProfessor(professor));
		

		return "professor/professorUpdateForm";
	}

}

package co.yedam.MidProject.student.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;

public class StudentInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");

		ProfessorService professorDao = new ProfessorServiceImpl();
		List<ProfessorVO> professorList = professorDao.selectProfessorList();
		List<ProfessorVO> pList = new ArrayList<>();
		request.setAttribute("professorList", professorList);   

		for (ProfessorVO p : professorList ) {
		   if (p.getProfId().equals(user.getProfId())) {
			   pList.add(p);
		   };
		}
		request.setAttribute("pList", pList);
		System.out.println(professorList.toString());

		
		return "student/studentInsertForm";
	}

}

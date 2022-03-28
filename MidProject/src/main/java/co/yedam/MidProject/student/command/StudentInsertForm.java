package co.yedam.MidProject.student.command;

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

		for (int i=0; i<professorList.size(); i++) {
		   if (!professorList.get(i).getDeptId().equals(user.getDeptId())) professorList.remove(i);
		}

		request.setAttribute("professorList", professorList);   

		
		return "student/studentInsertForm";
	}

}

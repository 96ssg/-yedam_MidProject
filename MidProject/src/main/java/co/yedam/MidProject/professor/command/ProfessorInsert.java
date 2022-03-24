package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;


public class ProfessorInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("pId");
		String name = request.getParameter("pName");
		String pass = request.getParameter("pPassword");
		String phone = request.getParameter("pPhone");
		String birth = request.getParameter("pBirth");
		String img = request.getParameter("pimg");
		String did = request.getParameter("dId");
		
		ProfessorVO professor = new ProfessorVO();
		professor.setProfId(id);
		professor.setProfName(name);
		professor.setProfPassword(pass);
		professor.setProfPhone(phone);
		professor.setProfBirth(birth);
		professor.setProfImg(img);
		professor.setDeptId(did);
		
		ProfessorService service = new ProfessorServiceImpl();
		service.insertProfessor(professor);
		
		
		request.setAttribute("professors", professor);
		System.out.println(professor);
		return "professorList.do";
	}

}

package co.yedam.MidProject.professor.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class ProfessorList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String deptId;
		
		//user 세션 > 로그인 했을 때 값이 그대로 담겨 있는 상황임 
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			deptId = user.getDeptId();
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			deptId = user.getDeptId();
		}
		
		//교수리스트.
		
		ProfessorService professorDao = new ProfessorServiceImpl();
		List<ProfessorVO> list = professorDao.selectProfessorList();
		List<ProfessorVO> professors = new ArrayList<>();
		
		for (ProfessorVO p : list) {
			if (p.getDeptId().equals(deptId)) {
				professors.add(p);
			}
				
		}
		
		
		request.setAttribute("professors", professors);		
		return "professor/professorList";
		
		
	}

}

package co.yedam.MidProject.home.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.department.service.DepartmentService;
import co.yedam.MidProject.department.service.DeptVO;
import co.yedam.MidProject.department.serviceImpl.DepartmentServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class HomeCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");

		// 로그인 없는 접근 차단
		if (role == null) return "home/loginForm";
		
		String deptId;
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			deptId = user.getDeptId();
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			deptId = user.getDeptId();
		}
		
		DepartmentService deptDao = new DepartmentServiceImpl();
		DeptVO vo = new DeptVO();
		vo.setDeptId(deptId);
		vo = deptDao.findOne(vo);
		
		request.setAttribute("dept", vo);
		
		return "home/home";
		
	}

}
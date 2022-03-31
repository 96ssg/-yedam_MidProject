package co.yedam.MidProject.myPage.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.department.service.DepartmentService;
import co.yedam.MidProject.department.service.DeptVO;
import co.yedam.MidProject.department.serviceImpl.DepartmentServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.professor.serviceImpl.ProfessorServiceImpl;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class MyView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String deptId = "";
		StudentVO sUser ;
		ProfessorVO pUser;
		
		if (role.equals("student")) {
			StudentService studentDAO = new StudentServiceImpl();
			sUser = (StudentVO) session.getAttribute("user");
			sUser.getStudentId();
			sUser = studentDAO.selectStudent(sUser);
			request.setAttribute("user", sUser);
			deptId = sUser.getDeptId();
		} else {
			ProfessorService professorDAO = new ProfessorServiceImpl();
			pUser = (ProfessorVO) session.getAttribute("user");
			pUser.getProfId();
			pUser = professorDAO.selectProfessor(pUser);
			request.setAttribute("user", pUser);
			deptId = pUser.getDeptId();
		}

		DepartmentService deptDao = new DepartmentServiceImpl();
		DeptVO dept = new DeptVO();
		System.out.println(deptId);
		dept.setDeptId(deptId);
		dept = deptDao.findOne(dept);
		System.out.println(dept.getDeptName());
		request.setAttribute("dept", dept);
	
		return "myPage/myView";
	}

}

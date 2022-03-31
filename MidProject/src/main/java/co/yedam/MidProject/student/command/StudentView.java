package co.yedam.MidProject.student.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.department.service.DepartmentService;
import co.yedam.MidProject.department.service.DeptVO;
import co.yedam.MidProject.department.serviceImpl.DepartmentServiceImpl;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class StudentView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 학생 상세 정보
		StudentService studentDao = new StudentServiceImpl();
		String studentId = request.getParameter("studentId");
		String deptId = "";
		
		StudentVO student = new StudentVO();
		student.setStudentId(studentId);
		student = studentDao.selectStudent(student);
		
		request.setAttribute("students", student);
		deptId = student.getDeptId();
		
		//학과정보
		DepartmentService deptDao = new DepartmentServiceImpl();
		DeptVO dept = new DeptVO();
		System.out.println(deptId);
		dept.setDeptId(deptId);
		dept = deptDao.findOne(dept);
		System.out.println(dept.getDeptName());
		request.setAttribute("dept", dept);
		
		return "student/studentView";
	}

}

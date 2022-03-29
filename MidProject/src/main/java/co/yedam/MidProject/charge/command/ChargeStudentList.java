package co.yedam.MidProject.charge.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.charge.service.ChargeService;
import co.yedam.MidProject.charge.service.ChargeVO;
import co.yedam.MidProject.charge.serviceImpl.ChargeServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class ChargeStudentList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");

		StudentService studentDao = new StudentServiceImpl();
		List<StudentVO> studentList = new ArrayList<>();

		ChargeService chargeDao = new ChargeServiceImpl();
		ChargeVO vo = new ChargeVO();
		vo.setProfessorId(user.getProfId());
		vo.setStudentId("%%");
		List<ChargeVO> chargeList = chargeDao.selectCharge(vo);

		for (ChargeVO c : chargeList) {
			StudentVO student = new StudentVO();
			student.setStudentId(c.getStudentId());
			student = studentDao.selectStudent(student);
			studentList.add(student);
		}

		request.setAttribute("studentList", studentList);

		return "charge/chargeStudentList";
	}

}

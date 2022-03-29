package co.yedam.MidProject.student.command;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;
import co.yedam.MidProject.student.serviceImpl.StudentServiceImpl;

public class AjaxStudentSearch implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		
		StudentService studentDao = new StudentServiceImpl();
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		List<StudentVO> list = studentDao.selectStudentSearchList(key, val);
		// iterator() > setresult같이 배열값 걸러줄 때 쓰는거. 
		// new arrayList에 각각 값을 담아서 넘기는 것도 있음.
		Iterator<StudentVO> itr = list.iterator();
		while(itr.hasNext()) {
			if (!itr.next().getDeptId().equals(user.getDeptId())) itr.remove();
		}
		
		String data = "";
		try {
			data = new ObjectMapper().writeValueAsString(list);
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(key+"======" + val);
		
		return "ajax:"+data;

	}

}

package co.yedam.MidProject.myPage.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class CheckPassword implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		// 비밀번호 확인 결과
		String pwdCheck = null;
		// alert
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (role.equals("student")) {
			// 학생 비밀번호 확인
			StudentVO student = (StudentVO) session.getAttribute("user");
			if (student.getStudentPassword().equals(request.getParameter("password"))) {
				pwdCheck = student.getStudentPassword().equals(request.getParameter("password"))?"yes":"no";
				session.setAttribute("pwdCheck", pwdCheck);
				return "myPage/myView";
			} else {
				pwdCheck = !student.getStudentPassword().equals(request.getParameter("password"))?"no":"yes";
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');location.href = 'checkPasswordForm.do';</script>");
				out.close();
				return null;
			}
		} else {
			// 교수 비밀번호 확인
			ProfessorVO professor = (ProfessorVO) session.getAttribute("user");
			if (professor.getProfPassword().equals(request.getParameter("password"))) {
				pwdCheck = professor.getProfPassword().equals(request.getParameter("password"))?"yes" : "no";
				session.setAttribute("pwdCheck", pwdCheck);

				return "myPage/myView";
			} else {
				pwdCheck = !professor.getProfPassword().equals(request.getParameter("password"))?"no" : "yes";
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');location.href = 'checkPasswordForm.do';</script>");
				out.close();
				return null;

			}
		}

	}

}

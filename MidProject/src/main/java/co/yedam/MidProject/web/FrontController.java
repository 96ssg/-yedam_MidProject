package co.yedam.MidProject.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.board.command.AjaxBoardSearch;
import co.yedam.MidProject.board.command.BoardDelete;
import co.yedam.MidProject.board.command.BoardDetail;
import co.yedam.MidProject.board.command.BoardInsert;
import co.yedam.MidProject.board.command.BoardInsertForm;
import co.yedam.MidProject.board.command.BoardList;
import co.yedam.MidProject.board.command.BoardUpdate;
import co.yedam.MidProject.board.command.BoardUpdateForm;
import co.yedam.MidProject.charge.command.ChargeStudentList;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.command.AjaxApplicationSearch;
import co.yedam.MidProject.course.command.AjaxCourseDelete;
import co.yedam.MidProject.course.command.AjaxCourseInsert;
import co.yedam.MidProject.course.command.AjaxCourseUpdate;
import co.yedam.MidProject.course.command.AjaxSemesterCourseList;
import co.yedam.MidProject.course.command.CourseApplicationForm;
import co.yedam.MidProject.course.command.CourseDetail;
import co.yedam.MidProject.course.command.CourseInsertList;
import co.yedam.MidProject.course.command.StudentCourseList;
import co.yedam.MidProject.home.command.AjaxProfessorInfo;
import co.yedam.MidProject.home.command.AjaxStudentInfo;
import co.yedam.MidProject.home.command.HomeCommand;
import co.yedam.MidProject.home.command.Login;
import co.yedam.MidProject.home.command.LoginForm;
import co.yedam.MidProject.home.command.Logout;
import co.yedam.MidProject.lecture.command.AjaxLectureDelete;
import co.yedam.MidProject.lecture.command.AjaxLectureSearch;
import co.yedam.MidProject.lecture.command.LectureInsert;
import co.yedam.MidProject.lecture.command.LectureInsertForm;
import co.yedam.MidProject.lecture.command.LectureList;
import co.yedam.MidProject.lecture.command.LectureUpdate;
import co.yedam.MidProject.lecture.command.LectureUpdateForm;
import co.yedam.MidProject.lecture.command.LectureView;
import co.yedam.MidProject.myPage.common.AjaxChangePassword;
import co.yedam.MidProject.myPage.common.ChangePasswordForm;
import co.yedam.MidProject.myPage.common.ChangePhone;
import co.yedam.MidProject.myPage.common.CheckPassword;
import co.yedam.MidProject.myPage.common.CheckPasswordForm;
import co.yedam.MidProject.myPage.common.MyPage;
import co.yedam.MidProject.myPage.common.MyView;
import co.yedam.MidProject.professor.command.ProfessorDelete;
import co.yedam.MidProject.professor.command.ProfessorInsert;
import co.yedam.MidProject.professor.command.ProfessorInsertForm;
import co.yedam.MidProject.professor.command.ProfessorList;
import co.yedam.MidProject.professor.command.ProfessorUpdate;
import co.yedam.MidProject.professor.command.ProfessorUpdateForm;
import co.yedam.MidProject.student.command.AjaxStudentSearch;
import co.yedam.MidProject.student.command.StudentDelete;
import co.yedam.MidProject.student.command.StudentInsert;
import co.yedam.MidProject.student.command.StudentInsertForm;
import co.yedam.MidProject.student.command.StudentList;
import co.yedam.MidProject.student.command.StudentUpdate;
import co.yedam.MidProject.student.command.StudentUpdateForm;
import co.yedam.MidProject.student.command.StudentView;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<>();
	
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		
		// ??????
		//?????? ?????? ?????? ??????
		map.put("/studentList.do", new StudentList());
		map.put("/studentInsertForm.do", new StudentInsertForm());
		map.put("/studentUpdateForm.do", new StudentUpdateForm());
		map.put("/studentinsert.do", new StudentInsert());
		map.put("/studentUpdate.do", new StudentUpdate());
		map.put("/studentDelete.do", new StudentDelete());
		map.put("/ajaxStudentSearch.do", new AjaxStudentSearch());
		map.put("/studentView.do", new StudentView()); //??????????????? ?????? ????????????
		
		//?????? ?????? ?????? ??????
		map.put("/professorInsertForm.do", new ProfessorInsertForm());
		map.put("/professorList.do", new ProfessorList());
		map.put("/professorInsert.do", new ProfessorInsert());
		map.put("/professorUpdateForm.do", new ProfessorUpdateForm()); 
		map.put("/professorUpdate.do", new ProfessorUpdate());
		map.put("/professorDelete.do", new ProfessorDelete());
		
		// ??????
		map.put("/lectureList.do", new LectureList()); //????????????
		map.put("/ajaxLectureSearch.do", new AjaxLectureSearch()); //?????? ??????
		map.put("/lectureInsertForm.do", new LectureInsertForm()); //?????? ????????? ??????
		map.put("/lectureInsert.do", new LectureInsert()); //?????? ??????
		map.put("/lectureUpdateForm.do", new LectureUpdateForm()); //?????? ????????? ??????
		map.put("/ajaxLectureDelete.do", new AjaxLectureDelete()); //?????? ??????
		map.put("/lectureView.do", new LectureView()); //?????? ????????????
		map.put("/lectureUpdate.do", new LectureUpdate()); //?????? ????????????
		map.put("/checkPassword.do", new CheckPassword()); // ????????????
		map.put("/myPage.do", new MyPage()); // ???????????????
		map.put("/changePasswordForm.do", new ChangePasswordForm()); // ???????????? ????????? ??????
		map.put("/ajaxChangePassword.do", new AjaxChangePassword()); // ???????????? ??????
		map.put("/checkPasswordForm.do", new CheckPasswordForm());//???????????? ????????? ??????
		map.put("/myView.do", new MyView()); //?????????
		map.put("/changePhone.do", new ChangePhone());  //???????????? ??????
		
		// ??????
		// home
		map.put("/loginForm.do", new LoginForm());					// ????????? ???
		map.put("/login.do", new Login());							// ?????????
		map.put("/logout.do", new Logout());						// ????????????
		map.put("/home.do", new HomeCommand());						// ??? ??????
		map.put("/studentInfo.do", new AjaxStudentInfo());			// ?????? ??? ?????? fetch
		map.put("/professorInfo.do", new AjaxProfessorInfo());		// ?????? ??? ?????? fetch
		map.put("/adminInfo.do", new AjaxProfessorInfo());			// ?????? ??? ?????? fetch
		
		
		// board
		map.put("/boardList.do", new BoardList());					// ????????????
		map.put("/boardDetail.do", new BoardDetail());				// ???????????? ?????? ?????????
		map.put("/ajaxBoardSearch.do", new AjaxBoardSearch());		// ????????? ??????
		map.put("/boardInsertForm.do", new BoardInsertForm());		// ???????????? ?????? ???
		map.put("/boardInsert.do", new BoardInsert());				// ???????????? ??????
		map.put("/boardUpdateForm.do", new BoardUpdateForm());		// ???????????? ?????? ???
		map.put("/boardUpdate.do", new BoardUpdate());				// ???????????? ??????
		map.put("/boardDelete.do", new BoardDelete());				// ???????????? ??????

		// charge
		map.put("/chargeStudentList.do", new ChargeStudentList());	// ???????????? ??????

		// course
		map.put("/studentCourseList.do", new StudentCourseList());				// ?????? ?????? ??????
		map.put("/courseInsertList.do", new CourseInsertList());				// ??? ?????? ??????
		map.put("/courseApplicationForm.do", new CourseApplicationForm());		// ???????????? ???
		map.put("/ajaxApplicationSearch.do", new AjaxApplicationSearch());		// ???????????? ??????, ????????????
		map.put("/ajaxSemesterCourseList.do", new AjaxSemesterCourseList());	// ???????????? ??????, ????????????
		map.put("/ajaxCourseInsert.do", new AjaxCourseInsert());				// ????????????
		map.put("/ajaxCourseDelete.do", new AjaxCourseDelete());				// ???????????? ??????
		map.put("/courseDetail.do", new CourseDetail());						// ???????????? ??????
		map.put("/ajaxCourseUpdate.do", new AjaxCourseUpdate());				// ?????? ??????
		
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = null;
		String viewPage = null;
		
		try {
			command = map.get(page);
			viewPage = command.execute(request, response);
			
			// view resolve
			if (!viewPage.endsWith(".do")) {
				if(viewPage.startsWith("ajax:")) {
					// ajax ??????
					response.setContentType("text/html; charset=UTF-8");
					response.getWriter().append(viewPage.substring(5));
					System.out.println("ajax successful\n");
					
				} else {
					viewPage = viewPage + ".tiles";
					System.out.println("move to : " + viewPage);
					System.out.println();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			if (command == null) viewPage = "home/404page.tiles";
			if (viewPage == null) viewPage = "home/500page.tiles";
			if (viewPage.startsWith("ajax:")) return;
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
		
	}
	

}

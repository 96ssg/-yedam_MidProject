package co.yedam.MidProject.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.*;
import javax.servlet.http.*;

import co.yedam.MidProject.board.command.*;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.command.*;
import co.yedam.MidProject.home.command.*;
import co.yedam.MidProject.lecture.command.*;
import co.yedam.MidProject.myPage.common.*;
import co.yedam.MidProject.professor.command.*;
import co.yedam.MidProject.student.command.*;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<>();
	
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		
		// 성환
		//학생 등록 수정 조회
		map.put("/studentList.do", new StudentList());
		map.put("/studentInsertForm.do", new StudentInsertForm());
		map.put("/studentUpdateForm.do", new StudentUpdateForm());

		//교수 등록 수정 조회
		map.put("/professorInsertForm.do", new ProfessorInsertForm());
		map.put("/professorList.do", new ProfessorList());
		map.put("/professorInsert.do", new ProfessorInsert());
		map.put("/professorUpdateForm.do", new ProfessorUpdateForm()); 
		map.put("/professorUpdate.do", new ProfessorUpdate());

		// 승교
		map.put("/lectureList.do", new LectureList()); //강의목록
		map.put("/ajaxLectureSearch.do", new AjaxLectureSearch()); //강의 검색
		map.put("/lectureInsertForm.do", new LectureInsertForm()); //강의 등록폼 호출
		map.put("/lectureInsert.do", new LectureInsert()); //강의 등록
		map.put("/lectureUpdateForm.do", new LectureUpdateForm()); //강의 수정폼 호출
		map.put("/lectureDelete.do", new LectureDelete()); //강의 삭제
		map.put("/lectureView.do", new LectureView()); //강의 상세정보
		map.put("/lectureUpdate.do", new LectureUpdate()); //강의 정보수정

		// 진환
		map.put("/checkpassword.do", new CheckPassword()); // 본인확인
		map.put("/ajaxCheckPassword.do", new AjaxCheckPassword()); // 본인확인 비밀번호 체크
		map.put("/myPage.do", new MyPage()); // 마이페이지
		map.put("/changePasswordForm.do", new ChangePasswordForm()); // 비밀번호 변경폼 호출
		map.put("/changePassword.do", new ChangePassword()); // 비밀번호 변경
		
		// 우준
		// home
		map.put("/loginForm.do", new LoginForm());					// 로그인 폼
		map.put("/login.do", new Login());							// 로그인
		map.put("/logout.do", new Logout());						// 로그아웃
		map.put("/studentHome.do", new StudentHome());				// 학생 홈
		map.put("/professorHome.do", new ProfessorHome());			// 교수 홈
		
		// board
		map.put("/boardList.do", new BoardList());					// 공지사항
		map.put("/boardDetail.do", new BoardDetail());				// 공지사항 상세 게시글
		map.put("/boardSearch.do", new AjaxBoardSearch());			// 게시글 검색
		map.put("/boardInsertForm.do", new BoardInsertForm());		// 공지사항 작성 폼
		map.put("/boardInsert.do", new BoardInsert());				// 공지사항 작성
		map.put("/boardUpdateForm.do", new BoardUpdateForm());		// 공지사항 수정 폼
		map.put("/boardUpdate.do", new BoardUpdate());				// 공지사항 수정
		map.put("/boardDelete.do", new BoardDelete());				// 공지사항 사제
		
		// course
		map.put("/courseList.do", new CourseList());				// 수강정보 목록
		map.put("/courseDetail.do", new CourseDetail());				// 수강정보 상세
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		
		Command command = map.get(page);
		String viewPage = command.execute(request, response);
		
		// view resolve
		if (!viewPage.endsWith(".do")) {
			if(viewPage.startsWith("ajax:")) {
				// ajax 처리
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
				//viewPage = "WEB-INF/views/" + viewPage + ".jsp";
				viewPage = viewPage + ".tiles";
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}

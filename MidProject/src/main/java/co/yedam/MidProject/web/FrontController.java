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
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.course.command.AjaxApplicationSearch;
import co.yedam.MidProject.course.command.AjaxCourseDelete;
import co.yedam.MidProject.course.command.AjaxCourseInsert;
import co.yedam.MidProject.course.command.AjaxCourseUpdate;
import co.yedam.MidProject.course.command.AjaxSemesterCourseList;
import co.yedam.MidProject.course.command.CourseApplicationForm;
import co.yedam.MidProject.course.command.CourseDetail;
import co.yedam.MidProject.course.command.CourseInsertList;
import co.yedam.MidProject.course.command.ProfessorCourseList;
import co.yedam.MidProject.course.command.StudentCourseList;
import co.yedam.MidProject.home.command.AjaxProfessorInfo;
import co.yedam.MidProject.home.command.AjaxStudentInfo;
import co.yedam.MidProject.home.command.HomeCommand;
import co.yedam.MidProject.home.command.Login;
import co.yedam.MidProject.home.command.LoginForm;
import co.yedam.MidProject.home.command.Logout;
import co.yedam.MidProject.lecture.command.AjaxLectureSearch;
import co.yedam.MidProject.lecture.command.LectureDelete;
import co.yedam.MidProject.lecture.command.LectureInsert;
import co.yedam.MidProject.lecture.command.LectureInsertForm;
import co.yedam.MidProject.lecture.command.LectureList;
import co.yedam.MidProject.lecture.command.LectureUpdate;
import co.yedam.MidProject.lecture.command.LectureUpdateForm;
import co.yedam.MidProject.lecture.command.LectureView;
import co.yedam.MidProject.myPage.common.AjaxChangePassword;
import co.yedam.MidProject.myPage.common.ChangePasswordForm;
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
import co.yedam.MidProject.student.command.StudentDelete;
import co.yedam.MidProject.student.command.StudentInsert;
import co.yedam.MidProject.student.command.StudentInsertForm;
import co.yedam.MidProject.student.command.StudentList;
import co.yedam.MidProject.student.command.StudentUpdate;
import co.yedam.MidProject.student.command.StudentUpdateForm;

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
		map.put("/studentinsert.do", new StudentInsert());
		map.put("/studentUpdate.do", new StudentUpdate());
		map.put("/studentDelete.do", new StudentDelete());
		//교수 등록 수정 조회
		map.put("/professorInsertForm.do", new ProfessorInsertForm());
		map.put("/professorList.do", new ProfessorList());
		map.put("/professorInsert.do", new ProfessorInsert());
		map.put("/professorUpdateForm.do", new ProfessorUpdateForm()); 
		map.put("/professorUpdate.do", new ProfessorUpdate());
		map.put("/professorDelete.do", new ProfessorDelete());
		
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
		map.put("/checkPassword.do", new CheckPassword()); // 본인확인
		map.put("/myPage.do", new MyPage()); // 마이페이지
		map.put("/changePasswordForm.do", new ChangePasswordForm()); // 비밀번호 변경폼 호출
		map.put("/ajaxChangePassword.do", new AjaxChangePassword()); // 비밀번호 변경
		map.put("/checkPasswordForm.do", new CheckPasswordForm());//비밀번호 확인폼 호출
		map.put("/myView.do", new MyView()); //내정보
		
		// 우준
		// home
		map.put("/loginForm.do", new LoginForm());					// 로그인 폼
		map.put("/login.do", new Login());							// 로그인
		map.put("/logout.do", new Logout());						// 로그아웃
		map.put("/home.do", new HomeCommand());						// 홈 화면
		map.put("/studentInfo.do", new AjaxStudentInfo());			// 학생 홈 정보 fetch
		map.put("/professorInfo.do", new AjaxProfessorInfo());		// 교수 홈 정보 fetch
		map.put("/adminInfo.do", new AjaxProfessorInfo());			// 교수 홈 정보 fetch
		
		
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
		map.put("/studentCourseList.do", new StudentCourseList());				// 학생 성적 조회
		map.put("/professorCourseList.do", new ProfessorCourseList());			// 학과 내 학생의 수강정보 목록
		map.put("/courseInsertList.do", new CourseInsertList());				// 내 강의 목록
		map.put("/courseApplicationForm.do", new CourseApplicationForm());		// 수강신청 폼
		map.put("/ajaxApplicationSearch.do", new AjaxApplicationSearch());		// 수강신청 강의, 교수정보
		map.put("/ajaxSemesterCourseList.do", new AjaxSemesterCourseList());	// 수강신청 강의, 교수정보
		map.put("/ajaxCourseInsert.do", new AjaxCourseInsert());				// 수강신청
		map.put("/ajaxCourseDelete.do", new AjaxCourseDelete());				// 수강신청 취소
		map.put("/courseDetail.do", new CourseDetail());						// 수강정보 상세
		map.put("/ajaxCourseUpdate.do", new AjaxCourseUpdate());				// 성적 입력
		
		
		
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
					// ajax 처리
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

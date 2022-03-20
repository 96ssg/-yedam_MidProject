package co.yedam.MidProject.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.home.command.HomeCommand;
import co.yedam.MidProject.lecture.command.AjaxLectureSearch;
import co.yedam.MidProject.lecture.command.LectureDelete;
import co.yedam.MidProject.lecture.command.LectureInsert;
import co.yedam.MidProject.lecture.command.LectureInsertForm;
import co.yedam.MidProject.lecture.command.LectureList;
import co.yedam.MidProject.lecture.command.LectureUpdateForm;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<>();
	
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		map.put("/home.do", new HomeCommand());						// 처음 들어오는 페이지
		
		// 성환
		
		
		// 승교
		map.put("/lectureList.do", new LectureList()); //강의목록
		map.put("/ajaxLectureSearch.do", new AjaxLectureSearch()); //강의 검색
		map.put("/lectureInsertForm.do", new LectureInsertForm()); //강의 등록폼 호출
		map.put("/lectureInsert.do", new LectureInsert()); //강의 등록
		map.put("/lectureUpdateForm.do", new LectureUpdateForm()); //강의 수정폼 호출
		map.put("/lectureDelete.do", new LectureDelete()); //강의 삭제
		// 진환
		
		
		// 우준
		
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
//				viewPage = "WEB-INF/views/" + viewPage + ".jsp";
				viewPage = viewPage + ".tiles";
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}

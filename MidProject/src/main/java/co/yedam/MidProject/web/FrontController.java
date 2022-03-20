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
import co.yedam.MidProject.home.command.HomeCommand;

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
		
		
		// 진환
		
		
		// 우준
		map.put("/boardList.do", new BoardList());					// 공지사항
		map.put("/boardDetail.do", new BoardDetail());				// 공지사항 상세 게시글
		map.put("/boardSearch.do", new AjaxBoardSearch());				// 게시글 검색
		map.put("/boardInsertForm.do", new BoardInsertForm());		// 공지사항 작성 폼
		map.put("/boardInsert.do", new BoardInsert());				// 공지사항 작성
		map.put("/boardUpdateForm.do", new BoardUpdateForm());		// 공지사항 수정 폼
		map.put("/boardUpdate.do", new BoardUpdate());				// 공지사항 수정
		map.put("/boardDelete.do", new BoardDelete());				// 공지사항 사제
		
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

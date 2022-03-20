package co.yedam.MidProject.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;

public class BoardUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardService boardDao = new BoardServiceImpl();
		
		BoardVO vo = new BoardVO();
		vo.setBoardId(Integer.parseInt(request.getParameter("boardId")));
		vo.setBoardWriter(request.getParameter("boardWriter"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContent(request.getParameter("boardContent"));
		
		boardDao.boardUpdate(vo);
		
		request.setAttribute("board", vo);
		
		return "board/boardDetail";
	}

}

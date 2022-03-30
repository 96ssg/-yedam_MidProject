package co.yedam.MidProject.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;

public class BoardInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		BoardService boardDao = new BoardServiceImpl();

		BoardVO vo = new BoardVO();
		vo.setBoardWriter(user.getProfId());
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContent(request.getParameter("boardContent"));

		boardDao.boardInsert(vo);
		List<BoardVO> list = boardDao.boardList();
		
		request.setAttribute("boardList", list);
		
		return "boardList.do";
	}

}

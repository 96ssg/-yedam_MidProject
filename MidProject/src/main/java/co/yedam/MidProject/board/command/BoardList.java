package co.yedam.MidProject.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.home.service.UserVO;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class BoardList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String role = (String) session.getAttribute("role");
		String userId = "";
		
		if (role.equals("student")) {
			StudentVO user = (StudentVO) session.getAttribute("user");
			userId = user.getStudentId();
		} else {
			ProfessorVO user = (ProfessorVO) session.getAttribute("user");
			userId = user.getProfId();
		}
		
		
		BoardService boardDao = new BoardServiceImpl();
		List<BoardVO> list = boardDao.boardList();
		List<BoardVO> boardList = new ArrayList<>();
		
//		for (BoardVO b : list) {
//			int = b.getBoardWriter();
//			String deptId = writerId.substring(writerId.length()-6, writerId.length()-3);
//		}
		
		
		
		
		request.setAttribute("boardList", list);
		
		return "board/boardList";
	}

}

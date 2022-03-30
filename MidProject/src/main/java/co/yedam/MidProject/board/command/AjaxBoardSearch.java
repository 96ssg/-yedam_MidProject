package co.yedam.MidProject.board.command;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.professor.service.ProfessorVO;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxBoardSearch implements Command {

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
		List<BoardVO> list = boardDao.boardSearchList(request.getParameter("key"), request.getParameter("val"));
		
		// 소속 학과 공지사항만 검색
		Iterator<BoardVO> itr = list.iterator();
		while (itr.hasNext()) {
			String writerId = itr.next().getBoardWriter();
			String deptId = writerId.substring(writerId.length()-6, writerId.length()-3);
			String userDeptId = userId.substring(userId.length()-6, userId.length()-3);
			if (!deptId.equals(userDeptId)) itr.remove();
		}
		
		
		String data = "";
		try {
			data = new ObjectMapper().writeValueAsString(list);	// json 객체로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return "ajax:" + data;
	}

}

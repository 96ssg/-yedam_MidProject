package co.yedam.MidProject.board.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;

public class AjaxBoardSearch implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		BoardService boardDao = new BoardServiceImpl();
		List<BoardVO> list = boardDao.boardSearchList(request.getParameter("key"), request.getParameter("val"));
		
		String data = "";
		try {
			data = new ObjectMapper().writeValueAsString(list);	// json 객체로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return "ajax:" + data;
	}

}

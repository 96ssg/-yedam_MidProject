package co.yedam.MidProject.board.service;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	List<BoardVO> boardSearchList(String key, String val);	// 검색 항목, 검색 내용
}

package co.yedam.MidProject.board.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	List<BoardVO> boardList();
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	
	// 매개변수가 2개 이상일 때
	// @Param("sth") String sth => 넘어온 sth 값을 String sth 에 담겠다
	List<BoardVO> boardSearchList(@Param("key") String key, @Param("val") String val);	// 검색 항목, 검색 내용
}

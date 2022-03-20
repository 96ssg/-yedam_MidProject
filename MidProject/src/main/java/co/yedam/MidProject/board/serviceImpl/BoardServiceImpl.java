package co.yedam.MidProject.board.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.board.service.BoardMapper;
import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.common.DataSource;

public class BoardServiceImpl implements BoardService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);

	@Override
	public List<BoardVO> boardList() {
		return map.boardList();
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		return map.boardDelete(vo);
	}

	@Override
	public List<BoardVO> boardSearchList(String key, String val) {
		return map.boardSearchList(key, val);
	}

}

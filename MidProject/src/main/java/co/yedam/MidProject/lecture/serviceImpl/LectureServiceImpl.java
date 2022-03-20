package co.yedam.MidProject.lecture.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.lecture.service.LectureMapper;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;

public class LectureServiceImpl implements LectureService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private LectureMapper map = sqlSession.getMapper(LectureMapper.class);
	
	@Override
	public List<LectureVO> selectLectureList() {
		// TODO Auto-generated method stub
		return map.selectLectureList();
	}

	@Override
	public LectureVO selectLecture(LectureVO vo) {
		// TODO Auto-generated method stub
		return map.selectLecture(vo);
	}

	@Override
	public int insertLecture(LectureVO vo) {
		// TODO Auto-generated method stub
		return map.insertLecture(vo);
	}

	@Override
	public int updateLecture(LectureVO vo) {
		// TODO Auto-generated method stub
		return map.updateLecture(vo);
	}

	@Override
	public int deleteLecture(LectureVO vo) {
		// TODO Auto-generated method stub
		return map.deleteLecture(vo);
	}

	@Override
	public List<LectureVO> selectLectureSearchList(String key, String val) {
		// TODO Auto-generated method stub
		return map.selectLectureSearchList(key, val);
	}

}

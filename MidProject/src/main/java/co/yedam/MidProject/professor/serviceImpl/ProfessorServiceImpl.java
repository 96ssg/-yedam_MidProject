package co.yedam.MidProject.professor.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.professor.service.ProfessorMapper;
import co.yedam.MidProject.professor.service.ProfessorService;
import co.yedam.MidProject.professor.service.ProfessorVO;


public class ProfessorServiceImpl implements ProfessorService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);//true안해주면 auto commit 안됨.
	private ProfessorMapper map = sqlSession.getMapper(ProfessorMapper.class);
	@Override
	public List<ProfessorVO> selectProfessorList() {
		// TODO Auto-generated method stub
		return map.selectProfessorList();
	}
	@Override
	public ProfessorVO selectProfessor(ProfessorVO vo) {
		// TODO Auto-generated method stub
		return map.selectProfessor(vo);
	}
	@Override
	public int insertProfessor(ProfessorVO vo) {
		// TODO Auto-generated method stub
		return map.insertProfessor(vo);
	}
	@Override
	public int updateProfessor(ProfessorVO vo) {
		// TODO Auto-generated method stub
		return map.updateProfessor(vo);
	}
	@Override
	public int deleteProfessor(ProfessorVO vo) {
		// TODO Auto-generated method stub
		return map.deleteProfessor(vo);
	}
	
	

}

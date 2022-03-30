package co.yedam.MidProject.department.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.department.service.DepartmentMapper;
import co.yedam.MidProject.department.service.DepartmentService;
import co.yedam.MidProject.department.service.DeptVO;

public class DepartmentServiceImpl implements DepartmentService {

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private DepartmentMapper map = sqlSession.getMapper(DepartmentMapper.class);
	
	@Override
	public List<DeptVO> findAll() {
		return map.findAll();
	}

	@Override
	public DeptVO findOne(DeptVO vo) {
		return map.findOne(vo);
	}
	
}

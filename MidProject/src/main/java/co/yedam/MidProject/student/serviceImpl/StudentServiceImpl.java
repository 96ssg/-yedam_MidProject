package co.yedam.MidProject.student.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.student.service.StudentMapper;
import co.yedam.MidProject.student.service.StudentService;
import co.yedam.MidProject.student.service.StudentVO;


public class StudentServiceImpl implements StudentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);//true안해주면 auto commit 안됨.
	private StudentMapper map = sqlSession.getMapper(StudentMapper.class);
	@Override
	public List<StudentVO> selectStudentList() {
		// TODO Auto-generated method stub
		return map.selectStudentList();
	}
	@Override
	public StudentVO selectStudent(StudentVO vo) {
		// TODO Auto-generated method stub
		return map.selectStudent(vo);
	}
	@Override
	public int insertStudent(StudentVO vo) {
		// TODO Auto-generated method stub
		return map.insertStudent(vo);
	}
	@Override
	public int updateStudent(StudentVO vo) {
		// TODO Auto-generated method stub
		return map.updateStudent(vo);
	}
	@Override
	public int deleteStudent(StudentVO vo) {
		// TODO Auto-generated method stub
		return map.deleteStudent(vo);
	}
	
	
	

}

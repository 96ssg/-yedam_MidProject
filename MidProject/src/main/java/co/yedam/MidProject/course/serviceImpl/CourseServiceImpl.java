package co.yedam.MidProject.course.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.common.DataSource;
import co.yedam.MidProject.course.service.CourseMapper;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;

public class CourseServiceImpl implements CourseService {

	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CourseMapper map = sqlSession.getMapper(CourseMapper.class);
	
	@Override
	public List<CourseVO> selectCourseList() {
		return map.selectCourseList();
	}

	@Override
	public CourseVO selectCourse(CourseVO vo) {
		return map.selectCourse(vo);
	}

	@Override
	public List<CourseVO> myCourse(String role, String id) {
		return map.myCourse(role, id);
	}

	@Override
	public int insertCourse(CourseVO vo) {
		return map.insertCourse(vo);
	}

	@Override
	public int updateCourse(CourseVO vo) {
		return map.updateCourse(vo);
	}

	@Override
	public int deleteCourse(CourseVO vo) {
		return map.deleteCourse(vo);
	}

}

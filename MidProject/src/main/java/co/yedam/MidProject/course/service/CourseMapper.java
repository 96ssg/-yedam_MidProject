package co.yedam.MidProject.course.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CourseMapper {

	List<CourseVO> courseSelectList();
	CourseVO courseSelect(CourseVO vo);
	List<CourseVO> myCourse(@Param("role") String role, @Param("userId") String userId);
	int courseInsert(CourseVO vo);
	int courseUpdate(CourseVO vo);
	int courseDelete(CourseVO vo);
	
}

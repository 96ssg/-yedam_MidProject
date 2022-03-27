package co.yedam.MidProject.course.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CourseService {

	List<CourseVO> selectCourseList();
	CourseVO selectCourse(CourseVO vo);
	List<CourseVO> myCourse(@Param("role") String role, @Param("id") String id);
	int insertCourse(CourseVO vo);
	int updateCourse(CourseVO vo);
	int deleteCourse(CourseVO vo);
}

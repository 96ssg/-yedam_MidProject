package co.yedam.MidProject.course.service;

import java.util.List;

public interface CourseService {

	List<CourseVO> courseSelectList();
	CourseVO courseSelect(CourseVO vo);
	int courseInsert(CourseVO vo);
	int courseUpdate(CourseVO vo);
	int courseDelete(CourseVO vo);
}

package co.yedam.MidProject.department.service;

import java.util.List;

public interface DepartmentMapper {
	
	List<DeptVO> findAll();
	DeptVO findOne(DeptVO vo);
	
}

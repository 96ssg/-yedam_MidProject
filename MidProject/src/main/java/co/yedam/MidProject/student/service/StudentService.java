package co.yedam.MidProject.student.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface StudentService {
	
	//기본구성
	List<StudentVO> selectStudentList(); // 전체조회
	StudentVO selectStudent(StudentVO vo); //단건조회 & 로그인 처리
	int insertStudent(StudentVO vo); // 등록
	int updateStudent(StudentVO vo); // 수정
	int deleteStudent(StudentVO vo); // 삭제
	
	
	List<StudentVO> selectStudentSearchList(@Param("key")String key, @Param("val") String val);
	/*
	 * boolean isIdCheck(String str); // 아이디 중복체크
	 */	
}

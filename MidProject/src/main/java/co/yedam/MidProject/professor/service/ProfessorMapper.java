package co.yedam.MidProject.professor.service;

import java.util.List;

public interface ProfessorMapper {
	
		//기본구성
		List<ProfessorVO> selectProfessorList(); // 전체조회
		ProfessorVO selectProfessor(ProfessorVO vo); //단건조회 & 로그인 처리
		int insertProfessor(ProfessorVO vo); // 등록
		int updateProfessor(ProfessorVO vo); // 수정
		int deleteProfessor(ProfessorVO vo); // 삭제
		

	//	boolean isIdCheck(String str); // 아이디 중복체크
	}


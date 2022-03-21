package co.yedam.MidProject.lecture.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


public interface LectureMapper {
	//기본구성
		List<LectureVO> selectLectureList(); // 전체조회
		LectureVO selectLecture(LectureVO vo); //단건조회
		int insertLecture(LectureVO vo); // 등록
		int updateLecture(LectureVO vo); // 수정
		int deleteLecture(LectureVO vo); // 삭제
		
	//Ajax Search
		List<LectureVO> selectLectureSearchList(@Param("key")String key, @Param("val") String val);
}

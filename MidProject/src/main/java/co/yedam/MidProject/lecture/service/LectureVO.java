package co.yedam.MidProject.lecture.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class LectureVO {
	private int lectureId;
	private String lectureName;
	private int lectureCredit;
	private String lectureDay;
	private String lectureStart;
	private String lectureEnd;
	private String lectureRoom;
	private String professorId;
	private int lectureCapacity;
}

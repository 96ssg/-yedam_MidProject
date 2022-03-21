package co.yedam.MidProject.lecture.service;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class LectureVO {
	private String lId;
	private String lName;
	private int lCredit;
	private String lDay;
	private String lStart;
	private String lEnd;
	private String lRoom;
	private String pId;
	private int lCapacity;
}

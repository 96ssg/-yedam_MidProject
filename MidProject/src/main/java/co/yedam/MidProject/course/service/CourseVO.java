package co.yedam.MidProject.course.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CourseVO {
	private int lectureId;
	private String studentId;
	private int courseYear;
	private int courseSemester;
	private int courseMid;
	private int courseFinal;
	private String courseScore;
}

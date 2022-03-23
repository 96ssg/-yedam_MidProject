package co.yedam.MidProject.student.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StudentVO {
	private String studentId;
	private String studentName;
	private String studentPassword;
	private String studentBirth;
	private int studentGrade;
	private int studentSemster;
	private String studentPhone;
	private String studentImg;
	private int studentScore;
	private String deptId;
}

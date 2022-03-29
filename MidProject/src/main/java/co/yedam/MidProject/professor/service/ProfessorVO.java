package co.yedam.MidProject.professor.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProfessorVO {
	private String profId;
	private String profName;
	private String profPassword;
	private String profBirth;
	private String profPhone;
	private String profImg;
	private String deptId;
	//전담 교수 관련 vo 하나 들어와야함.
}

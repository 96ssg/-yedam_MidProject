package co.yedam.MidProject.professor.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.MidProject.common.Command;

public class ProfessorInsertForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//교수 등록폼.	
		
		return "professor/professorInsertForm.tiles";
	}

}

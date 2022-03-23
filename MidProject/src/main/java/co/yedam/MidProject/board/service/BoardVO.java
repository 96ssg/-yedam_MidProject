package co.yedam.MidProject.board.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int boardId;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	
	// jackson annotation
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date boardDate;
	
	

}

package co.yedam.MidProject.lecture.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;

public class AjaxLectureSearch implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LectureService lectureDAO = new LectureServiceImpl();
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		List<LectureVO> list = lectureDAO.selectLectureSearchList(key, val) ;
		String data = null;
		try {
			data = new ObjectMapper().writeValueAsString(list);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "ajax:"+data;
	}

}

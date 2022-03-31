package co.yedam.MidProject.home.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import co.yedam.MidProject.board.service.BoardService;
import co.yedam.MidProject.board.service.BoardVO;
import co.yedam.MidProject.board.serviceImpl.BoardServiceImpl;
import co.yedam.MidProject.common.Command;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.professor.service.ProfessorVO;

public class AjaxProfessorInfo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ProfessorVO user = (ProfessorVO) session.getAttribute("user");
		Gson gson = new Gson();
		
		String data = "";
		
		// 강의 정보
		LectureService lDao = new LectureServiceImpl();
		List<LectureVO> allLectures = lDao.selectLectureList();
		List<LectureVO> myLectureList = new ArrayList<>();
		
		for (LectureVO l : allLectures) {
			if (l.getProfessorId().equals(user.getProfId())) {
				myLectureList.add(l);
			}
		}
		
		String lectures = gson.toJson(myLectureList);
		data = data + lectures;
		
		// 공지사항
		BoardService bDao = new BoardServiceImpl();
		List<BoardVO> boardList = bDao.boardList();
		List<BoardVO> boards = new ArrayList<>();
		
		int count = 0;
		for (BoardVO b : boardList) {
			String writerId= b.getBoardWriter();
			String deptId = writerId.substring(writerId.length()-6, writerId.length()-3);
			String userId = user.getProfId();
			String userDeptId = userId.substring(userId.length()-6, userId.length()-3);
			
			if (userDeptId.equals(deptId)) {
				boards.add(b);
				count++;
			}
			
			if (count == 5) break;
		}
		
		String notice = gson.toJson(boards);
		data = data + "^~" + notice;
		
		
		
		return "ajax:" + data;
		
	}

}

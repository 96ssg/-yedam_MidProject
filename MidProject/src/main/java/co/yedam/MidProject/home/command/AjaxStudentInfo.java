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
import co.yedam.MidProject.course.command.CourseMethods;
import co.yedam.MidProject.course.service.CourseService;
import co.yedam.MidProject.course.service.CourseVO;
import co.yedam.MidProject.course.serviceImpl.CourseServiceImpl;
import co.yedam.MidProject.lecture.service.LectureService;
import co.yedam.MidProject.lecture.service.LectureVO;
import co.yedam.MidProject.lecture.serviceImpl.LectureServiceImpl;
import co.yedam.MidProject.student.service.StudentVO;

public class AjaxStudentInfo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 로그인한 학생의 홈 정보

		HttpSession session = request.getSession();
		StudentVO user = (StudentVO) session.getAttribute("user");
		String role = (String) session.getAttribute("role");
		Gson gson = new Gson();
		
		String data = "";
		
		// 이번 학기수강 정보
		CourseService cDao = new CourseServiceImpl();
		List<CourseVO> myCourseList = cDao.myCourse(role, user.getStudentId());
		CourseMethods cm = new CourseMethods();
		myCourseList = cm.getSemesterCourseList(myCourseList);
		
		LectureService lDao = new LectureServiceImpl();
		List<LectureVO> allLectures = lDao.selectLectureList();
		List<LectureVO> myLectureList = new ArrayList<>();

		for (LectureVO l : allLectures) {
			for (CourseVO c : myCourseList) {
				if(c.getLectureId() == l.getLectureId()) myLectureList.add(l);
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
			String userDeptId = user.getDeptId();
			
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

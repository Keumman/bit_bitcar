package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDAO;
import service.UserService;
import service.UserServiceImpl;
import vo.UsersVO;

@WebServlet({ "/Login.do", "/logout.do" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
		}
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
	}//doGet

	//회원 가입 후 첫 로그인 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		
		System.out.println("Login.do 요청처리");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		UsersDAO dao = new UsersDAO();
		UserService service = new UserServiceImpl(dao);
		UsersVO loginCheck = service.login(id,pw);
		
		
		if(loginCheck.getId() == null ) {
			request.setAttribute("msg", "아이디와 비번을  확인 해 주세요 ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if (!(loginCheck.getId().equals(id) && loginCheck.getPw().equals(pw))) {
			request.setAttribute("msg", "비번을 확인 해 주세요 ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			session.setAttribute("loginUser", loginCheck);
			
		}
		
		//출력결과 => UsersVO [id=java06, pw=1234, name=김길동, phone=01012435812, role=user]
		System.out.println("loginCheck ==>" + loginCheck);
	   
		
	    request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}//doPost

}






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

@WebServlet("/DeleteUser.do")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("id");
		
		UsersDAO dao = new UsersDAO();
		UserService service = new UserServiceImpl(dao);
		
		service.deleteUser(user_id);
		
		HttpSession session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("main.jsp").forward(request, response);

		
		
		
		
		
		
	}


}

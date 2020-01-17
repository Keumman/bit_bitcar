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

@WebServlet("/UpdateUser.do")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8"); 
		request.setCharacterEncoding("utf-8");
		
		System.out.println("UpdateUser.do 요청 처리");
		
		
		
		//변경하고자 하는 비번이 들어오면 
		String updatePw = request.getParameter("pw2");
		String id = request.getParameter("id");
		
		UsersDAO dao = new UsersDAO();
		UserService service = new UserServiceImpl(dao);
		
		
		int updateUser = service.updateUser(updatePw, id);
		
		if(updateUser == 1) {
			//1이면 성공
			request.setAttribute("updateuser", updateUser);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			request.setAttribute("msg","패스워드를 확인해주세요");
			getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
			
		}
			
		System.out.println("updateUser ==>"+  updateUser);
		
	
	}//doPost();

}

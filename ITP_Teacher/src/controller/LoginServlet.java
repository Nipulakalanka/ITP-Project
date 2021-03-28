package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String UserId = request.getParameter("UserId");
		String Password = request.getParameter("Password");

		LoginDao daoD = new LoginDao();

		if (true) {
			HttpSession session = request.getSession();
			session.setAttribute("UserId", UserId);
			response.sendRedirect("TeacherDashboard.jsp");
		}

		else {
			response.sendRedirect("loginT.jsp");
		}

	}
	}




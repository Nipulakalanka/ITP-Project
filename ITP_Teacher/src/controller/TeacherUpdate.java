package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TeacherDao;
import model.Teacher;


/**
 * Servlet implementation class TeacherUpdate
 */
@WebServlet("/TeacherUpdate")
public class TeacherUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	HttpSession session5 = request.getSession();
    String UserId = (String) session5.getAttribute("UserId");	
	//String UserId = request.getParameter("UserId");
	String FirstName = request.getParameter("FirstName");
	String LastName = request.getParameter("LastName");
	String Gender= request.getParameter("Gender");
	String Address = request.getParameter("Address");
	String DOB = request.getParameter("DOB");
	String NIC = request.getParameter("NIC");
	String Email = request.getParameter("Email");
	String Telephone = request.getParameter("Telephone");
	String Password = request.getParameter("Password");
	
	
	
	boolean isTrue = false;
	
	try {
		isTrue = TeacherDao.updateprofile(UserId, FirstName, LastName, Gender, Address, DOB, NIC, Email, Telephone, Password);
	} catch (ClassNotFoundException | SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	
	if(isTrue == true) {
		
		try {
			Teacher teacherUpdate = TeacherDao.getTeacher(UserId);
		
		request.setAttribute("teacherUpdate", teacherUpdate);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("TeacherDashboard.jsp");
		dis.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	else {
			
		RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
		dis.forward(request, response);
	}
}

}

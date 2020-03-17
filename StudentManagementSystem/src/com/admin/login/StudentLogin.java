package com.admin.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student.Dao.StudentDao;

@WebServlet("/login")
public class StudentLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out =response.getWriter();
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");	
			boolean status = StudentDao.check(email,pass);
				if(status){
					HttpSession session = request.getSession();
					session.setAttribute("name", email);
					response.sendRedirect("welcome.jsp");
				}
				else
					{
						response.sendRedirect("index.jsp");
					}
	}
}
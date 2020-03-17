package com.admin.login;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student.Dao.AdminDao;
import com.student.Dao.StudentDao;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		String uname = request.getParameter("UserId");
		String pass = request.getParameter("pass");	
		System.out.println("1 userid: "+ uname+" password: "+pass);
		int status = AdminDao.check(uname,pass);
		if(status>0){
			HttpSession session = request.getSession();
			session.setAttribute("name", uname);
			response.sendRedirect("adminPannel.jsp");
		}
		else
		{
			
			response.sendRedirect("Adminlogin.jsp");
		}
	}

}
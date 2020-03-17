<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ page import="com.student.Dao.StudentDao, java.util.*,com.student.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Registration</title>
</head>
<body>

		<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		if(session.getAttribute("name")==null)
			response.sendRedirect("Adminlogin.jsp");
		%>
		
		<jsp:useBean id="show" scope="session" class="com.student.bean.StudentBean"/>
		<jsp:setProperty property="*" name="show"/>
		
		<h3>Manage Users</h3>
		<h4>Show All Students</h4>
		
		<% 
		List<StudentBean> list= StudentDao.getAllRecords();
		request.setAttribute("list", list);
		%>
		
		<table border="1" width="90%">
		<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>PassWord</th>
		<th>Gender</th>
		<th>DOB</th>
		<th>Country</th>
		<th>Update</th>
		<th>Delete</th>
		</tr>
	<% 	for(StudentBean stud:list){%>
		<tr><td><%out.print(stud.getId());%></td><td><%out.print(stud.getName());%></td><td><%=stud.getEmail()%></td>
		<td><%= stud.getPass()%></td><td><%= stud.getDOB()%></td><td><%= stud.getGender()%></td>
		<td><%= stud.getCountry()%></td>
		<td><a href="updateForm.jsp?id=<%out.print(stud.getId());%>">Update</a></td> 
		<td><a href="delete.jsp?id=<%out.print(stud.getId());%>">Delete</a></td>
		</tr>
		<%} %>
		</table>
		
</body>
</html>
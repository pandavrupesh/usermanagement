<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ page import="com.student.Dao.StudentDao, java.util.*,com.student.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Admin Pannel</title>
</head>
<body>
		
		<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		if(session.getAttribute("name")==null)
			response.sendRedirect("Adminlogin.jsp");
		%>
		<nav class="navbar navbar-expand-md navbar-light bg-info ">
		<a class="navbar-brand text-white" href="#"><h6>ADMIN DASHBOARD</h6></a>
		<span class="flat-right"></span>
		<a class=" btn btn-light btn-sm " href="logout.jsp">Logout</a>
		</nav>
		
		<div class="container-fliud">
		<div class="row">
		<div class="col-2 text-light bg-secondary">
		<div>
		<a  href="adminPannel.jsp" class="text-light p-5 ">
    	<img src="https://img.icons8.com/bubbles/100/000000/admin-settings-male.png"/><span class="text-center p-5 m-3">${name}</span>
  		</a>
  		<ul >
  		<li class=" m-1 pt-2 "><a href="changepass"class="text-decoration-none text-light">Change Password</a></li>
  		<li class=" m-1 pt-2"><a href="adminPannel.jsp"class="text-decoration-none text-light ">Manage Student</a></li>
  		</ul>
		</div>
		</div>
		<div class="col-10 bg-light ">
		<jsp:useBean id="show" scope="session" class="com.student.bean.StudentBean"/>
		<jsp:setProperty property="*" name="show"/>
		
		<h4 class="font-weight-light mt-2">Manage Users</h4>
		<div class="bg-white mt-3">
		<h5 class="font-weight-light p-2">Show All Students</h5>
	
		<% 
		List<StudentBean> list= StudentDao.getAllRecords();
		request.setAttribute("list", list);
		%>
		
		<table class="table table-hover table-bordered table-sm">
		 <thead>
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Gender</th>
      <th scope="col">DOB</th>
      <th scope="col">Country</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>

	<% 	for(StudentBean stud:list){%>
		<tr>
		<td><%out.print(stud.getId());%></td><td><%out.print(stud.getName());%></td><td><%=stud.getEmail()%></td>
		<td><%= stud.getPass()%></td><td><%= stud.getDOB()%></td><td><%= stud.getGender()%></td>
		<td><%= stud.getCountry()%></td>
		<td><a href="updateForm.jsp?id=<%out.print(stud.getId());%>"><i class='fas fa-edit'></i></a></td> 
		<td><a href="delete.jsp?id=<%out.print(stud.getId());%>"><i class="material-icons">delete_sweep</i></a></td>
		</tr>
		<%} %>
		</table>
		</div>
		</div>
		</div>
		</div>
		
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
</body>
</html>
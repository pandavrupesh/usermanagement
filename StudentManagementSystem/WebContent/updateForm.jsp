<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.student.Dao.StudentDao, java.util.*,com.student.bean.*"%>
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
<title>edit Student</title>
</head>
<body>
	
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		if(session.getAttribute("name")==null)
			response.sendRedirect("Adminlogin.jsp");
		%>

	<%
		String Id = request.getParameter("id");
		StudentBean up = StudentDao.getRecordById(Integer.parseInt(Id));
		System.out.println(up);
	%>

	<nav class="navbar navbar-expand-md navbar-light bg-info "> <a
		class="navbar-brand text-white" href="#"><h6>ADMIN DASHBOARD</h6></a>
	<span class="flat-right"></span> <a class=" btn btn-light btn-sm "
		href="adminlogout">Logout</a> </nav>

	<div class="container-fliud">
		<div class="row">
			<div class="col-2 text-light bg-secondary">
				<div>
					<a target="_blank" href="#" class="text-light p-5 m-5 "> <img
						class="rounded-circle" src="admin_icon.jpg"><span
						class="text-center p-5 m-3">Admin</span>
					</a>
					<ul>
						<li class=" m-1 pt-2 "><a href="changepass"
							class="text-decoration-none text-light">Change Password</a></li>
						<li class=" m-1 pt-2"><a href="#"
							class="text-decoration-none text-light ">Manage Student</a></li>
					</ul>
				</div>
			</div>
			<div class="col-10">
				<h3>Edit Student</h3>
				<form action="update.jsp" method="post">
					<div class="form-group">
						<label for="name">Name</label> <input class="form-control"
							type="text" id="name" name="name" value="<%=up.getName()%>">
					</div>
					<div class="container">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="email" name="email"
										value="<%=up.getEmail()%>">
								</div>
								<div class="form-group">
									<label for="dob">Date Of Birth</label> <input type="date"
										class="form-control" id="dob" name="DOB"
										value="<%=up.getDOB()%>">
								</div>
								<div class="form-group">
									<label for="country">Country</label> <select name="country">
										<option>India</option>
										<option>US</option>
										<option>UK</option>
										<option>Japan</option>
									</select>
								</div>
							</div>

							<div class="col-6">
								<div class="form-group">
									<label for="pass">PassWord</label> <input type="password"
										class="form-control" id="pass" name="pass"
										value="<%=up.getPass()%>">
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" value="Add Student"
							class="btn btn-outline-secondary btn-center">
					</div>
				</form>


				<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
					integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
					crossorigin="anonymous"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
					integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
					crossorigin="anonymous"></script>
</body>
</html>
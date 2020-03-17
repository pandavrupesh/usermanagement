<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="bootstrap\bootstrap-4.2.1-dist\css\bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student login</title>
</head>
<body class="bg-light">
	<div class="container-fliud text-center mt-3 ">
		<h4>Student Management System</h4>
		<hr>
		</div>
	<div class="container mt-5">
		<div class="row">
		
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<h5 class="card-header text-center ">Student login</h5>
					<div class="card-body">
						<form action="login" method="post">

							<input type="email" class="form-control form-control-sm mt-2"
								id="email" name="email" placeholder="Enter your email">
							<input type="password" id="pass" name="pass"
								class="form-control form-control-sm mt-2"
								placeholder="Enter your Password"> <input type="submit"
								value="Login" class="btn btn-primary btn-sm btn-block mt-3 ">

						</form>
						</div>
						</div>
							<p class="text-center">not register <a href="Registration.jsp">click here</a>
							</p>					
				</div>
			</div>
		</div>


	<script src="bootstrap\bootstrap-4.2.1-dist\js\jquery.js"></script>
	<script src="bootstrap\bootstrap-4.2.1-dist\js\bootstrap.min.js"></script>
</body>
</html>
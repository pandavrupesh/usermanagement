<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<style>
</style>
<title>Student Registration</title>
</head>
<body>


	<div class="container bg-light ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card b-2 p-2 ">
					<h5 class="card-header text-center">Add Student</h5>
					<div class="card-body "></div>
					
					<form action="addStudent.jsp" method="post">
						<div class="form-group">
							<label for="name">Name</label> <input class="form-control"
								type="text" id="name" name="name" placeholder="Enter Youe name">
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" name="email"
								placeholder="Enter username as a email">
						</div>
						<div class="form-group">
							<label for="pass">PassWord</label> <input type="password"
								class="form-control" id="pass" name="pass"
								placeholder="Enter password">
						</div>
						<div class="form-group">
							<label for="confirmpass">Confirm PassWord</label> <input
								type="password" class="form-control" id="confirmpass"
								name="confirmpass" placeholder="Enter confirm password">
						</div>
						<div class="form-group">
							<label for="dob">Date Of Birth</label> <input type="date"
								class="form-control" id="dob" name="DOB">
						</div>
						<legend class="form-label">Gender</legend>
						<div class="form-check-inline">
							<input class="form-check-input" type="radio" id="sex1"
								name="gender" value="male" checked> <label for="sex"
								class="form-check-label">Male</label>
						</div>
						<div class="form-check-inline">
							<input class="form-check-input" type="radio" id="sex2"
								name="gender" value="Female"> <label
								class="form-check-label" for="sex2">Female</label>
						</div>
						<div class="form-group">
							<label for="country">Country</label> <select name="country">
								<option>India</option>
								<option>US</option>
								<option>UK</option>
								<option>Japan</option>
							</select>
						</div>
						<input type="submit" value="Add Student"
							class="btn btn-outline-secondary btn-block">
					</form>
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
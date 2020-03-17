<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.student.Dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student</title>
</head>
<body>
	<jsp:useBean id="del" class="com.student.bean.StudentBean"
		scope="session" />
	<jsp:setProperty property="*" name="del" />

	<%
		int status = StudentDao.delete(del);
		if (status > 0) {
	%>
	window.alert("data delete successful");
	<jsp:include page="adminPannel.jsp" />
	<%
		} 
		else {
	%>
	window.alert("data not delete successful");
	<jsp:include page="adminPannel.jsp" />
	<%
		}
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.student.Dao.StudentDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>insert</title>
</head>
<body>
		<jsp:useBean id="u" class="com.student.bean.StudentBean" scope="session"/>
		<jsp:setProperty property="*" name="u"/>
		<jsp:setProperty property="name" name="u" value="${param.name}"/>
		
		<%
		int status =StudentDao.save(u);
		if(status>0){
			%><jsp:getProperty property="name" name="u"/>  <%out.print("sueccessful insert data"); %>
			<br>
			<a href="login.jsp">login page</a>
		<% }
		else
		{
			out.print("You are not insert data");  
			%>
			<br>
			<a href="Registration.jsp">Registration page</a>
			<% 
		}
		%>
</body>
</html>
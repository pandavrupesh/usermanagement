<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.student.Dao.StudentDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>
		<jsp:useBean id="up" class="com.student.bean.StudentBean" scope="session"/>
		<jsp:setProperty property="*" name="up"/>
		
		<%
		int status = StudentDao.update(up);
		if(status>0){
			out.print("Data Is Update Successfully...");
		response.sendRedirect("adminPannel.jsp");
		}
		else
		out.print("Data is Not Update...");
		response.sendRedirect("adminPannel.jsp");
		
		
		 %>
</body>
</html>
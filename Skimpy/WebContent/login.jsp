<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="BusinessLogic.*" %>
<%@page import="interfc.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.script.*"%>
<%@page import="java.io.IOException"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Please Log in: </h1>
<form action="MealPlan.jsp" method ="post">
	<table>
		<tr>
			<td> User name: </td>
			<td>
				<input type="text" name="email">
			</td>
		</tr>
		<tr>
			<td> Password: </td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
	</table>
	
	<p> 
			<input type="submit" value="Log In">
		</p>	
</form>
<% Person user = new Person("Skimpy", "skimpy@skimpy.com", "password", 18, 30, 70, 'M', 0);
user.setName(request.getParameter("name"));
user.setAge(Integer.valueOf(request.getParameter("age")));
user.setHeight(Double.parseDouble(request.getParameter("height")));
user.setWeight(Double.parseDouble(request.getParameter("weight")));
user.setGender(request.getParameter("gender").toUpperCase().charAt(0));
user.setExercise(Integer.valueOf(request.getParameter("exercise")));
user.setPassword(request.getParameter("password"));
user.setEmail(request.getParameter("emailaddress"));
DBConnect connect = new DBConnect();
connect.pushUser(user);%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.EmployeBean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>In validate</title>
</head>
<jsp:useBean id="bookshop" class="bean.EmployeBean" scope="session"/>
<jsp:setProperty property="*" name="bookshop"/>
<body>
<jsp:forward page="${sessionScope.bookshop.validate()}.jsp"></jsp:forward>
</body>
</html>
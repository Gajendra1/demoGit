<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h3>${sessionScope.bookshop.message}</h3>
<form action="validate.jsp">
<table>
<tr>
<td>
Enter Email:<input type="text" name="email">
Enter password:<input type="password" name="password">
<input type="submit" value="Login">
<input type="submit" value="Register" formaction="register.jsp">
</td>
</tr>
</table>
</form>
</body>
</html>
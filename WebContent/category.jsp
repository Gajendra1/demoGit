<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>In Category</title>
</head>
<body>
<h4>Hello,${sessionScope.bookshop.email}</h4>
<h3>${sessionScope.bookshop.message}</h3>
<form action="bookdetails.jsp">
<table>
<tr>
<td><h3>Choose Category</h3></td>
<td><select name="bookcategory">
<c:forEach var="bk" items="${sessionScope.bookshop.category1()}">
<option value="${bk}">${bk}
</option>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td><input type="submit" value="Choose">
<td><input type="submit" value="Show Cart" formaction="showcart.jsp">
</td>
</tr>
</table>
</form>
</body>
</html>
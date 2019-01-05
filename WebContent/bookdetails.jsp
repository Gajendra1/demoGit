<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IN book details page</title>
</head>
<jsp:setProperty property="*" name="bookshop"/>
<body>
<h2>Category Details </h2>
<h3>Book under category:-<b>${param.bookcategory}</b></h3>
<form action="addtocart.jsp">
<table>
<c:forEach var="s" items="${sessionScope.bookshop.categoryBookDetails()}">
<tr>
<td><input type="checkbox" name="books" value="${s.id}"></td>
<td>${s.title}</td>
<td>${s.author}</td>
<td>${s.price}</td>
</tr>
</c:forEach>
<tr>
<td>
<input type="submit" value="ADD To Cart">
</td>
</tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.html">HOME</a> 
<%@page import="com.app.bean.UserDao,com.app.bean.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<h1>Product List</h1> 
  
<%  
List<Book> list=UserDao.viewBook();  
request.setAttribute("list",list); 
%>  
   
 <table width="50%" border="1"> 
 
<tr>
<th>id</th>
<th>Book NAME</th>
<th>Author</th>
<th>Price</th>
<th>Genre</th>
<th>Quantity</th>
</tr> 
<c:forEach items="${list}" var="u">  
<form action="Cart?id=${u.getBook_id()}" method="post"> 
<tr><td >${u.getBook_id()}</td><td>${u.getBook_name()}</td><td>${u.getAuthor()}</td>  

<td>${u.getPrice()}</td>
<td>${u.getGenre()}</td>
<td><input type="text"  name="quantity"  ></td>

 <td><input type="submit" value="addtocart"></td> 
</tr>
</form>
</c:forEach>

</table> 

<a href="index.jsp">Logout</a>
</body>
</html>
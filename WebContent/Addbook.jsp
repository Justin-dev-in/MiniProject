<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="succBook.jsp" method="post">
<table>
<tr>
<td>Book id:<input type="number" name="book_id"></td>
<td>Book name:<input type="text" name="book_name"></td>
<td>Author:<input type="text" name="author"></td>
<td>price:<input type="number" name="price"></td>
<td>genre:<input type="text" name="genre"></td>
<td><input type="submit" value="ADDBOOK">
</tr>
</table>
</form>



</body>
</html>
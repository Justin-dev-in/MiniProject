<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="viewBook.jsp">view</a>
<a href="Admin.jsp">Admin login</a>
<form action="Login" method="post">

<table border="1">
<tr>
<td>username:
<input type="number" name="mobile">
</td>
</tr>
<tr>
<td>
password:
<input type="password" name="password"></td>

</tr>
<tr>
<td><input type="submit" value="login"></td></tr>
<td><a href="userRegistration.jsp"><input type="button" value="Register"></a></td>
</table>
</form>
</body>
</html>
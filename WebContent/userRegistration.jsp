<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1 " width="80%" height="80%" align="center" cellspacing="2" cellpadding="2">
<form action="successRegistation.jsp">
<tbody><tr>
<td>username    
</td>
<td>
<input type="text" name="name">
</td>
</tr>
<tr>
<td>Password     
</td>
<td>
<input type="password" name="password">
</td>
</tr>
<tr>
<td>Re-Password   
</td>
<td>
<input type="Password" name="password">     
</td>
</tr>
<tr>
<td>Email   
</td>
<td>
<input type="email" name="email">
</td>
</tr>
<tr>
<td>Mobile	  
</td>
<td>
<input type="number" name="mobile">
</td>
</tr>
<tr>
<td>DOB	  
</td>
<td>
<input type="date" name="dob">
</td>
</tr>
<tr>
<td>Address		  
</td>
<td>
<textarea name="address" rows="2" cols="15"></textarea>
</td>
</tr>
<tr>
<td>City	  
</td>
<td>
<select name="city">
<option name="city">Meerut</option>
<option name="city">Pune</option>
<option selected="" name="city">Delhi</option>
<option name="city">Himachal Pradesh</option>
<option name="city">Nagpur</option>
<option name="city">Gujarat</option>
<option name="city">Goa</option>
</select>
</td>
</tr>
<tr>
<td>Pincode	  
</td>
<td>
<input type="text" name="pincode">
</td>
</tr>
<tr>
<td>Gender	  
</td>
<td nowrap="">
<input type="radio" name="rdogender">Male
<input type="radio" name="rdogender" checked="">Female
<input type="radio" name="rdogender">Transgender
</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="submit">
</td>
</tr>
</tbody></table>
</form>
</div>

</body>
</html>
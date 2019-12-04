<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
  
<head>  
    <title>Bootstrap Example</title>  
    

</head>  
  
<body>  
<%@page import="com.app.bean.*" %>
		 <form action="successOrder.jsp">  
		<%
		  String bid=(String)session.getAttribute("id");
		  Book b=UserDao.getBookById(Integer.parseInt(bid));
		   
		  out.print(b.getBook_id());
		  String qty=(String)session.getAttribute("quantity");
		  int quantity=Integer.parseInt(qty);
		  %>
		  
           <table>
           <tr>
            <input type="hidden" name="book_id" value="<%=b.getBook_id()%>">
           <td>name</td>
           <td><input type="text" name="cust_name"></td>
           <td>phone</td>
           <td><input type="number" name="phone_number" ></td>
            <input type="hidden" name="quantity" value="<%=quantity%>" >
		  <td><input type="submit" value="Confirm"></td>
		</tr>
		</table>
		</form>
		<%-- <%
		
		String name=request.getParameter("uname");
		session.setAttribute("name", name);  %>
	 --%>
	
			
</body>  
  
</html>  
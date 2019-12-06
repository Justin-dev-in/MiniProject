<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<title>Book Store</title>
<link rel="icon" href="image/fa.png" type="image/fa.png">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 	<link rel="stylesheet" href="nav.css">
  <style>
  
  .bag
  {
  width: 70px;
    height: 70px;
    
    overflow: hidden;
    margin-top: -6px;
    align: right;
  }
  
  
  .logo-image{
    width: 70px;
    height: 70px;
    
    overflow: hidden;
    margin-top: -6px;
    align: right;
}
img {

  padding: 12px;
  spacing:8px;
  width: 250px;
  height:250px;
}

.card {
  background: transparent;
border:none;
  max-width: 70%;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}

body
{
 background-image:url("image/flow.jpg");
	background-repeat:no-repeat;
	background-color:#cccccc;
	background-size:cover;
}

table
{
opacity: 0.97;

}

</style>
</head>
<body>

 <script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}


</script>

 
<div id="navbar" class="navbar  fixed-top">
<div class="logo-image">
      <img src="image/fa.png" class="img-fluid">
      </div>
  	<a class="menulink" href="newIndex.jsp">HOME</a>
	<a class="menulink" href="viewBook.jsp"> PRODUCT</a>
	<a class="menulink" href="Logout">LOGOUT</a>
	<a class="menulink" href="feedback.jsp"> FEEDBACK</a>
	
	<form class="offset-2 form-inline my-2 my-lg-3">
     <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-5 my-sm-0" type="submit">Search</button>&emsp;
      
    </form>
   <div class="bag">
      <img src="image/bag.jpg" class="img-fluid" id="bag">
      </div>
</div>



<%@page import="com.app.bean.*,java.util.*" %>
<jsp:useBean id="u" class="com.app.bean.Book" ></jsp:useBean>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String bid=(String)session.getAttribute("id");
Book b=UserDao.getBookById(Integer.parseInt(bid));
int book_id=b.getBook_id();

 
  long mobile=(long)session.getAttribute("mobile");
    OrderDao.getOrderByNumber(mobile);
     
     OrderDao.viewBookbyId(book_id);
    
      int order_id=(Integer)session.getAttribute("order_id");
    /* List<Book> list=OrderDao.viewBookbyId(book_id); 
     request.setAttribute("list",list);  */
     /* List<OrderDetails> list1=OrderDao.getOrderByNumber(mobile);
     request.setAttribute("list1",list1) */;
     List<OrderDetails>order=OrderDao.getOrderByOid(order_id);
     request.setAttribute("list",order);
     
        
     
%>



<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>


<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order Summary</h1>
<table  align="center" border="5">
<tr>
<td> Customer name </td>
<td> phone number </td>
<td> address </td>
<td> book name </td>
<td> total amount</td>
<td>Order date</td>
</tr>

 <c:forEach items="${list}" var="u1"> 
   
<tr>
<td >${u1.getCust_name()}</td>
<td>${u1.getPhone_number()}</td>
<td>${u1.getAddress()}</td>
<td>${u1.getName()}</td>
<td>${u1.getTotal()}</td>
<td>${u1.getDate()}</td>

</tr>
<td><a href="cancelorder.jsp"><input type="button" value="cancel order"/></a></td>
</c:forEach>

</table>
 
</body>
</html>
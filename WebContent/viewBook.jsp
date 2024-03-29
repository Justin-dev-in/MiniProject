<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
	<a class="menulink" href="userRegistration.jsp"> SIGNUP</a>
	<a class="menulink" href="feedback.jsp"> FEEDBACK</a>
	<a class="menulink" href="Logout">Logout</a>
	<form class="offset-2 form-inline my-2 my-lg-3">
     <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-5 my-sm-0" type="submit">Search</button>&emsp;
      
    </form>
   <div class="bag">
      <img src="image/bag.jpg" class="img-fluid" id="bag">
      </div>
</div>
<div class="relative">

</div>
<body>
 
<%@page import="com.app.bean.UserDao,com.app.bean.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<h1>Product List</h1> 
  
<%  

List<Book> list=UserDao.getProduct();  
request.setAttribute("list",list); 
%>  
   
 <table width="50%" border="1"> 
 
<div class="card">

<table border="0" align ="center" cellpadding="10" cellspacing="15" >


<c:forEach items="${list}" var="u">  
<form action="Cart?id=${u.getBook_id()}" method="post"> 
<tr>
<td ><img src="data:image/jpg;base64,${u.getImage()}" width="100" height="100"/></td>

<td>${u.getBook_name()}</td><td>${u.getAuthor()}</td>  

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
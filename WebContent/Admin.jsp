<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Admin Login</h1>
<form action="Admin1" method="post">
<table>
<tr>
<td>Enter username:<input type="text" name="name"></td>
<td>Enter password:<input type="password" name="password"></td>
<td><input type="submit" value="login"></td>
</tr>
</table>
</form>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
	
.carousel-inner img {
      width: 1000px;
      height: 500px;  		
  }
  
div.forget
{
	position: fixed;
  right:550px;
  width: 200px;
  height: 9px;
  
  bottom:230px;
  font-size:160%;
}
body
{
	background-image:url("image/");
	background-repeat:no-repeat;
		
	background-size:cover;
}


#button:hover
 {
 background-color: #4CAF50;
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
div.absolute{
	position:absolute;
	right:100px;
	top:110px;
	border:2px solid black;
	height:260px;
	width:350px;	
}

div.relative{
	position:relative;
	width:100%;
	height:100%;
}

a:link
{
text-decoration: none;
}

a:visited,a:active
{
color:black;
}

.logo-image
{
    width: 46px;
    height: 46px;
    
    overflow: hidden;
    margin-top: -6px;
    align: right;  
}

<!-- #search-->
{
visibility: hidden;
} 

#demo
{
	margin-top: 100px;
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
  	<a class="menulink" href="newIndex.jsp"> Home</a>
	<a class="menulink" href="viewBook.jsp"> Product</a>
	<a class="menulink" href="userRegistration.jsp"> SignUp</a>
	<a class="menulink" href="feedback.html"> Feedback</a>
	
	<form id="search" class="offset-2 form-inline my-2 my-lg-3">
     <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-5 my-sm-0" type="submit">Search</button>&emsp;
    </form> 
</div>
<form name="user" action="Admin1" method="get">
<div class="container col-4" >
<pre>









</pre>
<h1>Admin Login</h1>

<div class="form-group">
<label for="Username">&emsp;<b>Username</b></label>
<input type="text" placeholder="Username" name="name"  class="form-control" required>
<br>
<label for="Password">&emsp;<b>Password</b></label>&nbsp;
<input type="password" placeholder="Password" name="password" class="form-control" required>
<br>
</div>
<button id="button" type="submit" "alert-success" value="login" name="login" class="btn btn-primary offset-4"
>Login</button>
</div>
</div>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	background-image:url("image/bg1.jpg");
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

<div id="demo" class="carousel slide " data-ride="carousel">
<div class="col-sm-5 offset-1 col-md-6 col-md-offset-0">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/ca.jpg" alt="Los Angeles" width="900" height="300" class="img-fluid">
    </div>
    <div class="carousel-item ">
      <img src="image/ca1.jpg" alt="Chicago" width="900" height="300" class="img-fluid">
    </div>
    <div class="carousel-item ">
      <img src="image/ca2.jpg" alt="New York" width="900" height="300" class="img-fluid">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
  </div>
  
<div class="absolute ">
<form name="user" action="Login" method="post">
<br>
<label for="Username">&emsp;<b>USERNAME</b></label>&nbsp;
<input type="number" placeholder="Username" name="mobile" required><br><br>
<label for="Password">&emsp;<b>PASSWORD</b></label>&nbsp;
<input type="password" placeholder="Password" name="password" required><br><br>
&emsp;&emsp;&emsp;<button id="button" type="submit" "alert-success" value="login" name="login" &emsp;>Login</button>
&emsp;&emsp;&emsp;
</form>
&emsp;&emsp;&emsp;<button type="submit" value="forgot" ><a href="forgotpwd.jsp">Forget Password</a> 
</button>
<a href="userRegistration.jsp"><input type="button" value="New User" ></a><br><br>
</div>
 
</div>

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
	
	<form id="search" class="offset-2 form-inline my-2 my-lg-3">
     <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-5 my-sm-0" type="submit">Search</button>&emsp;
    </form>   
    <a class="menulink" href="Admin.jsp">ADMIN</a>
</div>

<div class="relative">

</div>

</body>
</html>
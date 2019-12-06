<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	
	<style>


body
{
	
	background-repeat:no-repeat;
	background-color:#cccccc;
	background-size:cover;
}




#button:hover
 {
 background-color: #4CAF50;
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

#navbar {
  overflow: hidden;
  background-color: #333;
  font-size: 20px;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 20px;
  text-decoration: none;
    
}

.content {
  padding: 16px;

}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

.menulink:hover
{
	font-size:22px;
	background-color: green;
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
<div id="navbar">
  	<a class="menulink" href="index.jsp"> Home</a>
	<a class="menulink" href="viewBook.jsp"> Product</a>
	<a class="menulink" href="NewUser.jsp"> SignUp</a>
	<a class="menulink" href="feedback.html"> Feedback</a>
</div>

<form name="user" action="succBook.jsp" method="post">
<div class="container col-4" >

<pre>



</pre>
<h1 align="center">Add New Book</h1>
<br>



<div class="form-group">

<label for="Id">&emsp;<b>Book Id</b></label>
<input type="number" placeholder="Enter BookId" name="book_id"  class="form-control" required>
<br>
<label for="name">&emsp;<b>Book Name</b></label>
<input type="text" placeholder="Enter Bookname" name="book_name"  class="form-control" required>
<br>
<label for="name">&emsp;<b>Author Name</b></label>
<input type="text" placeholder=" Enter BookAuthor" name="author"  class="form-control" required>
<br>

<label for="name">&emsp;<b>Genre</b></label>
<input type="text" placeholder="Enter Genre" name="genre"  class="form-control" required>
<br>
<label for="price">&emsp;<b>Price</b></label>
<input type="number" placeholder=" Enter Price" name="price"  class="form-control" required>
<br>
<label for="file"><b>File Upload</b></label>&emsp;&emsp;&emsp;
<input type="file" name="image"  /><br>
</div>
<button id="button" type="submit" "alert-success" value="Add" name="Add" class="btn btn-primary offset-4"
 &emsp;>Add</button>
</div>
<a href="adminView.jsp">View all</a>
</div>
</form>



</body>
</html>
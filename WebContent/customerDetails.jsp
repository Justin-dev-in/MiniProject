<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>CustomerDetails</title>  
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
    <script src="https//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
    <script src="https//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style> 
	input[type=text] 
	{
  width: 75%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
	
}

input[type=text]:focus {
  border: 3px solid #555;
  }
  
  textarea[name=txtarea] {
  width: 75%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

textarea[name=txtarea]:focus 
{
  border: 3px solid #555;
  }
  
  
  label[for] {
  width: 80%;
  font-size:20px;
  color: black;
  }
  
  input[type=submit] {
  width: 45%;
  padding: 15px 20px;
  margin: 8px 0;
margin-left:80px;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;

  }
  
	select[name=Delivery] {
  width: 75%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  0transition: 0.5s;
  outline: none;

}

select[name=Delivery]:focus {
  border: 3px solid #555;
 
  }
  body{
  margin-bottom:50%;
  background-image:url("image/b1.jpg");
 
  }
  
  

  .column {
  float: left;
  width: 60%;
  padding: 10px;
  height: 300px; 
}


.row:after {
  content: "";
  display: table;
  clear: both;
}
	  mainsl{
	width: 70%;
	height: 400px;
	position: absolute;
	left: 50%;
	top: 50%;
	float:right;
	transform: translate(-50%,-50%);
	background-image: url("image/ad1.jpg");
	background-size: 100% 100%;
	box-shadow: 1px 2px 10px 5px white;
	animation: slider 10s infinite linear;
}
@keyframes slider{
	0% {background-image: url("image/ad1.jpg");}
	15% {background-image: url("image/ad2.jpg");}
	25% {background-image: url("image/ad3.jpg");}
	35% {background-image: url("image/ad4.jpg");}
	45% {background-image: url("image/ad5.jpg");}
}

input[type=text], input[type=password]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
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
  	<a class="menulink" href="newIndex.jsp"> Home</a>
	<a class="menulink" href="viewBook.jsp"> Product</a>
	<a class="menulink" href="Logout"> LOGOUT</a>
	<a class="menulink" href="feedback.jsp"> Feedback</a>
</div>

<%@page import="com.app.bean.*,java.util.*" %>
		 <form action="successOrder.jsp">  
		<%
		  String bid=(String)session.getAttribute("id");
		  Book b=UserDao.getBookById(Integer.parseInt(bid));
		  
		 
		  String qty=(String)session.getAttribute("quantity");
		  int quantity=Integer.parseInt(qty);
		  
		  Random rand = new Random();
		  int order_id = rand.nextInt(90000) + 10000;
		  long mobile=(long)session.getAttribute("mobile");
		  
		  session.setAttribute("order_id", order_id);
		  String name=(String)session.getAttribute("name");
		  float total=(Float)session.getAttribute("total");
		  
		  %>
<div class="container">
       <h2>Customer Details</h2> 
		<div class="row">
		
		<div class="column" >		  
		  
           <table>
           <tr>
            <input type="hidden" name="book_id" value="<%=b.getBook_id()%>">
            <input type="hidden" name="order_id" value="<%=order_id%>">
             <input type="hidden" name="mobile" value="<%=mobile%>">
             <input type="hidden" name="name" value="<%=name%>">
             <input type="hidden" name="total" value="<%=total%>">
             <input type="hidden" name="total" value="<%=quantity%>">
           <td>name</td>
           </table>
           <form action="successOrder.jsp">  
            <div class="form-group"> 
			<label for="name">User Name</label> 
			<br>
			<input type="text" class="form-control" id="uname" name="cust_name" placeholder="Enter User Name "> 
			</div>  
            <div class="form-group">
			<label for="mobile">Mobile No.</label>
			<br>
			<input type="text" class="form-control" id="number" name="phone_number" placeholder="Enter Mobile No.">
			</div> 
			<div class="form-group"> 
			<label for="pincode">Pin No</label> 
			<br>
			<input type="text" class="form-control" id="pin" placeholder="Enter pincode "> 
			</div> 
			<div class="form-group"> 
			<label for="date">Date</label> 
			<br> 
			<input type="date" name="date" class="form-control">
            <div class="form-group">
			<label for="address">Flat,House no.,Building,Company, Apartment</label> 
			<br>
			<textarea name="address" rows="2" cols="40"  id="address"  placeholder="line1" ></textarea>
			</div>	
			<div class="form-group">
			<label for="address1">Area, Colony, Street,Sector,Village</label> 
			<br>
			<textarea name="txtarea" rows="2" cols="40"  id="Address1"  placeholder="line2" ></textarea>
			</div>	
			<div class="form-group">
			<label for="address2">Landmark eg:near krishna hospital</label> 
			<br>
			<textarea name="txtarea" rows="2" cols="40"  id="Address2"  placeholder="line3" ></textarea>
			</div>	
			<div class="form-group">
			<label for="city">Town/city</label>
			<br>
			<textarea name="txtarea" rows="1" cols="40"  id="City"  placeholder="Enter your City" ></textarea>
			</div>	
			<div class="form-group">
			<label for="state">Flat,House no.,Building,Company, Apartment</label>
			<br>
			<textarea name="txtarea" rows="1" cols="40"  id="State"  placeholder="Enter your State" ></textarea>
			</div>	
			<div>
			<h3>Additional Address Details</h3>
			</div>
			<div class="a-span12" >
			<label for="AddressType" class>
            Address Type:
          </label>
			<select name="Delivery">
			<option>Deliver 7am-9pm,All Days</option>
			<option>Deliver 10am-6pm, Monday to Friday</option>
			</select>
			<br>
			<br>
			</div>
			<div>
			<label for="Submit" class>
          </label>
		  <input type="submit" value="Deliver on this Address:" class="btn btn-primary" center>
		  <label for="Reset" class>
          </label>
		  <input type="submit" value="Reset" class="btn btn-primary" center>
		  </div>
			<div class="mainsl" >
	
			</div>
		</form>
	
	</div>
	<div>
	</div>
			
</body>
</html>
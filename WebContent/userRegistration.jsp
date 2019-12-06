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
 	<style type="text/css">
 	
 	.logo-image{
    width: 46px;
    height: 46px;
    
    overflow: hidden;
    margin-top: -6px;
    align: right;
}</style>
</head>
<body>
<div id="navbar" class="navbar  fixed-top">
<div class="logo-image">
      <img src="image/fa.png" class="img-fluid">
      </div>
  	<a class="menulink" href="index.jsp">HOME</a>
	<a class="menulink" href="product.jsp"> PRODUCT</a>
	<a class="menulink" href="NewUser.jsp"> SIGNUP</a>
	<a class="menulink" href="feedback.jsp"> FEEDBACK</a>
	
	<form class="offset-2 form-inline my-2 my-lg-3">
     <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-5 my-sm-0" type="submit">Search</button>&emsp;
      
    </form>
   
</div>

<div class="container col-6">
<form name="myform"  method="post" action="successRegistation.jsp" onsubmit="return validation()">

<div class="form-group">
<pre>





</pre>
<label for="name"><b>User Name</b></label> &emsp;&emsp;

<input type="text" name="name" placeholder=" Enter user name"  id="name1" class="form-control" size="40" >
<span id="usererror" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="password"><b>Password</b></label>&emsp;&emsp;
<input  type="password" placeholder="password" id="pwd" size="40" name="password" class="form-control">
<span id="usererror1" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="password"><b>Re-Password</b> </label>&emsp;&emsp;
<input type="Password" placeholder="confirm-password" id="pwd2" size="40" name="password"class="form-control">
<span id="usererror2" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="email"><b>Email</b> </label>&emsp;&emsp;
<input type="email" name="email" id="email"  placeholder="email" size="40" class="form-control">
<span id="usererror3" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="mobile"><b>Mobile	</b></label>&emsp;&emsp;
<input type="number" name="mobile" id="mobile"  placeholder="Enter mobile no." size="40" class="form-control" >
<span id="usererror4" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="dob"><b>DOB</b></label>&emsp;&emsp;
<input type="date" name="dob"   placeholder="date of birth" class="form-control">
</div>
<div class="form-group">
<label for="address"><b>Address</b></label>&emsp;&emsp;		   
<textarea " rows="2" cols="40"  id="Address" name="address" placeholder="line1" class="form-control" ></textarea>
<br>
<textarea name="txtarea1" rows="2" cols="40" id="Address1"  placeholder="line2" class="form-control"></textarea>
<span id="usererror5" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="city" ><b>City	</b></label>&emsp;&emsp;
<select name="city" width="40"class="form-control">
<option>Meerut</option>
<option>Pune</option>
<option selected>Delhi</option>
<option>Himachal Pradesh</option>
<option>Nagpur</option>
<option>Gujarat</option>
<option>Goa</option>
</select>
</div>
<div class="form-group"> 
<label for="pincode"><b>Pincode</b></label>&emsp;&emsp;
<input type="text" name="pincode" id="Pincode" size="40" class="form-control">
<span id="usererror6" class="text-danger font-weight-bold"></span>
</div>
<div class="form-check-inline"> 
<label for="gender" class="form-check-label"><b>Gender</b></label>&emsp;&emsp;
<input type="radio" name="rdogender" class="form-check-input" required>Male</input>&emsp;&emsp;
<input type="radio" name="rdogender" class="form-check-input"checked>Female</input>&emsp;&emsp;
<input type="radio" name="rdogender" class="form-check-input" required>Transgender</input>
<br>
</div>

<div class="form-group">
<label for="Submit" class>
</label>&emsp;&emsp;<br>
<input type="submit" value="submit" align="center" name="submit" class="btn btn-primary offset-3">
</div>
</form>
<script type="text/javascript">
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
//declaration of validation

function validation(){
var name=document.getElementById("name1").value;
var pt=/^([a-zA-Z]{4,10})$/;		//applying pattern that name should have charater and its limit should be between 4-10 and stored in variable pt.  
var password=document.getElementById("pwd").value;
var repassword=document.getElementById("pwd2").value;
var email=document.myform.email.value;		//this is another way to access the value .
var mobile=document.getElementById("Mobile").value;
var address=document.getElementById("Address").value;
var pincode=document.getElementById("Pincode").value;

/*checking if name is null then print the error message
*/

	if(name=='')
	{
	document.getElementById("usererror").innerHTML="please enter name";
	
	//alert("Please enter the required field");
	return false;
	}
	
	/*checking if name is not according to the pattern then print the error message
*/
	
	 else if(!name.match(pt)){
	document.getElementById("usererror").innerHTML="Invalid name";
	//alert("please enter the between a-z character");
	return false;
	}
	else{
	document.getElementById("usererror").innerHTML="";
	}
	
	/*checking if password is null then print the error message
*/
	
	if(password=='')
	{
	document.getElementById("usererror1").innerHTML="please enter password";
	
	//alert("Please enter the required field");
	return false;
	}
	
	else{
	document.getElementById("usererror1").innerHTML="";
	}
	/*checking if password limit is less than 6  then print the error message
*/
	
	if(password.length<6)
	{
	document.getElementById("usererror1").innerHTML="password must be atleast 6 character long";
	return false;
	}
	else if(!name.match(pt)){
	document.getElementById("usererror1").innerHTML="Invalid password";
	//alert("please enter the between a-z character");
	return false;
	}
	
	else{
	document.getElementById("usererror1").innerHTML="";
	}
	
	/*checking if password is null then print the error message
*/
	
	if(repassword=='')
	{
	document.getElementById("usererror2").innerHTML="please confirm the password";
	
	//alert("Please enter the required field");
	return false;
	}
	
	else{
	document.getElementById("usererror2").innerHTML="";
	}
	/*checking if password limit is less than 6  then print the error message
*/
	
	if(repassword.length<6)
	{
	document.getElementById("usererror2").innerHTML="password must be atleast 6 character long";
	return false;
	}
	else if(password!=repassword){
	document.getElementById("usererror2").innerHTML="password not matched";
	//alert("please enter the between a-z character");
	return false;
	}
	
	else{
	document.getElementById("usererror2").innerHTML="";
	}
	
	
	
/*checking if email is null then print the error message
*/

	if(email=='')
	{
	document.getElementById("usererror3").innerHTML="please enter email";
	
	//alert("Please enter the required field");
	return false;
	}
	
	/*checking if email is less then 6 character then print the error message
*/
	
	 else if(email.length<6){
	document.getElementById("usererror3").innerHTML="email must contain atleast 6 character long";
	//alert("please enter the between a-z character");
	return false;
	}
	else{
	document.getElementById("usererror3").innerHTML="";
	}
	
	/*checking if mobile No is null then print the error message
*/

	if(mobile=='')
	{
	document.getElementById("usererror4").innerHTML="please enter Mobile No.";
	
	//alert("Please enter the required field");
	return false;
	}
	
	/*checking if mobile is less then 10 digit then print the error message
*/
	
	 else if(mobile.length==10){
	document.getElementById("usererror4").innerHTML="Mobile No must contain 10 digit";
	//alert("please enter the between 1-10 character");
	return false;
	}
	else{
	document.getElementById("usererror4").innerHTML="";
	}
		
/*checking if address is null then print the error message
*/

	if(address=='')
	{
	document.getElementById("usererror5").innerHTML="please enter address";
	
	//alert("Please enter the required field");
	return false;
	}
	
	/*checking if address is less then 6 character then print the error message
*/
	
	 else if(address.length<6){
	document.getElementById("usererror5").innerHTML="address must contain atleast 6 character long";
	//alert("please enter the between a-z character");
	return false;
	}
	else{
	document.getElementById("usererror5").innerHTML="";
	}
	
		
/*checking if pincode is null then print the error message
*/

	if(pincode=='')
	{
	document.getElementById("usererror6").innerHTML="please enter pincode";
	
	//alert("Please enter the required field");
	return false;
	}
	
	/*checking if pincode is less then 6 character then print the error message
*/
	
	 else if(pincode.length<6){
	document.getElementById("usererror6").innerHTML="pincode must contain atleast 6 digit long";
	//alert("please enter the between 1-10 character");
	return false;
	}
	
	else{
	return true;
	}
}

</script>
</body>
</html>
</div>
</body>

</html>
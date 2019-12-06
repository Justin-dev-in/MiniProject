<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Change Password</title>
         <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
    <script src="https//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
    <script src="https//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .tbl
            {	
            	background-image:url("images/scroll.jpg");
                border:1px solid black;
                width:40%;
                height:60px;
                font-size:10px;
                background-position: right;
                background-image: cover;
            }
            
            .tbll
            {
                border:4px solid white;;
                width:100%;
                font-size: 20px;
                background-position: right;
                background-image: cover;
            }
            
        	body
        	{
             background-repeat: round;
             width:98%;
             height:600px;
             background-image: cover;
            }
        
        </style> 
       </head>   
    
    <body>
        
        <!-- <center>  <h1 class="heading">Enter your New Password</h1></center> -->
    <center>    
    <form  action="ForgotPassword" method="post" ><!-- action="forgotpassword.java" -->
        <table class="tbl" align="center">
		<tr>
			<td>Enter Email:</td>
			<td>
				<input type="text" name="email">
			</td>
		</tr>
		<tr>
			<td>Enter  registered mobile:</td>
			<td>
				<input type="text" name="mobile">
			</td>
		</tr>
		<tr>
			<td>Enter New-Password:</td>
			<td>
				<input type="password" name="password">
		</tr>
		<tr>	
		<td colspan="2" align="center">
		<input type="submit"  value="forgot_pwd"></td>
        
        </table>      
        </form>
    </center> 
        
    </body>
   
</html>

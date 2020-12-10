<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<title>Login or Sign Up</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<style>
.inner
{
    display: inline-block;
}

.button-margins{
	margin-top:15px;
	margin-bottom:15px;
}

</style>

<script>
var accountError = function (message) {
	alert(message);
}
</script>

</head>
<body>

        <%@ include file="navbar.jsp"%>
        
	<div class="container-fluid text-center ">
	<center>
				<br></br>
				<h1 id="loginTitle">Login</h1>
				<h1 id="registerTitle" style="display:none">Register</h1>	
				
				<div class="btn-group btn-group-toggle button-margins" data-toggle="buttons">
				  <label class="btn btn-primary active" onclick="loginPage()" style="width:160px;">
				    <input type="radio" name="options" id="option1" autocomplete="off" checked=""> Login
				  </label>
				  <label class="btn btn-info" onclick="registerPage()" style="width:160px;">
				    <input type="radio" name="options" id="option2" autocomplete="off" > Register
				  </label>
				</div>
				
			<div id="loginForm" class="card border-primary mb-3 text-center" style="max-width: 20rem;">
				  <div class="card-header">Enter your Credentials Here</div>
				  <div class="card-body">
				<form action="LoginController">

					Username <input required type="text" name="un" /><br> Password <input required
						type="password" name="pw" /> <input type="submit"
						class="btn btn-primary button-margins" value="Submit">
				</form>	    
				 </div>
			</div>
			
			<div id="registerForm" class="card border-info mb-3 text-center" style="max-width: 20rem; display:none">
				  <div class="card-header">Sign up for Ergonomica Here!</div>
				  <div class="card-body">
					<form action="AccountController" method="post">
					
						      Username <input required type="text" name="un" />
						      <br>
						      Password <input required type="password" name="pw" /><br>
							  Email <br><input required type="email" name="em" />
								<input name="action" type="hidden" value="createAccount"/>
								<input type="submit" class="btn btn-info button-margins" value="Submit"/>
					</form>
				  </div>			    
			</div>	
			<br>
			<img src="img/login-illustration.svg"></img>
			
	</div>

	</center>

<script>
function loginPage(){
	  var a = document.getElementById("loginForm");
	  var b = document.getElementById("loginTitle");
	  var x = document.getElementById("registerForm");
	  var y = document.getElementById("registerTitle");
	  a.style.display = "block";
	  b.style.display = "block";
	  x.style.display = "none";
	  y.style.display = "none";
	}
	
function registerPage(){
	var a = document.getElementById("loginForm");
	var b = document.getElementById("loginTitle");
	var x = document.getElementById("registerForm");
	var y = document.getElementById("registerTitle");
	a.style.display = "none";
	b.style.display = "none";
    x.style.display = "block";	  
    y.style.display = "block";	  
}

</script>

</body>
</html>


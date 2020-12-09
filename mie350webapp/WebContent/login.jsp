<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Ergonomica - Log In or Sign Up</title>
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

</head>
<body>

        <%@ include file="navbar.jsp"%>
        
	<div class="container-fluid text-center ">
	<center>
				<br></br>
				<h1>Login</h1>
					
				<div class="btn-group btn-group-toggle button-margins" data-toggle="buttons">
				  <label class="btn btn-primary active" onclick="loginPage()" style="width:160px;">
				    <input type="radio" name="options" id="option1" autocomplete="off" checked=""> Login
				  </label>
				  <label class="btn btn-primary" onclick="registerPage()" style="width:160px;">
				    <input type="radio" name="options" id="option2" autocomplete="off" > Register
				  </label>
				</div>
				
			<div id="loginForm" class="card border-primary mb-3 text-center" style="max-width: 20rem;">
				  <div class="card-header">Enter your Credentials Here</div>
				  <div class="card-body">
				<form action="LoginController">

					Username <input required type="text" name="un" /><br> Password <input required
						type="password" name="pw" /> <input type="submit"
						class="btn btn-info button-margins" value="Submit">
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
			<svg width="142.5" height="249" viewBox="0 0 95 166" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M1.67053 161.726H32.6405L32.6405 109.986H1.67053L1.67053 161.726Z" fill="#B2B2B2"/>
				<path d="M32.5179 161.726H63.4879L63.4879 109.986H32.5179L32.5179 161.726Z" fill="#D1D1D1"/>
				<path d="M35.3 61.06L39.03 78.92L27.38 80.42C27.38 80.42 26.37 61.86 27.38 61.76C28.39 61.67 35.3 61.06 35.3 61.06Z" fill="#A8754B"/>
				<path d="M24.4 43.12C24.4 43.12 36.04 44.76 38.13 62.47C38.13 62.47 34.42 66.46 29.69 65.23L24.4 43.12Z" fill="#FFD686"/>
				<path d="M19.35 42.51C19.35 42.51 8.01001 41.39 4.02001 49.38C0.0200143 57.37 11.68 65.69 7.68001 84L32.82 82.67V66.52C32.82 66.52 37.4 59.84 30.91 52.68C30.91 52.68 30.52 41.8 19.35 42.51Z" fill="#FFD686"/>
				<path d="M56.75 86.59C56.75 86.59 64.9 83.57 67.09 91.48C69.28 99.38 78.36 151.03 78.36 151.03H71.08L66.8 130.5C66.8 130.5 60.76 123.77 58.91 109.48L33.51 106.45L56.75 86.59Z" fill="#B5845B"/>
				<path d="M40.09 105.49C40.09 105.49 44.41 105.37 52.08 102.93C59.75 100.48 65.22 103.07 62.2 111.71C59.18 120.34 43.92 160.34 43.92 160.34L38.14 158.61L43.13 132.71C43.13 132.71 44.3 119.86 49.72 112.33C49.72 112.33 38.32 112.9 34.42 112.3C30.54 111.71 40.09 105.49 40.09 105.49Z" fill="#A8754B"/>
				<path d="M7.68003 84C7.68003 84 -1.53997 95.59 9.55003 106.97C9.55003 106.97 15.26 113.62 40.43 112.58C40.43 112.58 47.03 90.3 61.07 84.31L32.01 80.42L7.68003 84Z" fill="#0C2C40"/>
				<path d="M19.97 12.92C19.97 12.92 22.97 0.710004 12.58 0.640004C4.89004 0.590004 2.60003 9.77998 12.03 15.93L19.97 12.92Z" fill="#190D08"/>
				<path d="M11.68 18.15C11.68 18.15 9.80003 13.35 15.16 10.92C20.52 8.49001 22.23 14.24 22.23 14.24L11.68 18.15Z" fill="#FD6C75"/>
				<path d="M32.04 29.07C32.04 29.07 39.78 24.49 31.41 15.29C26.18 9.54002 17.02 9.86001 11.92 15.56C6.82003 21.26 11.63 31.31 11.63 31.31L15.1 25.54L18.14 21.06L22.49 19.32L25.9 19.56L28.79 19.93L31.12 20.91L32.04 29.07Z" fill="#27160C"/>
				<path d="M25.7181 32.7708L17.0191 31.6535L15.2584 45.3615L23.9574 46.4788L25.7181 32.7708Z" fill="#B5845B"/>
				<path d="M16.11 35.73C16.11 35.73 17.05 40.72 21.06 41.73C22.31 42.04 23.67 41.68 24.43 40.65C24.64 40.37 24.79 40.05 24.84 39.69C25.03 38.25 21.23 35.73 21.23 35.73H16.11Z" fill="#A8754B"/>
				<path d="M22.24 39.28L21.79 39.22C16.8 38.58 13.27 34.01 13.91 29.02L14.42 25.06C15.06 20.07 19.63 16.54 24.62 17.18L25.07 17.24C30.06 17.88 33.59 22.45 32.95 27.44L32.44 31.4C31.8 36.39 27.23 39.92 22.24 39.28Z" fill="#B5845B"/>
				<path d="M14.89 28.03C14.89 28.03 21.15 25.99 20.99 18.96C20.99 18.96 21.39 13.72 15.91 18.57C10.43 23.42 14.89 28.03 14.89 28.03Z" fill="#27160C"/>
				<path d="M16.27 29.95C16.05 31.63 14.52 32.82 12.83 32.6C11.15 32.38 9.96004 30.85 10.18 29.17C10.4 27.49 11.93 26.3 13.62 26.52C15.3 26.73 16.49 28.27 16.27 29.95Z" fill="#B5845B"/>
				<path d="M18.28 24.51L18 26.73C17.36 29.86 16.04 28.91 15.56 27.56L18.28 24.51Z" fill="#27160C"/>
				<path d="M33.91 23.38C33.91 23.38 27.52 28.17 18.15 21.07C11.69 16.18 21.46 14.42 21.46 14.42L30.57 16.3L33.91 23.38Z" fill="#27160C"/>
				<path d="M15.27 45.35C15.27 45.35 20.74 55.11 24.62 52.11C28.81 48.87 19.35 42.51 19.35 42.51L15.27 45.35Z" fill="#B5845B"/>
				<path d="M17.69 65.23C17.69 65.23 21.07 71.46 23.38 76.35L48.02 74.93C48.02 74.93 52.91 70.93 56.74 74.31L52.96 78.85L22.11 85.68C20.93 85.94 19.7 85.6 18.83 84.78C16.1 82.2 10.16 76.19 7.28003 70.06L17.69 65.23Z" fill="#B5845B"/>
				<path d="M86.08 55.62H55.8C54.8 55.62 53.94 56.32 53.74 57.29L48.04 84.04C47.76 85.35 48.76 86.59 50.1 86.59H80.89C81.9 86.59 82.77 85.87 82.96 84.88L88.16 58.13C88.4 56.83 87.4 55.62 86.08 55.62Z" fill="#B2B2B2"/>
				<path d="M87.82 55.62H57.54C56.54 55.62 55.68 56.32 55.48 57.29L49.78 84.04C49.5 85.35 50.5 86.59 51.84 86.59H82.63C83.64 86.59 84.51 85.87 84.7 84.88L89.9 58.13C90.14 56.83 89.15 55.62 87.82 55.62Z" fill="#D1D1D1"/>
				<path d="M48.84 84.31H28.15C27.52 84.31 27.01 84.82 27.01 85.45C27.01 86.08 27.52 86.59 28.15 86.59H49.24L48.84 84.31Z" fill="#B2B2B2"/>
				<path d="M69.07 70.41C69.07 72.23 70.55 73.71 72.37 73.71C74.19 73.71 75.67 72.23 75.67 70.41C75.67 68.59 74.19 67.11 72.37 67.11C70.55 67.11 69.07 68.58 69.07 70.41Z" fill="white"/>
				<path d="M7.28002 45.49C6.87002 45.67 -6.69998 52.34 6.65002 73.01C6.65002 73.01 15.18 73.15 20.12 66.8C20.13 66.8 18.49 40.57 7.28002 45.49Z" fill="#FFD686"/>
				<path d="M36.57 157.48C36.75 156.94 37.34 156.74 37.74 157.09C38.52 157.78 39.92 158.63 41.98 158.42C44.13 158.21 44.93 156.94 45.24 156.03C45.4 155.55 45.86 155.31 46.27 155.51L59.29 162.05C60.08 162.45 60.7 163.19 61 164.11C61.29 164.98 60.71 165.91 59.89 165.89L37.4 165.27C36.51 165.25 35.84 164.38 35.91 163.37L36.28 158.41C36.29 158.33 36.3 158.25 36.33 158.17L36.57 157.48Z" fill="#FD6C75"/>
				<path d="M69.4 148.92C69.44 148.35 69.95 148 70.42 148.24C71.35 148.7 72.92 149.15 74.86 148.41C76.87 147.64 77.32 146.21 77.38 145.25C77.41 144.75 77.79 144.39 78.24 144.48L92.52 147.39C93.39 147.57 94.18 148.12 94.72 148.93C95.23 149.69 94.91 150.74 94.12 150.93L72.25 156.22C71.39 156.43 70.51 155.77 70.32 154.77L69.38 149.89C69.36 149.81 69.36 149.73 69.36 149.64L69.4 148.92Z" fill="#FD6C75"/>
				</svg>
					
			
	</div>

	</center>

<script>
function loginPage(){
	  var x = document.getElementById("loginForm");
	  var y = document.getElementById("registerForm");
	  x.style.display = "block";
	  y.style.display = "none";
	}
	
function registerPage(){
	var x = document.getElementById("loginForm");
	var y = document.getElementById("registerForm");
	x.style.display = "none";
    y.style.display = "block";	  
}

</script>

</body>
</html>


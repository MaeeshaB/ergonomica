<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
%>
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

<script type="text/javascript" src="js/accountSettingsHelper.js"></script>  

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<style>
.button-margins{
	margin-top:15px;
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
			<center>
				<br></br>
				<b><h1>My Account</h1></b>
				<div class="card border-secondary mb-3 text-center" style="max-width: 25rem;">
				  <div class="card-header">Change or Delete your Account Here</div>
				  <div class="card-body">
				  	<form action="AccountController" method="post">
				  	Current Password <br><input required type="password" name="current" id="current" >
				  	<br>New Password <br><input required type="password" name="new" id="new">
					<br>Confirm Password<br><input required type="password" name="confirm" id="confirm">
					<br>
					<input name="action" type="hidden" value="changePassword"/>
					<input id="submitBtn" type="submit" class="btn btn-info button-margins" value="Change Password">
				</form>
				<br><br>
				<form onclick = "confirmDelete()" action="AccountController" method="post">
					<input name="action" type="hidden" value="deleteAccount"/>
					<input id="submitBtn" type="submit" class="btn btn-danger" value="Delete Account">
				</form>
				  </div>
				</div>
				
			</center>
	</div>


<script>
function confirmDelete() {
	  alert("Are you sure you want to delete your account? This action cannot be undone");
	}
</script>

</body>
</html>
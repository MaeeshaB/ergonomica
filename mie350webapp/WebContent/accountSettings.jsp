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
</head>
<body>

	<%@include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<b><h1>My Account</h1></b>
				
				<form action="AccountController" method="post">
					<table>
					<tr><td>Current Password:</td><td><input required type="password" name="current" id="current" ></td></tr>
					<tr><td>New Password:</td><td><input required type="password" name="new" id="new"></td></tr>
					<tr><td>Confirm Password:</td><td><input required type="password" name="confirm" id="confirm"></td></tr>
					
					<tr><td>
					<input name="action" type="hidden" value="changePassword"/>
					<input id="submitBtn" type="submit" class="btn btn-info" value="Change Password">
					</td></tr>
					</table>
				</form>
				<br><br>
				<form action="AccountController" method="post">
					<input name="action" type="hidden" value="deleteAccount"/>
					<input id="submitBtn" type="submit" class="btn btn-danger" value="Delete Account">
					</td></tr>
					</table>
				</form>
				
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>
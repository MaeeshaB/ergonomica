
<!-- Check to see if the user is logged in. Otherwise, redirect back to the login page.-->
<%
	/*session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}*/
%>

<head>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<title>Welcome to Your Account</title>
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
<meta http-equiv="refresh" content="3;url=http://localhost:8080/mie350webapp/MyWorkspaceController?location=ws&action=getItems&userid=${username}"/>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<%
		//String username = (String) session.getAttribute("username");
	%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<br></br>
				<h1>
					Welcome,
					<%=username%>
				</h1>


				Welcome to the your account!
				
				<div>Don't mind me, just cleaning up here...</div>
				<br></br>
				<img src="img/robot-broom.svg" alt="cartoon robot"><br></br>
				<div>You will be redirected to <a href=myworkspace.jsp>your workspace</a> in a few seconds.</div>

			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>

</body>
</html>
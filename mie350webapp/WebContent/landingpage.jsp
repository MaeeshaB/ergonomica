<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%
	String loggedIn = "display:none";
	String notLoggedIn = "display:visible";
	session.setAttribute("loggedIn", loggedIn);
	session.setAttribute("notLoggedIn", notLoggedIn);
	session.invalidate();
%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<title>Ergonomica-Landing</title>
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
body{
  background: url('img/landing.svg');
  background-repeat: repeat-x;
  background-repeat: repeat-y;
  background-size: contain;
}

.block-text {
  margin-left: auto;
  margin-right: auto;
  
}

.message-bg{
	padding: 20px;
	background-color: white;
	position: relative;
}

.vertical-center {
  width: 35em;
  margin: 0;
  position: absolute;
  left: 33%;
  top: 50%;
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}

.message-contents{
}

.message-bg:hover{
}
    
</style>

</head>
<body>
		<div class="container-fluid text-left message-bg vertical-center">
				<div><h2>There's only one you. <br>Why should your workspace be any different?</h2></div>
				<div><br><h1>Ergonomica is here to help</h1></div>
				<div>
	  				<blockquote class="blockquote">	
						<p class="mb-0">In the times of  the COVID-19 pandemic, more and more people are working or studying remotely.
						Ergonomica¡¯s goal is to help you set up a functional home office that is personalized to meet your needs.
						We offer tools to assist in planning your workspace through customized product suggestions based on 
						which profile applies to you: children, students, and professionals in the office.</p>
					</blockquote>
				</div>
				<a href="suggestedProducts.jsp">
					<button type="button" class="btn btn-info">Transform my Workspace!</button>
				</a>
	</div>
</body>
</html>

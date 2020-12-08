<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		session.setAttribute("showFavBtn", "display:none");
	} else {
		session.setAttribute("showFavBtn", "display:block");
	}
%>

<html lang="en">
<head>
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


.grid {
	width: 1200 px;
	margin: 20px auto;
	columns: 3;
	column-gap: 30px;
	grid-gap: 15px;
}

.grid .box{
	width: 100%;
	margin: 0 0 20px;
	overflow: hidden;
	break-inside: avoid;
}

.grid .box img{
	max-width: 100%;
}

@media (max-width: 1200px)
{
	.grid {
	columns: 2;
	width: calc(100% - 30px);
	box-sizing: border-box;
	padding: 20px 20px 20px 0;
	}
}

.card:hover {
  transform: scale(1.02);
}
</style>



</head>
<body>

	<%@ include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
		
			<br></br> 
				<h1>Workspace Inspiration</h1>
			<div class="grid">
				
				
				<c:forEach items="${posts}" var="post">
					<div class="card border-secondary box text-center align-center">
					 <!-- <div class="card-header">${post.getPostName()}</div> -->
					  <a class="card-header" target="_blank" href="${post.getPostLink()}">${post.getPostName()}</a>
					  <div class="card-body">
					  <img class="card-img-top" src="img/${post.getPostPhoto()}" alt="Card image cap">
					    <br>
					    <div id ="favouriteBtn" style="${showFavBtn}">
					    <a href="PostController?action=${post.liked("${username}")}&postid=<c:out value="${post.getPostId()}"/>&userid=${username}" >${post.ContainsUserId("${username}")}</a>
						</div>
						<p class="card-text">${post.getPostDesc()}</p>
					  </div>
					</div>
				</c:forEach>		
				<br /> <br />
			</div>

			<%@ include file="footer.jsp"%>
		
		
	</div>
</body>
</html>
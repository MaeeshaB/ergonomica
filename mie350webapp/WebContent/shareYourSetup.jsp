<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - All Students in DB</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="bootstrap2.min.css">
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
</head>
<body>

	<%@ include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-3"></div>
			
			<div class="col-sm-8 text-left">
				<br></br> 
				<h1>Workspace Inspiration</h1>
				
				<c:forEach items="${posts}" var="post">
					<div class="card border-secondary mb-4 text-center" style="max-width: 28rem;">
					  <div class="card-header">${post.getPostName()}</div>
					  <div class="card-body">
					  <img class="card-img-top" src="img/${post.getPostPhoto()}" alt="Card image cap">
					    <br>
					    <a href="PostController?action=${post.liked("admin01")}&postid=<c:out value="${post.getPostId()}"/>&userid=admin01" >${post.ContainsUserId("admin01")}</a>
						<p class="card-text">${post.getPostDesc()}</p>
					  </div>
					</div>
				</c:forEach>
			
				<br /> <br />
			</div>
			
			
			
			<%@ include file="footer.jsp"%>
		</div>
		
	</div>



</body>
</html>
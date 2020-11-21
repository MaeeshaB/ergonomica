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
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-center">
				<div class="w-75 p-3">
				</div>
				<h1>Workspace Inspiration</h1>
				
				<table border=0>
					<tbody>
						<c:forEach items="${posts}" var="post">
							<tr>
								<c:out value="${post.getPostName()}" />
								<br>
								<img src="img/${post.getPostPhoto()}" width="200" height="200">
								<br>
								
								<a href="PostController?action=${post.liked("admin01")}&postid=<c:out value="${post.getPostId()}"/>&userid=admin01" >${post.ContainsUserId("admin01")}</a>
								<br>
								<c:out value="${post.getPostDesc()}" />
								<br> <br>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			
				<br /> <br />
			</div>
			
			<div class="col-sm-2 sidenav">
				<input type="submit" class="btn btn-info" value="Make Account" />  <br />
				<a data-role="button" data-icon="icon-addpost" data-iconpos="notext"></a>
			</div>
		</div>
		
		<div class="fixed-bottom"><%@ include file="footer.jsp"%></div>
	</div>



</body>
</html>
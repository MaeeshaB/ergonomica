<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>My Workspace</title>
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
</head>
<body>

	<%@ include file="navbar.jsp"%>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1>My Workspace</h1>
				${wsItems.get(0).getProductid()}
				<table border=0>
					<tbody>
						<c:forEach items="${wsItems}" var="item">
							<tr>
								${item.getProductid()}
								<c:out value="${item.getProductid()}" />
								<br>
								<img src="img/${item.getProductPhoto()}" width="200" height="200">
								<br>
								
								<form method="POST" action='MyWorkspaceController'>
								<input
									type="button" class="btn btn-link" name="action" value="delete">&#9825;</input>
								</form>
								
								<a href="MyWorkspaceController?action=delete&prodid=1001&userid=admin01">test</a>
								
								<br> <br>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
		
		<%@ include file="footer.jsp"%>
	</div>


</body>
</html>

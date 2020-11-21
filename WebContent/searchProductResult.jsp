<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App - Search Results</title>
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
				Products:<br />
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=desk">Desks</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=chair">Chairs</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=lighting">Lighting</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=keyboard">Keyboard</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=monitor">Monitor</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=mouse">Mouse</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=hardware">Hardware</a>
				<br>
				<a class="btn btn-default" href="FilterController?action=filter&type=software">Software</a>
				
				</div>
				
			<div class="col-sm-8 text-left">
			
			
				<h1>Search Results</h1>
				<div class="col-md-8">
				         <form method="POST" action='SearchController' name="frmAddUser">
						Keyword: <input type="text" name="keyword"
							value="<c:out value="${product.searchword}" />"><input
							type="submit" class="btn btn-info" value="Submit" />
					</form>
				 </div>
				 <div class="col-md-4">
				    <a class="btn btn-default" href="suggestedProducts.jsp">Take Quiz</a>
				 </div>
				
				<br> <br>
				
				<div class="col-md-2">
				
					<div class="dropdown show">
					
						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownSortBy" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    Sort By
						  </button>
						
						  <div class="dropdown-menu" aria-labelledby="dropdownSortBy">
						    <a class="dropdown-item" href="FilterController?action=sortByPrice">Price</a>
						  </div>
					</div>
				</div>
				
				<div class="col-md-2">
					<div class="dropdown show">
					
						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownFilter" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    Filter By
						  </button>
						
						  <div class="dropdown-menu" aria-labelledby="dropdownFilter">
						    <a class="dropdown-item" href="FilterController?action=filterByPrice">Price</a>
						  </div>
					</div>
				</div>
				
				<br> <br>
				
				<center>
				<c:forEach items="${products}" var="product">
					<div class="col-md-4">
					<img src="img/${product.getProductImage()}" width="200" height="200">
					<br>
					<a class="btn btn-link" href="ProductController?action=select&prodId=<c:out value="${product.getProductid()}"/>">${product.getProductName()}</a>
					<br>
					<a href="MyWorkspaceController?action=save&prodid=value="${product.getProductid()}"">&#9825;</a>
					$ <c:out value="${product.getProductPrice()}" />
					<br>
					</div>
					
				</c:forEach>
				</center>

			</div>
			
			<div class="fixed-bottom"><%@ include file="footer.jsp"%></div>
		</div>
	</div>



</body>
</html>



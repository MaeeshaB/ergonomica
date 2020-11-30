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
			
			<div class="col-sm-2 sidenav" background-color:="#d3d8e0">
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
				<br></br> 
				<h1>Search Results</h1>
				<div class="col-md-8">
				         <form method="POST" action='SearchController' name="frmAddUser">
						Keyword: <input type="text" name="keyword"
							value="<c:out value="${product.searchword}" />"><input
							type="submit" class="btn btn-info" value="Submit" />
					</form>
				 </div>
				 <div class="col-md-2">
				    <a class="btn btn-default" href="suggestedProducts.jsp">Take Quiz</a>
				 </div>
				
				<br> <br>

				<form method="POST" action="FilterController">
				  <select name="action" class="form-control">
				  	<option selected="">Sort By</option>
				    <option value="Price_LH">Price: Low to High</option>
				    <option value="Price_HL">Price: High to Low</option>
				    <option value="Name_AZ">Name: A to Z</option>
				    <option value="Name_ZA">Name: Z to A</option>
				  </select>
				  <input class="btn btn-default" type="submit" value="Submit">
				</form>
				
				<br> <br>
				
				<center>
				
				<table class="table">
					<c:forEach begin="0" end="${products.size()}" step="3" var="i">
							<tr>
			                <c:forEach begin="${i}" end="${i+2}" var="j">
				                <td align="center">
				                <c:if test="${j < products.size()}">
				                	<img src="img/${products.get(j).getProductImage()}" height="200">
									<br>
										<a class="btn btn-link" href="ProductController?action=select&prodId=<c:out value="${products.get(j).getProductid()}"/>">${products.get(j).getProductName()}</a>
										<br>
										<a href="MyWorkspaceController?location=search&action=${wsItems.addOrDelete(products.get(j).getProductid())}&prodid=${products.get(j).getProductid()}&userid=admin01">${wsItems.ProductSaved(products.get(j).getProductid())}</a>
									$ <c:out value="${products.get(j).getProductPrice()}" />
										<br>
								</c:if>
				                </td>
			             	</c:forEach>
			            </tr>
			        </c:forEach>
		        </table>
				
				</center>
				
			</div>
			<%@ include file="footer.jsp"%>
			
			
		</div>
		
	</div>
</body>
</html>



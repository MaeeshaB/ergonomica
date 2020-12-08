<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
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

<script type="text/javascript" src="js/pagination.js"></script>  

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<style>
.margins{
	margin-left: 30px;
	margin-right: 30px;
}

.button-margins{
	margin-left:15px;
}
</style>

</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container-fluid text-center">
		
		<div class="row content">
			
			<div class="col-sm-2 sidenav" background-color:="#d3d8e0">
				<br></br>
				Products<br/>
				<br>
				
				<div class="center-align">
				Ergonomic Items
				<div class="list-group w-75 margins" >
				  <a href="FilterController?action=filter&type=desk" class="list-group-item list-group-item-action">
				  	Desks</a>
				  <a href="FilterController?action=filter&type=chair" class="list-group-item list-group-item-action">Chairs</a>
				  <a href="FilterController?action=filter&type=lighting" class="list-group-item list-group-item-action">Lighting</a>
				  <a href="FilterController?action=filter&type=keyboard" class="list-group-item list-group-item-action">Keyboard</a>
				  <a href="FilterController?action=filter&type=monitor" class="list-group-item list-group-item-action">Monitor & Screens</a>
				  <a href="FilterController?action=filter&type=mouse" class="list-group-item list-group-item-action">Mouse</a>
				</div>
				</div>
				<br></br>
				<div class="center-align">
				Productivity Tools
				<div class="list-group center-align margins w-75" >
				  <a href="FilterController?action=filter&type=hardware" class="list-group-item list-group-item-action">
				  	Hardware</a>
				  <a href="FilterController?action=filter&type=software" class="list-group-item list-group-item-action">Software</a>
				  </div>
				</div>
			</div>
				
			<div class="col-sm-8 text-left">
				<br></br> 
				<h1>Search Results</h1>
				         <form method="POST" action='SearchController' name="frmAddUser">
						Keyword <small class="text-muted">Try 'professional' or 'software'</small>
						<input type="text" name="keyword"
							value="<c:out value="${product.searchword}" />"><input
							type="submit" class="btn btn-info" style="margin-left:15px;" value="Submit" />
					</form>
				
				
				<p></p>
				<p>Not sure what you need?<a class="btn btn-primary button-margins" href="suggestedProducts.jsp">Take the Quiz</a></p>
				
				<form method="POST" action="FilterController">
				  <select id = "sort" name="action" class="form-control w-25" onchange="this.form.submit()">
				  	<option selected>Sort By</option>
				    <option ${selected_LH} value="Price_LH">Price: Low to High</option>
				    <option ${selected_HL} value="Price_HL">Price: High to Low</option>
				    <option ${selected_AZ} value="Name_AZ">Name: A to Z</option>
				    <option ${selected_ZA} value="Name_ZA">Name: Z to A</option>
				  </select>
				  
				</form>
				
				<br> <br>
				
				<center>
				
			
				
				<table class="table" id="myTable">
					<tbody id="myTableBody">
					<c:forEach begin="0" end="${products.size()}" step="3" var="i">
							<tr>
			                <c:forEach begin="${i}" end="${i+2}" var="j">
				                <td align="center">
				                <c:if test="${j < products.size()}">
				                	<img src="img/${products.get(j).getProductImage()}" height="200">
									<br>
										<a class="btn btn-link" href="ProductController?action=select&prodId=<c:out value="${products.get(j).getProductid()}"/>">${products.get(j).getProductName()}</a>
										<br>
										<div id ="favouriteBtn" style="${showFavBtn}">
										<a href="MyWorkspaceController?location=search&action=${wsItems.addOrDelete(products.get(j).getProductid())}&prodid=${products.get(j).getProductid()}&userid=${username}">${wsItems.ProductSaved(products.get(j).getProductid())}</a>
										</div>
									$ <c:out value="${products.get(j).getProductPriceString()}" />
										<br>
								</c:if>
				                </td>
			             	</c:forEach>
			            </tr>
			            
			        </c:forEach>
			        </tbody>
		        </table>
				<div class="col-md-12 text-center">
				
		      <ul class="pagination pagination-lg" id="myPager"></ul>
		      
		      </div>
		      
				</center>
				
			</div>
			
			<div class="col-sm-2 sidenav">
			</div>
			
			<%@ include file="footer.jsp"%>
			
			
		</div>
		
	</div>
</body>
</html>



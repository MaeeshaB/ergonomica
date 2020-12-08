<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*" import="com.mie.dao.*"%>
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

<style>
.prod-img {
	object-fit: contain;
	max-height: 250px;
}

</style>
</head>
<body>

	<%@ include file="navbar.jsp"%>


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2"></div>
			
			<div class="col-sm-8 text-left">

			<div class="card mb-4">
			  <h3 class="card-header">${selectedProduct.getProductName()}</h3>
			  <div class="card-body">
			    <h5 class="card-title">$${selectedProduct.getProductPrice()}</h5>
			    <a href="MyWorkspaceController?location=prodDesc&action=${wsItems.addOrDelete(selectedProduct.getProductid())}&prodid=${selectedProduct.getProductid()}&userid=admin01">${wsItems.ProductSaved(selectedProduct.getProductid())}</a>
				</div>
			  <img class="card-img-top prod-img" src="img/${selectedProduct.getProductImage()}">
					  
			  <div class="card-body">
			    <p class="card-text">${selectedProduct.getProductDesc()}</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">
			    <p class="card-text">Product Details
			    <br>
			     <br>
			     Supplier or Brand:
			     <br>
			     ${selectedProduct.getProductBrand()}
			     ${selectedProduct.getProductSupplier()}
			     <br><br>
			     Who would this product likely be most useful for?
			     <br>
			     ${selectedProduct.getProductPersona()}
			     <br><br>
			     Product Type:
			     <br>
			     ${selectedProduct.getProductType()}
			     <br><br>
			     Specialty:
			     <br>
			     ${selectedProduct.getProductCategory()}
			     <br>
			     ${selectedProduct.getProductType()}
			     <br><br>
			     Get the Product from
			     ${selectedProduct.getProductBrand()}
			     ${selectedProduct.getProductSupplier()}
			     <a href="${selectedProduct.getProductLink()}">here</a>
			     If the link does not work, please use the one below:
			     <br>
			     ${selectedProduct.getProductLink()}
			     <br>
			     
			      </p>
			    </li>
			  </ul>
			  
			</div>
			
			</div>
		</div>
	</div>


</body>
</html>



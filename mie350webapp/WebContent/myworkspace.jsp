<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*" import="com.mie.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
			<div class="col-sm-10 text-left">
				<br></br> 
				<h1>My Workspace</h1>
				
				<table class="table">
					<c:forEach begin="0" end="${wsItems.getProducts().size()}" step="3" var="i">
							<tr>
			                <c:forEach begin="${i}" end="${i+2}" var="j">
				                <td align="center"> 
				                <c:if test="${j < wsItems.getProducts().size()}">
				                	<img src="img/${wsItems.getProducts().get(j).getProductImage()}" height ="200">
									<br>
										<a class="btn btn-link" href="ProductController?action=select&prodId=<c:out value="${wsItems.getProducts().get(j).getProductid()}"/>">${wsItems.getProducts().get(j).getProductName()}</a>
										<br>
										<a href="MyWorkspaceController?location=ws&action=${wsItems.addOrDelete(wsItems.getProducts().get(j).getProductid())}&prodid=${wsItems.getProducts().get(j).getProductid()}&userid=admin01">${wsItems.ProductSaved(wsItems.getProducts().get(j).getProductid())}</a>
									$ <c:out value="${wsItems.getProducts().get(j).getProductPrice()}" />
										<br>
								</c:if>
				                </td>
			             	</c:forEach>
			            </tr>
			        </c:forEach>
		        </table>		
					<%@ include file="footer.jsp"%>
			</div>
		</div>
		
	</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*" import="com.mie.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<title>My Workspace</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
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
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

.empty-workspace {
	background: transparent url("img/workspace-empty.svg");
	display: inline-block;
	background-position: 0 -209px;
	width: 334.35px;
	height: 192.16px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.empty-workspace:hover {
	background-position: 0 0px;
}

.button-margins {
	margin-top: 15px;
	margin-bottom: 15px;
}

.grid {
	width: 1200 px;
	margin: 20px auto;
	columns: 3;
	column-gap: 30px;
	grid-gap: 15px;
}

.grid .box {
	width: 100%;
	margin: 0 0 20px;
	overflow: hidden;
	break-inside: avoid;
}

.grid .box img {
	max-width: 100%;
}

@media ( max-width : 1200px) {
	.grid {
		columns: 2;
		width: calc(100% - 30px);
		box-sizing: border-box;
		padding: 20px 20px 20px 0;
	}
}

.card:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

/* Three columns side by side */
.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

/* Display the columns below each other instead of side by side on small screens */
@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}

/* Some left and right padding inside the container */
.container {
	padding: 0 16px;
}
</style>

</head>
<body>

	<%@ include file="navbar.jsp"%>


	<div class="container-fluid text-center">
		<center>
			<br></br>
			<h1>
				<img src="img/workspace-illustration.svg"></img>

				<%=username%>'s Workspace
			</h1>

			<div class="btn-group btn-group-toggle button-margins"
				data-toggle="buttons">
				<label class="btn btn-primary active" onclick="productPage()"
					style="width: 160px;"> <input type="radio" name="options"
					id="option1" autocomplete="off" checked="">Products
				</label> <label class="btn btn-info" onclick="articlePage()"
					style="width: 160px;"> <input type="radio" name="options"
					id="option2" autocomplete="off">Posts
				</label>
			</div>
			<div class="container-fluid text-center" id="productDisplay">
				<table class="table">
					<c:forEach begin="0" end="${wsItems.getProducts().size()}" step="3"
						var="i">
						<tr>
							<c:forEach begin="${i}" end="${i+2}" var="j">
								<td align="center"><c:if
										test="${j < wsItems.getProducts().size()}">
										<img
											src="img/${wsItems.getProducts().get(j).getProductImage()}"
											height="200">
										<br>
										<a class="btn btn-link"
											href="ProductController?action=select&prodId=<c:out value="${wsItems.getProducts().get(j).getProductid()}"/>">${wsItems.getProducts().get(j).getProductName()}</a>
										<br>
										<a
											href="MyWorkspaceController?location=ws&action=${wsItems.addOrDelete(wsItems.getProducts().get(j).getProductid())}&prodid=${wsItems.getProducts().get(j).getProductid()}&userid=admin01">${wsItems.ProductSaved(wsItems.getProducts().get(j).getProductid())}</a>
										$ <c:out
											value="${wsItems.getProducts().get(j).getProductPriceString()}" />
										<br>
									</c:if></td>
							</c:forEach>
						</tr>

					</c:forEach>
				</table>
			</div>
			
			<div id="articleDisplay" style="display: none">
					<c:forEach begin="0" end="${wsItems.getPosts().size()}" step="3"
						var="i">
							<c:forEach begin="${i}" end="${i+2}" var="j">
								<c:if test="${j < wsItems.getPosts().size()}">	
									<div class="column" align="center">
										<div class="card">
											<img src="img/${wsItems.getPosts().get(j).getPostPhoto()}"
											style="width: 100%">
											<div class="container">
												<br>
												<h4>
												<small><a target="_blank" href="${wsItems.getPosts().get(i).getPostLink()}">${wsItems.getPosts().get(j).getPostName()}></a></small>
												</h4>
												<br></br>
												<div id="favouriteBtn" style="${showFavBtn}">
													<a
														href="PostController?action=${post.liked(username)}&postid=<c:out value="${post.getPostId()}"/>&userid=<c:out value="${username}"/>">${post.ContainsUserId(username)}</a>
												</div>
												${post.getPostDesc()}
											</div>
										</div>
									</div>
									</c:if>
							</c:forEach>

					</c:forEach>
				</div>

			<div id="empty-products">
				<c:if test="${wsItems.getProducts().size() < 1}">
					<p class="lead">Looks like there's nothing here.</p>
					<a class="empty-workspace"></a>
					<br>
					<small class="text-muted">Find your perfect workspace!</small>
					<p>
						<a class="btn btn-primary button-margins"
							href="suggestedProducts.jsp">Take the Quiz</a>
					</p>
				</c:if>
			</div>
			
		</center>

		<div id="empty-articles" style="display: none">
			<c:if test="${wsItems.getPosts().size() < 1}">
				<p class="lead">Looks like there's nothing here.</p>
				<a class="empty-workspace"></a>
				<br>
				<small class="text-muted">Explore other workspaces!</small>
				<p>
					<a class="btn btn-info button-margins"
						href="PostController?action=getPosts">Workspace Inspiration</a>
				</p>
			</c:if>
		</div>
		
	</div>

	<script>
function productPage(){
	  var x = document.getElementById("productDisplay");
	  var y = document.getElementById("articleDisplay");
	  var a = document.getElementById("empty-products");
	  var b = document.getElementById("empty-articles");
	  x.style.display = "block";
	  y.style.display = "none";
	  a.style.display = "block";
	  b.style.display = "none";
	}
	
function articlePage(){
	var x = document.getElementById("productDisplay");
	var y = document.getElementById("articleDisplay");
	var a = document.getElementById("empty-products");
	var b = document.getElementById("empty-articles");
	x.style.display = "none";
    y.style.display = "block";	  
    a.style.display = "none";
    b.style.display = "block";
}

</script>
<%@ include file="footer.jsp"%>
</body>
</html>

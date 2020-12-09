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

<style>
.empty-workspace{
	background: transparent url("img/workspace-empty.svg");
	
	display: inline-block;
	background-position: 0 -209px;
	width: 334.35px;
	height: 192.16px;
	margin-top: 15px;
	margin-bottom: 15px;
}

.empty-workspace:hover{
	background-position: 0 0px;
}

.button-margins{
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
			<center>	
			<br></br> 
				<h1>
				<svg width="74.2" height="109" viewBox="0 0 132 194" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M47.38 175.56L49.56 188.32L55.88 188.93L53.69 174.68L47.38 175.56Z" fill="#FCC9A7"/>
					<path d="M48.69 187.44C48.82 186.99 49.29 186.82 49.63 187.09C50.28 187.63 51.45 188.28 53.12 188.05C54.86 187.82 55.48 186.76 55.71 186.02C55.83 185.63 56.2 185.42 56.53 185.57L68.36 190.53C69.02 190.83 69.54 191.42 69.81 192.16C70.07 192.86 69.62 193.63 68.96 193.64L49.58 193.76C48.86 193.76 48.28 193.08 48.32 192.25L48.49 188.21C48.49 188.14 48.5 188.08 48.52 188.01L48.69 187.44Z" fill="#1F252A"/>
					<path d="M21.83 116.85H19.25V192.08H21.83V116.85Z" fill="#2A272D"/>
					<path d="M16.24 101.38L34.72 135.32L46.41 182.47H57.02L49.45 130.07L16.24 101.38Z" fill="#232322"/>
					<path d="M31.49 115.74H8.39001C5.08001 115.74 2.39001 113.06 2.39001 109.74C2.39001 106.43 5.07001 103.74 8.39001 103.74H31.49C34.8 103.74 37.49 106.43 37.49 109.74C37.49 113.06 34.8 115.74 31.49 115.74Z" fill="#FFEEE3"/>
					<path d="M31.63 115.74H9.42999V117.96H31.63V115.74Z" fill="#2A272D"/>
					<path d="M31.63 173.82H9.42999V176.04H31.63V173.82Z" fill="#2A272D"/>
					<path d="M19.34 39.91C14.89 39.37 10.67 42.06 8.96999 46.2C7.52999 49.69 6.32997 54.75 7.60997 60.62C11.51 78.59 9.17998 91.02 9.17998 91.02H30.31L30.23 66.55C30.23 66.55 31.69 63.7 32.48 59.97C33.59 54.75 33.17 54.07 30.12 49.45L23.63 41.53C23.64 41.53 22.19 40.25 19.34 39.91Z" fill="#FFD686"/>
					<path d="M57.77 57.25C59.18 54.43 62.6 53.29 65.42 54.7C68.24 56.11 69.38 59.53 67.97 62.35C66.56 65.17 63.14 66.31 60.32 64.9C57.5 63.5 56.36 60.07 57.77 57.25Z" fill="#FCC9A7"/>
					<path d="M59.02 55.6L48.28 65.8L52.36 70.34L60.73 63.17L59.02 55.6Z" fill="#FCC9A7"/>
					<path d="M12.1 55.74L31.53 85.27C32.28 86.4 33.82 86.67 34.91 85.85L58.36 67.43L53.61 59.28L35.47 73.14L22.79 49.69C21.1 46.17 16.61 45.1 13.51 47.46C10.93 49.42 10.32 53.04 12.1 55.74Z" fill="#FFD686"/>
					<path d="M20.56 44.38C19.33 44.37 18.02 43.86 17.05 43.36C16.09 42.87 15.49 41.86 15.5 40.78L15.7 20.94L24.37 20.98L24.17 40.57C24.16 42.82 22.54 44.39 20.56 44.38Z" fill="#FCC9A7"/>
					<path d="M24.23 35.07L20.65 30C20.65 30 18.46 35.79 24.21 37.57L24.23 35.07Z" fill="#F2C09E"/>
					<path d="M32.04 21.02C32.01 26.93 27.2 31.69 21.29 31.66C15.38 31.63 10.62 26.82 10.65 20.91C10.68 15 15.49 10.24 21.4 10.27C27.3 10.3 32.06 15.11 32.04 21.02Z" fill="#FCC9A7"/>
					<path d="M24.99 35.13C22.19 35.12 19.92 32.83 19.94 30.03L19.97 22.71L32.03 21.02L32 28.19C31.98 32.04 28.85 35.15 24.99 35.13Z" fill="#FCC9A7"/>
					<path d="M31.71 23.41L34.03 26.86C34.36 27.42 33.93 28.11 33.24 28.11L30.53 28.61L31.71 23.41Z" fill="#FCC9A7"/>
					<path d="M19.98 25.64L24.53 25.48C24.53 25.48 24.92 21.53 25.81 20.58C26.7 19.63 27.15 15.41 27.15 15.41C27.15 15.41 25 18.04 24.37 20.76L33.9 20.52C33.9 20.52 35.32 8.96001 20.89 8.40001C6.45 7.84001 6.84999 21.5 9.68999 24.21C11.95 26.37 15.61 31.67 15.61 31.67C15.61 31.67 15.44 25.8 19.98 25.64Z" fill="#4C1827"/>
					<path d="M23.28 24.24C23.34 25.93 22.02 27.34 20.34 27.4C18.65 27.46 17.24 26.14 17.17 24.46C17.11 22.77 18.43 21.36 20.11 21.29C21.8 21.23 23.21 22.55 23.28 24.24Z" fill="#FCC9A7"/>
					<path d="M14.46 6.91999C14.92 10.71 12.23 14.15 8.45001 14.62C4.66001 15.08 1.22 12.39 0.750001 8.6C0.29 4.81 2.97999 1.37 6.76999 0.909998C10.56 0.439998 14 3.12999 14.46 6.91999Z" fill="#4C1827"/>
					<path d="M15.84 42.15C15.84 42.15 16.67 44.74 28.25 47.15L22.87 39.83L15.84 42.15Z" fill="#FCC9A7"/>
					<path d="M20.54 188.28L5.01999 193.59H36.04L20.54 188.28Z" fill="#2A272D"/>
					<path d="M21.71 156.47L13.22 166.68L19.32 169L27.84 158.19L21.71 156.47Z" fill="#FCC9A7"/>
					<path d="M13.51 165.29C13.81 164.94 14.31 164.96 14.51 165.35C14.89 166.11 15.69 167.17 17.32 167.63C19.01 168.11 20.86 166.63 21.36 166.04C21.62 165.73 22.05 165.68 22.29 165.96L32.68 173.25C33.16 173.79 33.4 174.54 33.36 175.33C33.32 176.07 32.6 176.6 31.99 176.34L11.43 171.14C10.77 170.85 10.51 169.99 10.88 169.25L13.02 165.91C13.05 165.85 13.09 165.79 13.13 165.74L13.51 165.29Z" fill="#1F252A"/>
					<path d="M8.57 91.02C8.57 91.02 2.20999 105.5 24.81 113.21L40.43 127.72L16.25 160.1L27.06 164.01L56.42 132.77C58.59 130.24 58.68 126.36 56.63 123.72L30.32 91.01H8.57V91.02Z" fill="#383635"/>
					<path d="M131.55 78.23H54.34V82.53H131.55V78.23Z" fill="#FFEEE3"/>
					<path d="M73.33 193.61V82.53" stroke="#2A272D" stroke-width="2.2811" stroke-miterlimit="10"/>
					<path d="M111.94 193.61V82.53" stroke="#2A272D" stroke-width="2.2811" stroke-miterlimit="10"/>
					<path d="M102.82 75.89H70.7V77.97H102.82V75.89Z" fill="#2A272D"/>
					<path d="M102.82 77.98L113.22 47.62L111.04 47.1L100.85 76.26L102.82 77.98Z" fill="#2A272D"/>
					<path d="M30.04 83.01L14.53 59.43" stroke="#EFC375" stroke-width="0.7847" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M30.98 64.51L25.06 55.15" stroke="#EFC375" stroke-width="0.7847" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>
				
				<%=username%>'s Workspace</h1>
				
				<div class="btn-group btn-group-toggle button-margins" data-toggle="buttons">
				  <label class="btn btn-primary active" onclick="productPage()" style="width:160px;">
				    <input type="radio" name="options" id="option1" autocomplete="off" checked="">Products
				  </label>
				  <label class="btn btn-primary" onclick="" style="width:160px;">
				    <input type="radio" name="options" id="option2" autocomplete="off" >Articles
				  </label>
				</div>
				
				<table class="table" id="productDisplay">
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
									$ <c:out value="${wsItems.getProducts().get(j).getProductPriceString()}" />
										<br>
								</c:if>
				                </td>
			             	</c:forEach>
			            </tr>
			            
			        </c:forEach>
		        </table>
		        
				<div class="grid" id="articleDisplay" style="display:none">
				
				
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
		        
		        <c:if test="${wsItems.getProducts().size() < 1}">
					<p class="lead">Looks like there's nothing here.</p>
					<a class="empty-workspace"></a><br>
					<small class="text-muted">Find your perfect workspace!</small>
					<p><a class="btn btn-primary button-margins" href="suggestedProducts.jsp">Take the Quiz</a></p>
				</c:if>		      
		     </center>   
		
	</div>

<script>
function productPage(){
	  var x = document.getElementById("productDisplay");
	  var y = document.getElementById("articleDisplay");
	  x.style.display = "block";
	  y.style.display = "none";
	}
	
function articlePage(){
	var x = document.getElementById("productDisplay");
	var y = document.getElementById("articleDisplay");
	x.style.display = "none";
    y.style.display = "block";	  
}

</script>

</body>
</html>

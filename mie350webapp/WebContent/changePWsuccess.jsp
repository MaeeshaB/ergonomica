<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
%>
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<title>Account Settings</title>
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

<script type="text/javascript" src="js/accountSettingsHelper.js"></script>  

<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<style>
.button-margins{
	margin-top:15px;
	margin-bottom:15px;
}

</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
			<center>
				<br></br>
				<b><h1><%=username%>'s Account</h1></b>
				<h2><small class="text-muted" id="changepwTitle">Change My Password</small></h2>
				<h2><small class="text-muted" id="deleteTitle" style="display:none">Delete My Account</small></h2>
				
				<div class="btn-group btn-group-toggle button-margins" data-toggle="buttons">
				  <label class="btn btn-primary active" onclick="changePW()" style="width:160px;">
				    <input type="radio" name="options" id="option1" autocomplete="off" checked=""> Change Password
				  </label>
				  <label class="btn btn-danger" onclick="deleteAccount()" style="width:160px;">
				    <input type="radio" name="options" id="option2" autocomplete="off" > Delete Account
				  </label>
				</div>		
				
				<div class="alert alert-dismissible alert-success" style="max-width: 20rem;">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>Success!</strong> You have changed your password!
				</div>
				
				<div id="changePW" class="card border-secondary mb-3 text-center" style="max-width: 20rem;">
				  <div class="card-header">Please Enter Your New Password Below</div>
				  <div class="card-body">
				  	<form action="AccountController" method="post">
				  	Current Password <br><input required type="password" name="current" id="current" >
				  	<br>New Password <br><input required type="password" name="new" id="new">
					<br>Confirm Password<br><input required type="password" name="confirm" id="confirm">
					<br>
					<input name="action" type="hidden" value="changePassword"/>
					<input id="submitBtn" type="submit" class="btn btn-primary button-margins" value="Change Password">
					</form>
				  </div>
				</div>
				  
				
				
				<div id="deleteAccount" class="card text-white bg-danger mb-3" style="max-width: 20rem; display:none">
				  <div class="card-header">Are You Sure <%=username%>?</div>
				  <div class="card-body">
				    <h4 class="card-title">Account deletion cannot be undone.</h4>
				    <p class="card-text">Please click the button below to delete your account.</p>
				    <div class="mb-3 text-center" >
						<input id="submitBtn" type="submit" onclick="confirmDelete()" class="btn btn-secondary button-margins" value="Delete Account">
						<div id="confirmDelete_button" style = display:none>
							<form onclick = "confirmDelete()" action="AccountController" method="post">
							<input name="action" type="hidden" value="deleteAccount"/>
							<input id="submitBtn" type="submit" class="btn btn-secondary" value="Actually Delete Account">
							</form>
						</div>
						
						
					</div>
				  </div>
				</div>
								
				<br>
				<svg width="150" height="247.8" viewBox="0 0 98 152" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M90.0523 99.0182H59.3223V147.778H90.0523V99.0182Z" fill="#B2B2B2"/>
					<path d="M59.4421 99.0182H28.7122V147.778H59.4421V99.0182Z" fill="#D1D1D1"/>
					<path d="M43.3421 39.8882L42.0321 66.0982L35.8721 85.3182H46.9621L52.7221 68.7582L54.5221 49.9382L43.3421 39.8882Z" fill="#F7EBE7"/>
					<path d="M43.0321 131.498L45.2621 141.888L37.7721 142.778L35.6421 132.548L43.0321 131.498Z" fill="#FCC9A7"/>
					<path d="M45.7123 140.948C45.5223 140.388 44.9222 140.188 44.5122 140.548C43.7122 141.258 42.2722 142.128 40.1422 141.918C37.9322 141.698 37.1023 140.398 36.7823 139.458C36.6123 138.968 36.1423 138.718 35.7223 138.928L22.3123 145.668C21.5023 146.078 20.8622 146.838 20.5422 147.788C20.2422 148.678 20.8423 149.638 21.6823 149.618L44.8523 148.978C45.7623 148.958 46.4622 148.058 46.3822 147.018L46.0022 141.918C45.9922 141.838 45.9822 141.748 45.9522 141.668L45.7123 140.948Z" fill="#1F252A"/>
					<path d="M42.9021 81.2582H25.5121C25.5121 81.2582 14.9221 80.6682 14.2921 89.3582C13.6621 98.0482 29.8221 122.908 32.3521 136.188L46.8921 134.988L36.4221 98.8782L62.4621 99.0282C64.3921 99.0382 66.3121 98.7582 68.1321 98.1282C73.2021 96.3682 80.9421 93.8482 76.7221 79.8882L42.9021 81.2582Z" fill="#092330"/>
					<path d="M56.3221 131.538L59.8622 143.958L52.3721 144.848L48.9321 132.588L56.3221 131.538Z" fill="#FCC9A7"/>
					<path d="M60.3121 143.018C60.1221 142.458 59.5221 142.258 59.1121 142.618C58.3121 143.328 56.8721 144.198 54.7421 143.988C52.5321 143.768 51.7021 142.468 51.3821 141.528C51.2121 141.038 50.7421 140.788 50.3221 140.998L36.9121 147.738C36.1021 148.148 35.4621 148.908 35.1421 149.858C34.8421 150.748 35.4421 151.708 36.2821 151.688L59.8521 151.048C60.7621 151.028 61.4621 150.128 61.3821 149.088L60.5921 143.988C60.5821 143.908 60.5721 143.818 60.5421 143.738L60.3121 143.018Z" fill="#1F252A"/>
					<path d="M63.6821 29.5882C64.0721 29.9682 81.5222 34.4182 81.5222 34.4182L77.7922 44.3282L58.7122 42.8882L63.6821 29.5882Z" fill="#F7EBE7"/>
					<path d="M56.4821 31.9782C56.4821 31.9782 45.112 36.1282 43.342 39.8882C43.952 45.1982 45.822 50.3082 48.902 54.6782C52.682 60.0382 57.3521 69.2482 56.4921 81.2582H89.3621C89.3621 81.2582 87.5921 47.4682 77.8621 34.4982L56.4821 31.9782Z" fill="#F7EBE7"/>
					<path d="M60.2122 37.3382C63.4422 36.6782 65.5222 33.5282 64.8622 30.2982L62.9321 20.8482L51.2422 23.2382L53.1722 32.6882C53.8322 35.9182 56.9822 37.9982 60.2122 37.3382Z" fill="#FCC9A7"/>
					<path d="M63.7323 24.1482C63.7323 24.1482 62.5023 31.8082 56.5423 32.2682C51.3223 32.6682 51.8222 25.1182 51.8222 25.1182L63.7323 24.1482Z" fill="#F4BE9A"/>
					<path d="M57.0123 28.0682L58.0423 27.8282C63.2123 26.6282 66.4323 21.4682 65.2323 16.3082L63.8722 10.4182C62.6722 5.2482 57.5123 2.0282 52.3523 3.2282L51.3223 3.4682C46.1523 4.6682 42.9323 9.8282 44.1323 14.9882L45.4923 20.8782C46.6923 26.0482 51.8523 29.2682 57.0123 28.0682Z" fill="#FCC9A7"/>
					<path d="M61.9923 18.7582C61.7523 19.1682 61.5223 19.7882 61.4423 20.7282C61.3523 21.9182 60.7523 23.0482 59.7523 23.7082C56.8823 25.6082 54.6923 20.7982 50.4523 21.6482C50.4523 21.6482 48.7923 21.8982 48.4623 23.7482C48.1323 25.5882 45.8223 22.3682 45.3123 20.1682C44.8023 17.9682 44.5423 31.0582 54.9823 29.9482C54.9823 29.9482 60.2523 29.7782 63.8023 24.4082C64.1923 23.8182 64.4223 23.1282 64.4423 22.4182C64.4723 21.3682 64.3223 19.7782 63.3223 18.6382C62.9723 18.2182 62.2723 18.2782 61.9923 18.7582Z" fill="#1C2226"/>
					<path d="M62.0022 15.7882C62.0022 15.7882 57.4922 14.2982 58.2522 7.7082C58.2522 7.7082 47.0522 18.3082 38.7522 10.5282C38.7522 10.5282 42.4622 9.5382 43.9922 6.9982C46.7822 2.3682 54.8022 -4.0118 61.2222 3.36821C61.2222 3.36821 69.0322 2.15821 66.7922 14.1882L62.0022 15.7882Z" fill="#1C2226"/>
					<path d="M62.0022 15.7882C62.4322 17.6282 64.2723 18.7782 66.1123 18.3582C67.9623 17.9282 69.1022 16.0882 68.6822 14.2482C68.2522 12.4082 66.4122 11.2582 64.5722 11.6782C62.7222 12.1082 61.5722 13.9482 62.0022 15.7882Z" fill="#FCC9A7"/>
					<path d="M56.3021 36.9682L61.132 37.0582L57.752 44.0582L54.1021 37.3482L56.3021 36.9682Z" fill="#0C2C40"/>
					<path d="M65.2722 29.8982L59.0522 37.1582L63.1022 41.8082L70.5522 31.5682C70.5522 31.5682 68.6422 28.4982 65.2722 29.8982Z" fill="#FFF7F3"/>
					<path d="M56.3022 36.9682L52.7222 41.0082L50.2021 34.7082C50.2021 34.7082 50.8622 31.8782 52.9222 32.4182L56.3022 36.9682Z" fill="#FFF7F3"/>
					<path d="M57.6221 41.7982C57.6221 41.7982 52.9522 53.9782 54.1122 71.2582L58.7121 75.4582L64.0821 70.2882L58.2921 41.0082L57.6221 41.7982Z" fill="#0C2C40"/>
					<path d="M66.3522 70.7182L56.3522 74.0082L55.6921 79.8782L68.9521 75.9182L66.3522 70.7182Z" fill="#FCC9A7"/>
					<path d="M57.8421 77.8882C57.8421 81.3182 55.0621 84.1082 51.6221 84.1082C48.1921 84.1082 45.4021 81.3282 45.4021 77.8882C45.4021 74.4582 48.1821 71.6682 51.6221 71.6682C55.0521 71.6682 57.8421 74.4482 57.8421 77.8882Z" fill="#FCC9A7"/>
					<path d="M56.4822 81.2582H39.1022C39.1022 81.2582 28.5122 80.6682 27.8822 89.3582C27.2522 98.0482 44.6022 124.508 47.1322 137.778L61.6722 136.578L50.0122 98.8682L76.0522 99.0182C77.9822 99.0282 79.9022 98.7482 81.7222 98.1182C86.7922 96.3582 94.5322 93.8382 90.3122 79.8782L56.4822 81.2582Z" fill="#0C2C40"/>
					<path d="M4.0521 50.5282H34.1021C35.0921 50.5282 35.9421 51.2182 36.1521 52.1882L41.8121 78.7282C42.0921 80.0282 41.0921 81.2582 39.7621 81.2582H9.2121C8.2121 81.2582 7.35211 80.5482 7.16211 79.5682L2.00211 53.0282C1.74211 51.7282 2.7321 50.5282 4.0521 50.5282Z" fill="#B2B2B2"/>
					<path d="M2.32212 50.5282H32.3621C33.3521 50.5282 34.2021 51.2182 34.4121 52.1882L40.0721 78.7282C40.3521 80.0282 39.3621 81.2582 38.0221 81.2582H7.48212C6.48212 81.2582 5.62213 80.5482 5.43213 79.5682L0.272128 53.0282C0.0121284 51.7282 1.00212 50.5282 2.32212 50.5282Z" fill="#D1D1D1"/>
					<path d="M40.9921 78.9882H61.522C62.152 78.9882 62.652 79.4982 62.652 80.1182C62.652 80.7482 62.142 81.2482 61.522 81.2482H40.592L40.9921 78.9882Z" fill="#B2B2B2"/>
					<path d="M20.9221 65.1982C20.9221 67.0082 19.4621 68.4682 17.6521 68.4682C15.8421 68.4682 14.3821 66.9982 14.3821 65.1982C14.3821 63.3882 15.8521 61.9282 17.6521 61.9282C19.4621 61.9282 20.9221 63.3882 20.9221 65.1982Z" fill="white"/>
					<path d="M74.3522 43.8582L85.3322 61.5882L59.0522 70.9682L62.6522 78.7482C62.6522 78.7482 85.1222 76.2282 95.9822 67.8582C96.9822 67.0882 97.4822 65.8382 97.3122 64.5882C96.8022 60.5882 94.6222 50.8782 85.3322 37.0782C83.4422 34.2682 79.6822 33.4182 76.7522 35.1182C73.7022 36.8782 72.6322 40.7782 74.3522 43.8582Z" fill="#F7EBE7"/>
					<path d="M66.0422 68.4682L85.3322 61.5882L75.6822 45.9982" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M52.9822 62.5982L48.2322 50.0582" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M66.3521 78.2182C66.3521 78.2182 81.1121 76.3682 88.5521 72.1082" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>
							
			</center>
	</div>


<script>
function confirmDelete() {
	var button = document.getElementById("confirmDelete_button");
	button.style.display = "block";
}

function changePW(){
	  var a = document.getElementById("changepwTitle");
	  var b = document.getElementById("changePW");
	  var x = document.getElementById("deleteTitle");
	  var y = document.getElementById("deleteAccount");
	  a.style.display = "block";
	  b.style.display = "block";
	  x.style.display = "none";
	  y.style.display = "none";
	}
	
function deleteAccount(){
	  var a = document.getElementById("changepwTitle");
	  var b = document.getElementById("changePW");
	  var x = document.getElementById("deleteTitle");
	  var y = document.getElementById("deleteAccount");
	a.style.display = "none";
	b.style.display = "none";
  x.style.display = "block";	  
  y.style.display = "block";	  
}

</script>

</body>
</html>
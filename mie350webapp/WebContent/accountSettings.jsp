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
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	

	<div class="container-fluid text-center">
			<center>
				<br></br>
				<b><h1>My Account</h1></b><br>
				<div class="card border-secondary mb-3 text-center" style="max-width: 25rem;">
				  <div class="card-header">Change or Delete your Account Here</div>
				  <div class="card-body">
				  	<form action="AccountController" method="post">
				  	Current Password <br><input required type="password" name="current" id="current" >
				  	<br>New Password <br><input required type="password" name="new" id="new">
					<br>Confirm Password<br><input required type="password" name="confirm" id="confirm">
					<br>
					<input name="action" type="hidden" value="changePassword"/>
					<input id="submitBtn" type="submit" class="btn btn-info button-margins" value="Change Password">
				</form>
				<br>
				<form onclick = "confirmDelete()" action="AccountController" method="post">
					<input name="action" type="hidden" value="deleteAccount"/>
					<input id="submitBtn" type="submit" class="btn btn-danger" value="Delete Account">
				</form>
				  </div>
				</div>
				<br>
				<svg width=159.5" height="249" viewBox="0 0 98 153" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M89.84 99.55H59.11V148.31H89.84V99.55Z" fill="#B2B2B2"/>
					<path d="M59.23 99.55H28.5V148.31H59.23V99.55Z" fill="#D1D1D1"/>
					<path d="M43.13 40.42L41.82 66.63L35.66 85.85H46.75L52.51 69.29L54.31 50.47L43.13 40.42Z" fill="#F7EBE7"/>
					<path d="M42.82 132.03L45.05 142.42L37.56 143.31L35.43 133.08L42.82 132.03Z" fill="#FCC9A7"/>
					<path d="M45.5 141.48C45.31 140.92 44.71 140.72 44.3 141.08C43.5 141.79 42.06 142.66 39.93 142.45C37.72 142.23 36.89 140.93 36.57 139.99C36.4 139.5 35.93 139.25 35.51 139.46L22.1 146.2C21.29 146.61 20.65 147.37 20.33 148.32C20.03 149.21 20.63 150.17 21.47 150.15L44.64 149.51C45.55 149.49 46.25 148.59 46.17 147.55L45.79 142.45C45.78 142.37 45.77 142.28 45.74 142.2L45.5 141.48Z" fill="#1F252A"/>
					<path d="M42.69 81.79H25.3C25.3 81.79 14.71 81.2 14.08 89.89C13.45 98.58 29.61 123.44 32.14 136.72L46.68 135.52L36.21 99.41L62.25 99.56C64.18 99.57 66.1 99.29 67.92 98.66C72.99 96.9 80.73 94.38 76.51 80.42L42.69 81.79Z" fill="#092330"/>
					<path d="M56.11 132.07L59.65 144.49L52.16 145.38L48.72 133.12L56.11 132.07Z" fill="#FCC9A7"/>
					<path d="M60.1 143.55C59.91 142.99 59.31 142.79 58.9 143.15C58.1 143.86 56.66 144.73 54.53 144.52C52.32 144.3 51.49 143 51.17 142.06C51 141.57 50.53 141.32 50.11 141.53L36.7 148.27C35.89 148.68 35.25 149.44 34.93 150.39C34.63 151.28 35.23 152.24 36.07 152.22L59.64 151.58C60.55 151.56 61.25 150.66 61.17 149.62L60.38 144.52C60.37 144.44 60.36 144.35 60.33 144.27L60.1 143.55Z" fill="#1F252A"/>
					<path d="M63.47 30.12C63.86 30.5 81.31 34.95 81.31 34.95L77.58 44.86L58.5 43.42L63.47 30.12Z" fill="#F7EBE7"/>
					<path d="M56.27 32.51C56.27 32.51 44.9 36.66 43.13 40.42C43.74 45.73 45.61 50.84 48.69 55.21C52.47 60.57 57.14 69.78 56.28 81.79H89.15C89.15 81.79 87.38 48 77.65 35.03L56.27 32.51Z" fill="#F7EBE7"/>
					<path d="M60 37.87C63.23 37.21 65.31 34.06 64.65 30.83L62.72 21.38L51.03 23.77L52.96 33.22C53.62 36.45 56.77 38.53 60 37.87Z" fill="#FCC9A7"/>
					<path d="M63.52 24.68C63.52 24.68 62.29 32.34 56.33 32.8C51.11 33.2 51.61 25.65 51.61 25.65L63.52 24.68Z" fill="#F4BE9A"/>
					<path d="M56.8 28.6L57.83 28.36C63 27.16 66.22 22 65.02 16.84L63.66 10.95C62.46 5.77998 57.3 2.55998 52.14 3.75998L51.11 3.99998C45.94 5.19998 42.72 10.36 43.92 15.52L45.28 21.41C46.48 26.58 51.64 29.8 56.8 28.6Z" fill="#FCC9A7"/>
					<path d="M61.78 19.29C61.54 19.7 61.31 20.32 61.23 21.26C61.14 22.45 60.54 23.58 59.54 24.24C56.67 26.14 54.48 21.33 50.24 22.18C50.24 22.18 48.58 22.43 48.25 24.28C47.92 26.12 45.6099 22.9 45.0999 20.7C44.5899 18.5 44.33 31.59 54.77 30.48C54.77 30.48 60.04 30.31 63.59 24.94C63.98 24.35 64.21 23.66 64.23 22.95C64.26 21.9 64.11 20.31 63.11 19.17C62.76 18.75 62.06 18.81 61.78 19.29Z" fill="#1C2226"/>
					<path d="M61.79 16.32C61.79 16.32 57.28 14.83 58.04 8.23999C58.04 8.23999 46.84 18.84 38.54 11.06C38.54 11.06 42.25 10.07 43.78 7.52999C46.57 2.89999 54.59 -3.48001 61.01 3.89999C61.01 3.89999 68.82 2.68999 66.58 14.72L61.79 16.32Z" fill="#1C2226"/>
					<path d="M61.79 16.32C62.22 18.16 64.06 19.31 65.9 18.89C67.75 18.46 68.8899 16.62 68.4699 14.78C68.0399 12.94 66.2 11.79 64.36 12.21C62.51 12.64 61.36 14.48 61.79 16.32Z" fill="#FCC9A7"/>
					<path d="M56.09 37.5L60.92 37.59L57.54 44.59L53.89 37.88L56.09 37.5Z" fill="#0C2C40"/>
					<path d="M65.06 30.43L58.84 37.69L62.89 42.34L70.34 32.1C70.34 32.1 68.43 29.03 65.06 30.43Z" fill="#FFF7F3"/>
					<path d="M56.09 37.5L52.51 41.54L49.99 35.24C49.99 35.24 50.65 32.41 52.71 32.95L56.09 37.5Z" fill="#FFF7F3"/>
					<path d="M57.4099 42.33C57.4099 42.33 52.74 54.51 53.9 71.79L58.5 75.99L63.87 70.82L58.08 41.54L57.4099 42.33Z" fill="#0C2C40"/>
					<path d="M66.14 71.25L56.14 74.54L55.48 80.41L68.74 76.45L66.14 71.25Z" fill="#FCC9A7"/>
					<path d="M57.63 78.42C57.63 81.85 54.85 84.64 51.41 84.64C47.98 84.64 45.19 81.86 45.19 78.42C45.19 74.99 47.97 72.2 51.41 72.2C54.84 72.2 57.63 74.98 57.63 78.42Z" fill="#FCC9A7"/>
					<path d="M56.27 81.79H38.89C38.89 81.79 28.3 81.2 27.67 89.89C27.04 98.58 44.39 125.04 46.92 138.31L61.46 137.11L49.8 99.4L75.84 99.55C77.77 99.56 79.69 99.28 81.51 98.65C86.58 96.89 94.32 94.37 90.1 80.41L56.27 81.79Z" fill="#0C2C40"/>
					<path d="M3.84 51.06H33.89C34.88 51.06 35.73 51.75 35.94 52.72L41.6 79.26C41.88 80.56 40.88 81.79 39.55 81.79H9C8 81.79 7.14002 81.08 6.95002 80.1L1.79001 53.56C1.53001 52.26 2.52 51.06 3.84 51.06Z" fill="#B2B2B2"/>
					<path d="M2.10999 51.06H32.15C33.14 51.06 33.99 51.75 34.2 52.72L39.86 79.26C40.14 80.56 39.15 81.79 37.81 81.79H7.26999C6.26999 81.79 5.41 81.08 5.22 80.1L0.0600007 53.56C-0.199999 52.26 0.789988 51.06 2.10999 51.06Z" fill="#D1D1D1"/>
					<path d="M40.78 79.52H61.31C61.94 79.52 62.44 80.03 62.44 80.65C62.44 81.28 61.93 81.78 61.31 81.78H40.38L40.78 79.52Z" fill="#B2B2B2"/>
					<path d="M20.71 65.73C20.71 67.54 19.25 69 17.44 69C15.63 69 14.17 67.53 14.17 65.73C14.17 63.92 15.64 62.46 17.44 62.46C19.25 62.46 20.71 63.92 20.71 65.73Z" fill="white"/>
					<path d="M74.14 44.39L85.12 62.12L58.84 71.5L62.44 79.28C62.44 79.28 84.91 76.76 95.77 68.39C96.77 67.62 97.27 66.37 97.1 65.12C96.59 61.12 94.41 51.41 85.12 37.61C83.23 34.8 79.47 33.95 76.54 35.65C73.49 37.41 72.42 41.31 74.14 44.39Z" fill="#F7EBE7"/>
					<path d="M65.83 69L85.12 62.12L75.47 46.53" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M52.77 63.13L48.02 50.59" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M66.14 78.75C66.14 78.75 80.9 76.9 88.34 72.64" stroke="#EADDD8" stroke-width="0.7599" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>
				
				
			</center>
	</div>


<script>
function confirmDelete() {
	  alert("Are you sure you want to delete your account? This action cannot be undone");
	}
</script>

</body>
</html>
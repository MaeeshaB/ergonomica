<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Ergonomica - Search</title>
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
				<br></br> 
				<center>
				<h1>Search</h1>

				
					<form method="POST" action='SearchController' name="frmAddUser">
						Keyword <p></p>
						<small class="text-muted">Try 'desk' or 'mouse'</small>
						<br></br>
						<input type="text" name="keyword"
							value="<c:out value="${product.searchword}" />">
							<p></p>
							<input
							type="submit" class="btn btn-info" value="Submit" />
					</form>
					<br>
					<a class="btn btn-default" href="suggestedProducts.jsp">Take Quiz</a> 
					<a class="btn btn-default" href="SearchController">All Products</a><br></br><br></br>
					
					
					<svg width="265.5" height="249" viewBox="0 0 177 166" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M105.07 79.17V163.39" stroke="#2A272D" stroke-width="1.9882" stroke-miterlimit="10"/>
						<path d="M165.99 79.17V163.39" stroke="#2A272D" stroke-width="1.9882" stroke-miterlimit="10"/>
						<path d="M69.05 105.18C69.05 105.18 80.74 102.53 82.5 110.14C84.02 116.67 68.12 116.42 68.12 116.42L33.16 116.63C33.16 116.63 19.99 118.15 13.48 102.96C6.97001 87.77 0.700011 47.99 0.700011 47.99C0.700011 47.99 -0.23999 42.52 4.32001 41.72C9.68001 40.78 10.73 52.36 10.73 52.36C10.73 52.36 18.83 101.46 30.59 103.86C32.4 104.23 33.84 105.6 35.69 105.58L69.05 105.18Z" fill="#FFEEE3"/>
						<path d="M100.12 65.52L111.16 64.76C112.06 64.7 112.92 65.11 113.43 65.84L119.6 75.17L114.35 75.42L111.39 70.87C111.39 70.87 102.86 73 99.71 70.87L100.12 65.52Z" fill="#F2C09E"/>
						<path d="M55.65 35.29L70.4 62.7L101.05 63.68V73.76L68.68 75.18C64.4 75.37 60.34 73.32 57.94 69.77L43.21 43.32L55.65 35.29Z" fill="#EFC375"/>
						<path d="M101.05 63.67V73.75L97.63 73.9V63.56L101.05 63.67Z" fill="#F7E5DA"/>
						<path d="M84.99 144.92L86.72 157.04L95.44 156.5L94.19 143.99L84.99 144.92Z" fill="#FCC9A7"/>
						<path d="M84.77 155.81C84.96 155.24 85.64 155.01 86.13 155.36C87.09 156.04 88.78 156.85 91.21 156.54C93.74 156.22 94.63 154.87 94.94 153.92C95.1 153.42 95.64 153.15 96.13 153.34L111.85 159.5C112.81 159.87 113.57 160.61 113.98 161.55C114.36 162.43 113.73 163.42 112.76 163.44L86.14 163.83C85.09 163.85 84.25 162.98 84.29 161.93L84.48 156.79C84.48 156.7 84.5 156.62 84.53 156.54L84.77 155.81Z" fill="#1F252A"/>
						<path d="M58.5 32.94L61 36.95C61.16 37.33 61.23 38.25 60.54 38.59L59.57 39.29L57.49 36.11L58.5 32.94Z" fill="#FFEEE3"/>
						<path d="M53.84 37.18L53.05 36.8C50.45 35.53 49.37 32.39 50.64 29.79L59.08 12.51L68.45 17.09L58.7 36.44C57.66 38.59 55.99 38.23 53.84 37.18Z" fill="#FCC9A7"/>
						<path d="M75.44 20.5C72.69 26.12 65.9 28.46 60.28 25.71C54.66 22.96 52.32 16.18 55.07 10.55C57.82 4.93 64.6 2.59 70.23 5.34C75.86 8.09 78.19 14.88 75.44 20.5Z" fill="#FCC9A7"/>
						<path d="M61.76 31.68C59.09 30.38 57.98 27.15 59.29 24.48L64.05 14.73L75.53 20.34L71.65 28.29C69.85 31.95 65.42 33.48 61.76 31.68Z" fill="#FCC9A7"/>
						<path d="M74.04 22.63L74.66 26.99C74.71 27.68 73.98 28.13 73.34 27.82L70.52 27.05L74.04 22.63Z" fill="#FCC9A7"/>
						<path d="M64.1 20.45C64.1 20.45 68.07 20.71 68.72 14.58C68.72 14.58 75.62 18.98 78.43 17.23C78.43 17.23 79.29 -0.110007 64.96 0.499993C50.63 1.10999 49.51 16.58 49.51 16.58L57.55 23.84L64.1 20.45Z" fill="#1C2226"/>
						<path d="M64.67 20.7C63.92 22.25 62.05 22.89 60.5 22.13C58.96 21.37 58.31 19.51 59.07 17.96C59.82 16.41 61.69 15.77 63.24 16.53C64.78 17.29 65.42 19.15 64.67 20.7Z" fill="#FCC9A7"/>
						<path d="M55.92 18.4L53.79 23.37C53.79 23.37 58.47 27.12 60.83 22.29L57.43 21.33L55.92 18.4Z" fill="#1C2226"/>
						<path d="M68.72 14.58C68.72 14.58 78.07 21.8 81.76 15.75C84.7 10.92 81.43 7.78999 76.71 8.56999C74.67 8.90999 73.66 7.52999 72.06 6.43999L68.72 14.58Z" fill="#1C2226"/>
						<path d="M60.32 41.71C60.32 41.71 60.11 37.3 58.71 35.77C57.31 34.24 49.85 30.02 49.85 30.02C49.85 30.02 39.12 33.13 32.53 45.39C27.4 54.94 22.57 79.11 22.57 79.11L53.53 83.6C56.2 65.54 61.2 57.31 60.32 41.71Z" fill="#FFD686"/>
						<path d="M50.37 29.17L49.08 29.75C48.62 29.96 48.52 30.58 48.9 30.92L57.08 38.2C57.41 38.5 57.93 38.41 58.16 38.03L59.08 36.44C59.25 36.14 59.18 35.76 58.91 35.54L51.09 29.28C50.89 29.1 50.61 29.06 50.37 29.17Z" fill="#FFEEE3"/>
						<path d="M96.71 67.16L107.75 66.4C108.65 66.34 109.51 66.75 110.02 67.48L115.68 75.53L110.39 76.21L107.98 72.5C107.98 72.5 99.45 74.63 96.3 72.5L96.71 67.16Z" fill="#FCC9A7"/>
						<path d="M49.38 37.33L66.04 65.44L97.64 66.31V75.4L63.54 76.89C60.34 77.03 57.29 75.5 55.49 72.84L36.94 45.36L49.38 37.33Z" fill="#FFD686"/>
						<path d="M97.64 66.31V75.39L94.22 75.54V66.31H97.64Z" fill="#FFEEE3"/>
						<path d="M22.57 79.11L83.47 87.94C88.13 88.62 91.73 92.39 92.18 97.08L96.72 148.95L83.12 149.83L76.58 104.87L38.34 105.86C27.96 105.86 20 96.64 21.51 86.37L22.57 79.11Z" fill="#54585A"/>
						<path d="M130.51 75.18H98.39V77.26H130.51V75.18Z" fill="#2A272D"/>
						<path d="M130.52 77.26L140.91 46.91L138.73 46.39L128.54 75.54L130.52 77.26Z" fill="#2A272D"/>
						<path d="M61.25 31.4C61.25 31.4 58.36 29.69 58.36 26.09C58.36 26.09 56.56 29.99 60.23 33.42L61.25 31.4Z" fill="#F2C09E"/>
						<path d="M13.84 165.35C14.32 165.35 14.76 165.02 14.89 164.53L30.79 101.84C32.11 96.65 36.76 93.02 42.12 93.02C47.32 93.02 51.94 96.51 53.36 101.51C58.92 121.1 71.86 163.84 71.99 164.27C72.16 164.84 72.77 165.17 73.34 164.99C73.91 164.82 74.24 164.21 74.06 163.64C73.93 163.21 60.99 120.49 55.44 100.92C53.76 94.99 48.28 90.85 42.11 90.85C35.76 90.85 30.24 95.15 28.68 101.3L12.78 164C12.63 164.58 12.98 165.17 13.56 165.32C13.66 165.34 13.75 165.35 13.84 165.35Z" fill="#1F252A"/>
						<path d="M55.5 72.83L45.95 58.7" stroke="#EFC375" stroke-width="0.7847" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
						<path d="M176.51 77.26H93.3V81.01H176.51V77.26Z" fill="#FFEEE3"/>
						<path d="M105.07 90.12H165.99" stroke="#2A272D" stroke-width="1.9882" stroke-miterlimit="10"/>
						<path d="M61.1 56.41L51.95 41.66" stroke="#EFC375" stroke-width="0.7847" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
											
					
				</center>
				
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
		
	</div>



</body>
</html>


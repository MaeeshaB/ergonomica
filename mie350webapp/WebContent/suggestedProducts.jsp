<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App</title>
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
	    .ui-controlgroup-vertical {
	      width: 150px;
	    }
	    .ui-controlgroup.ui-controlgroup-vertical > button.ui-button,
	    .ui-controlgroup.ui-controlgroup-vertical > .ui-controlgroup-label {
	      text-align: center;
	    }
	    #car-type-button {
	      width: 120px;
	    }
	    .ui-controlgroup-horizontal .ui-spinner-input {
	      width: 20px;
	    }
    </style>


</head>

<body>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-8 text-left">
				<h1>WFH Goals Questionnaire</h1>
				<h4><i>Tell us a bit about your current setup and your setup goals so our algorithm 
						can tailor the product suggestions to fit your needs :)</i></h4> <br>
				<form method="POST" action="ProductController">
					<fieldset>
						<fieldset class="form-group">
						
						<script type="text/javascript">
						
						//Make sure all the checkboxes are filled
						$(document).ready(function () {
						    $('#checkBtn').click(function() {
						      checked = $("input[type=checkbox][name=persona]:checked").length;
						      checked2 = $("input[type=checkbox][name=category]:checked").length;
						      checked3 = $("input[type=checkbox][name=importance]:checked").length;
						      checked4 = $("input[type=checkbox][name=type]:checked").length;
						      
						      var x = document.getElementById("importance_div");
						      var y = document.getElementById("type_div");
							   
						      if(!checked) {
						        alert("You must check at least one checkbox from each question.");
						        return false;
						      } else if(!checked2) {
							     alert("You must check at least one checkbox from each question.");
							     return false;
							  }
						      else if(!checked3 && x.style.display == "block" ) {
								     alert("You must check at least one checkbox from each question.");
								     return false;
								  }
						      else if(!checked4 && y.style.display == "block") {
								     alert("You must check at least one checkbox from each question.");
								     return false;
								  }
						    });
						});
						
						$(document).ready(function () {
						    $('#productivity').click(function() {
						    checkedProd = $("input[type=checkbox][id=productivity]:checked").length;
						    checkedErgo = $("input[type=checkbox][id=ergonomic]:checked").length;
						    
						    
						    var y = document.getElementById("type_productivity");
						    var z = document.getElementById("type_div");
						    if (checkedProd) {
						      y.style.display = "block";
						      z.style.display = "block";
						    } else {
						      y.style.display = "none";
						    }
						    
						    if (!checkedProd && !checkedErgo) {
						    	z.style.display = "none";
						    }
						    });
						});
						
						$(document).ready(function () {
						    $('#ergonomic').click(function() {
						    checkedProd = $("input[type=checkbox][id=productivity]:checked").length;
						    checkedErgo = $("input[type=checkbox][id=ergonomic]:checked").length;
						    
						    var x = document.getElementById("importance_div");
						    var y = document.getElementById("type_ergonomic");
						    var z = document.getElementById("type_div");
						    if (checkedErgo) {
						      x.style.display = "block";
						      y.style.display = "block";
						      z.style.display = "block";
						    } else {
						     x.style.display = "none";
						      y.style.display = "none";
						    }
						    
						    if (!checkedProd && !checkedErgo) {
						    	z.style.display = "none";
						    }
						    });
						});
						
						</script>
					      <legend>Who are you shopping for today? (check all that apply)</legend>
					      <div class="form-check">
					        <label class="form-check-label">
					          <input name="persona" class="form-check-input" type="checkbox" value="child">
					          A child<br>
					        </label>
					   		</div>
					   		
					   		<div class="form-check">
					   		<label class="form-check-label">
					          <input name="persona" class="form-check-input" type="checkbox" value="student">
					          A student (high school/university)<br>
					        </label>
					   		</div>
					   		
					   		<div class="form-check">
					   		<label class="form-check-label">
					          <input name="persona" class="form-check-input" type="checkbox" value="professional">
					          A professional<br>
					        </label>
					        </div>
					        
					    </fieldset>
					    
					    <fieldset>
						<legend>Are you looking to increase your productivity or comfortability?</legend>
						<div class= "form-check">
							<label class= "form-check-label">
								<input id="productivity" class= "form-check-input" type= "checkbox" name= "category" value= "productivity">
								Productivity <br>
							</label>
						</div>
						<div class= "form-check">
							<label id="ergonomic" class= "form-check-label" >
								<input id="ergonomic" class= "form-check-input" type= "checkbox" name= "category" value= "ergonomics">
								Comfortability <br>
							</label>
						</div>
						</fieldset>
					    
					    
						<fieldset id="importance_div" style="display:none">
						<legend>Are you looking for essentials or accessories?</legend>
						<div class= "form-check" >
							<label class= "form-check-label">
								<input class= "form-check-input" type= "checkbox" name= "importance" id="essentials" value= "essential">
								Essentials <br>
							</label>
						</div>
						<div class= "form-check">
							<label class= "form-check-label">
								<input class= "form-check-input" type= "checkbox" name= "importance" id="accessories" value= "accessory">
								Accessories<br>
							</label>
						</div>
						</fieldset>
						
						<fieldset style="display:none" id="type_div" class="form-group">
					      <legend>Are you shopping for any specific products?</legend>
					      <div style="display:none" id="type_ergonomic">
						      <div class="form-check">
						        <label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="desk">
						          Desk<br>
						        </label>
						   		</div>
						   		
						   		<div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="chair">
						          Chair<br>
						        </label>
						   		</div>
						   		
						   		<div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="lighting">
						          Lighting<br>
						        </label>
						        </div>
						        
						        <div class="form-check">
						        <label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="keyboard">
						          Keyboard<br>
						        </label>
						   		</div>
						   		
						   		<div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="monitor">
						          Monitor<br>
						        </label>
						   		</div>
						   		
						   		<div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="mouse">
						          Mouse<br>
						        </label>
						        </div>
					        </div>
					        
					        <div style="display:none" id="type_productivity">
						        <div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="hardware">
						          Hardware<br>
						        </label>
						   		</div>
						   		
						   		<div class="form-check">
						   		<label class="form-check-label">
						          <input name="type" class="form-check-input" type="checkbox" value="software">
						          Software<br>
						        </label>
						        </div>
					        </div>
					    </fieldset>
						
					    <br>
						<button id="checkBtn" type="submit" class="btn btn-primary">Submit</button>
					</fieldset>
				</form>

				<a class="btn btn-default" href="search.jsp">Skip</a>
				
			</div>
		</div>
	</div>


</body>
</html>

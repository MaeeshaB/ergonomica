<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>MIE350 Sample Web App</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
				<form>
					<fieldset>
						<legend>Who are you shopping for today? (check all that apply)</legend>
						<div class = "form-check">
							<label class = "form-check-label">
								<input class = "form-check-input" type = "checkbox" value = "" cheked = "">
								Myself
								<input class = "form-check-input" type = "checkbox" value = "" cheked = "">
								A friend or loved one <br>
								<input class = "form-check-input" type = "checkbox" value = "" cheked = "">
								A child
								<input class = "form-check-input" type = "checkbox" value = "" cheked = "">
								A student (high school/university)
								<input class = "form-check-input" type = "checkbox" value = "" cheked = "">
								A professional
							</label>
						</div>
						
						<br>
						<legend>Are you looking to retrofit your current setup or are you starting from scratch?</legend>
						<div class= "form-check">
							<label class= "form-check-label">
								<input class= "form-check-input" type= "radio" name= "optionsRadios" id="retrofit" value= "option1" cheked = "">
								Retrofitting my current setup <br>
								<input class= "form-check-input" type= "radio" name= "optionsRadios" id="scratch" value= "option2" cheked = "">
								Starting from scratch
							</label>
						</div>
						
						<br>
						<legend>Are you looking for essentials or accessories?</legend>
						<div class= "form-check">
							<label class= "form-check-label">
								<input class= "form-check-input" type= "radio" name= "optionsRadios" id="essentials" value= "option1" cheked = "">
								Essentials <br>
								<input class= "form-check-input" type= "radio" name= "optionsRadios" id="accessories" value= "option2" cheked = "">
								Accessories <br>
								<input class= "form-check-input" type= "radio" name= "optionsRadios" id="both" value= "option3" cheked = "">
								Both <br>
							</label>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>
